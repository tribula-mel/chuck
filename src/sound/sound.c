#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>

#include <allegro5/allegro.h>
#include <allegro5/allegro_audio.h>

#include "ayemu.h"
#include "sound.h"

#define AY_CHAN_A   1
#define AY_CHAN_B   2
#define AY_CHAN_C   4
#define AY_NOISE_A  8
#define AY_NOISE_B 16
#define AY_NOISE_C 32

typedef struct
{
   uint8_t channels;
   uint8_t amp_env;
   uint8_t ton_env;
   uint16_t ton_period;
   uint8_t noise_period;
   uint8_t amplitude;
   uint16_t duration;
} cpc_sound_queue_t;

typedef struct
{
   uint8_t num_sample;
   ALLEGRO_SAMPLE **sample;
   ALLEGRO_SAMPLE_INSTANCE **sample_inst;
} sample_t;

typedef struct
{
   sample_t *up_down;
   sample_t *left_right;
   sample_t *vert_jump;
   sample_t *vert_fall;
   sample_t *life_lost;
   sample_t *score_anim;
   sample_t *egg;
   sample_t *seed;
} chuck_samples_t;

typedef struct
{
   ayemu_ay_t ay;
   uint32_t freq;
   uint32_t chans;
   uint32_t bits;
   uint32_t chip;
} sound_ayemu_t;

typedef struct
{
   sound_ayemu_t ayemu;
   chuck_samples_t chuck_samples;
   ALLEGRO_MIXER *mixer;
   ALLEGRO_VOICE *voice;
   ALLEGRO_EVENT_SOURCE user_src;
   ALLEGRO_THREAD *sound_thread_id;
} sound_control_t;

static void init_alleg (sound_control_t *control)
{
   if (true != al_install_audio ())
   {
      fprintf (stderr, "al_install_audio failed\n");
      exit (EXIT_FAILURE);
   }

   control->voice = al_create_voice (44100, ALLEGRO_AUDIO_DEPTH_INT16,
                                     ALLEGRO_CHANNEL_CONF_2);
   if (NULL == control->voice)
   {
      fprintf (stderr, "al_create_voice failed\n");
      exit (EXIT_FAILURE);
   }

   control->mixer = al_create_mixer (44100, ALLEGRO_AUDIO_DEPTH_INT16,
                                     ALLEGRO_CHANNEL_CONF_2);
   if (NULL == control->mixer)
   {
      fprintf (stderr, "al_create_mixer failed\n");
      exit (EXIT_FAILURE);
   }

   if (true != al_attach_mixer_to_voice (control->mixer, control->voice))
   {
      fprintf (stderr, "al_attach_mixer_to_voice failed\n");
      exit (EXIT_FAILURE);
   }

   al_init_user_event_source (&control->user_src);
}

static void init_ayemu (sound_control_t *control)
{
   control->ayemu.freq = 44100;
   control->ayemu.chans = 2; /* 1=mono, 2=stereo */
   control->ayemu.bits = 16; /* 16 or 8 bit */

   ayemu_init(&control->ayemu.ay);
   ayemu_set_chip_type (&control->ayemu.ay, AYEMU_AY_LION17, NULL);
   // cpc ay-3-8910 worked on 1MHz
   ayemu_set_chip_freq (&control->ayemu.ay, 1000000);
}

static void set_ay_regs (sound_ayemu_t *ayemu, cpc_sound_queue_t *request, uint8_t channels)
{
   uint8_t regs[14] = {0};

   /* setup ay regs */
   if (channels & AY_CHAN_A)
   {
      regs[0] = request->ton_period & 0xff;
      regs[1] = request->ton_period >> 8;
   }
   if (channels & AY_CHAN_B)
   {
      regs[2] = request->ton_period & 0xff;
      regs[3] = request->ton_period >> 8;
   }
   if (channels & AY_CHAN_B)
   {
      regs[4] = request->ton_period & 0xff;
      regs[5] = request->ton_period >> 8;
   }
   regs[6] = request->noise_period;
   regs[7] = (~channels) & 0x3f;
   if (channels & AY_CHAN_A)
      regs[8] = request->amplitude;
   if (channels & AY_CHAN_B)
      regs[9] = request->amplitude;
   if (channels & AY_CHAN_C)
      regs[10] = request->amplitude;
   regs[11] = 0;
   regs[12] = 0;
   regs[13] = 0;

   ayemu_set_regs (&ayemu->ay, regs);
}

static ALLEGRO_SAMPLE *sound_gen_sample (sound_ayemu_t *ayemu, cpc_sound_queue_t *request)
{
   ALLEGRO_SAMPLE *al_sample;
   char * audio_buf;
   size_t audio_bufsize;
   float frequency = 1.0 / ((float)request->duration * 0.01);

   /* allocate audio buffer for one ay frame */
   audio_bufsize = (int)(ayemu->freq / frequency) * ayemu->chans * (ayemu->bits >> 3);
   if ((audio_buf = (char*) al_malloc (audio_bufsize)) == NULL)
   {
      fprintf (stderr, "Can't allocate sound buffer\n");
      exit (EXIT_FAILURE);
   }
   memset (audio_buf, 0, audio_bufsize);

   /* generate sound */
   ayemu_gen_sound (&ayemu->ay, audio_buf, audio_bufsize);
   al_sample = al_create_sample (audio_buf,
                                 (int)(ayemu->freq / frequency),
                                 ayemu->freq,
                                 ALLEGRO_AUDIO_DEPTH_INT16,
                                 ALLEGRO_CHANNEL_CONF_2, true);
   if (al_sample == NULL)
   {
      fprintf (stderr, "Error creating sample 0.\n");
      exit (EXIT_FAILURE);
   }

   return (al_sample);
}

static void sound_init_up_down_samples (sound_control_t *control)
{
   cpc_sound_queue_t base_channel_a_b =
   {
      .channels     = 0x83,
      .amp_env      = 0x00,
      .ton_env      = 0x00,
      .ton_period   = 0x118,
      .noise_period = 0x00,
      .amplitude    = 0x05,
      .duration     = 0x02,
   };
   sample_t *sample_holder = NULL;

   sample_holder = al_malloc (sizeof (sample_t));
   if (sample_holder == NULL)
   {
      fprintf (stderr, "u/d sample holder memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample = al_malloc (sizeof (ALLEGRO_SAMPLE *));
   if (sample_holder->sample == NULL)
   {
      fprintf (stderr, "u/d sample memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample_inst = al_malloc (sizeof (ALLEGRO_SAMPLE_INSTANCE *));
   if (sample_holder->sample_inst == NULL)
   {
      fprintf (stderr, "u/d sample instance memory alloction failed\n");
      exit (EXIT_FAILURE);
   }

   set_ay_regs (&control->ayemu, &base_channel_a_b, AY_CHAN_A | AY_CHAN_B);
   sample_holder->sample[0] =
      sound_gen_sample (&control->ayemu, &base_channel_a_b);
   sample_holder->sample_inst[0] =
      al_create_sample_instance (sample_holder->sample[0]);
   al_attach_sample_instance_to_mixer (sample_holder->sample_inst[0],
                                       control->mixer);

   sample_holder->num_sample = 1;
   control->chuck_samples.up_down = sample_holder;
}

static void sound_init_left_right_samples (sound_control_t *control)
{
   cpc_sound_queue_t base_channel_a_b =
   {
      .channels     = 0x83,
      .amp_env      = 0x00,
      .ton_env      = 0x00,
      .ton_period   = 0x1e0,
      .noise_period = 0x00,
      .amplitude    = 0x05,
      .duration     = 0x02,
   };
   sample_t *sample_holder = NULL;

   sample_holder = al_malloc (sizeof (sample_t));
   if (sample_holder == NULL)
   {
      fprintf (stderr, "l/r sample holder memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample = al_malloc (sizeof (ALLEGRO_SAMPLE *));
   if (sample_holder->sample == NULL)
   {
      fprintf (stderr, "l/r sample memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample_inst = al_malloc (sizeof (ALLEGRO_SAMPLE_INSTANCE *));
   if (sample_holder->sample_inst == NULL)
   {
      fprintf (stderr, "l/r sample instance memory alloction failed\n");
      exit (EXIT_FAILURE);
   }

   set_ay_regs (&control->ayemu, &base_channel_a_b, AY_CHAN_A | AY_CHAN_B);
   sample_holder->sample[0] =
      sound_gen_sample (&control->ayemu, &base_channel_a_b);
   sample_holder->sample_inst[0] =
      al_create_sample_instance (sample_holder->sample[0]);
   al_attach_sample_instance_to_mixer (sample_holder->sample_inst[0],
                                       control->mixer);

   sample_holder->num_sample = 1;
   control->chuck_samples.left_right = sample_holder;
}

#define GAME_LOST_TONES 0x10

// 11 00 00 00 00 00 0F 00 00
// 0A 00 00 00 00 00 0F 00 00
// 7E 02 14 38 02 0A 7E 02 14 CC 02 0A F6 02 14 BC
// 03 0A 53 03 14 F4 03 0A BC 03 3C BC 03 05 53 03
// 05 F6 02 05 CC 02 05 7E 02 05 FA 01 05 DE 01 05
static const uint8_t tone_period_and_duration[] = {
   0x7e, 0x02, 0x14, 0x38, 0x02, 0x0a, 0x7e, 0x02, 0x14,
   0xcc, 0x02, 0x0a, 0xf6, 0x02, 0x14, 0xbc, 0x03, 0x0a,
   0x53, 0x03, 0x14, 0xf4, 0x03, 0x0a, 0xbc, 0x03, 0x3c,
   0xbc, 0x03, 0x05, 0x53, 0x03, 0x05, 0xf6, 0x02, 0x05,
   0xcc, 0x02, 0x05, 0x7e, 0x02, 0x05, 0xfa, 0x01, 0x05,
   0xde, 0x01, 0x05
};

static void sound_init_life_lost_samples (sound_control_t *control)
{
   cpc_sound_queue_t base_channel_a =
   {
      .channels     = 0x11,
      .amp_env      = 0x00,
      .ton_env      = 0x00,
      .ton_period   = 0x00,
      .noise_period = 0x00,
      .amplitude    = 0x0f,
      .duration     = 0x00,
   };
   cpc_sound_queue_t base_channel_b =
   {
      .channels     = 0x0a,
      .amp_env      = 0x00,
      .ton_env      = 0x00,
      .ton_period   = 0x00,
      .noise_period = 0x00,
      .amplitude    = 0x0f,
      .duration     = 0x00,
   };
   sample_t *sample_holder = NULL;

   sample_holder = al_malloc (sizeof (sample_t));
   if (sample_holder == NULL)
   {
      fprintf (stderr, "sample holder memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample =
      al_malloc (2 * GAME_LOST_TONES * sizeof (ALLEGRO_SAMPLE *));
   if (sample_holder->sample == NULL)
   {
      fprintf (stderr, "sample memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample_inst =
      al_malloc (2 * GAME_LOST_TONES * sizeof (ALLEGRO_SAMPLE_INSTANCE *));
   if (sample_holder->sample_inst == NULL)
   {
      fprintf (stderr, "sample instance memory alloction failed\n");
      exit (EXIT_FAILURE);
   }

   for (int i = 0; i < GAME_LOST_TONES; i++)
   {
      base_channel_a.ton_period = (tone_period_and_duration[3*i + 1] << 8) +
                                   tone_period_and_duration[3*i];
      base_channel_a.duration = tone_period_and_duration[3*i + 2];
      base_channel_b.ton_period = base_channel_a.ton_period / 4;
      base_channel_b.duration = tone_period_and_duration[3*i + 2];

      set_ay_regs (&control->ayemu, &base_channel_a, AY_CHAN_A);
      sample_holder->sample[2*i] =
         sound_gen_sample (&control->ayemu, &base_channel_a);
      sample_holder->sample_inst[2*i] =
         al_create_sample_instance (sample_holder->sample[2*i]);
      al_attach_sample_instance_to_mixer (sample_holder->sample_inst[2*i],
                                          control->mixer);

      set_ay_regs (&control->ayemu, &base_channel_b, AY_CHAN_B);
      sample_holder->sample[2*i + 1] =
         sound_gen_sample (&control->ayemu, &base_channel_b);
      sample_holder->sample_inst[2*i + 1] =
         al_create_sample_instance (sample_holder->sample[2*i + 1]);
      al_attach_sample_instance_to_mixer (sample_holder->sample_inst[2*i + 1],
                                          control->mixer);
   }

   sample_holder->num_sample = GAME_LOST_TONES;
   control->chuck_samples.life_lost = sample_holder;
}

static void sound_init_score_anim_samples (sound_control_t *control)
{
   cpc_sound_queue_t base_channel_a_b =
   {
      .channels     = 0x83,
      .amp_env      = 0x00,
      .ton_env      = 0x00,
      .ton_period   = 0x64,
      .noise_period = 0x00,
      .amplitude    = 0x05,
      .duration     = 0x02,
   };
   sample_t *sample_holder = NULL;

   sample_holder = al_malloc (sizeof (sample_t));
   if (sample_holder == NULL)
   {
      fprintf (stderr, "score sample holder memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample = al_malloc (sizeof (ALLEGRO_SAMPLE *));
   if (sample_holder->sample == NULL)
   {
      fprintf (stderr, "score sample memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample_inst = al_malloc (sizeof (ALLEGRO_SAMPLE_INSTANCE *));
   if (sample_holder->sample_inst == NULL)
   {
      fprintf (stderr, "score sample instance memory alloction failed\n");
      exit (EXIT_FAILURE);
   }

   set_ay_regs (&control->ayemu, &base_channel_a_b, AY_CHAN_A | AY_CHAN_B);
   sample_holder->sample[0] =
      sound_gen_sample (&control->ayemu, &base_channel_a_b);
   sample_holder->sample_inst[0] =
      al_create_sample_instance (sample_holder->sample[0]);
   al_attach_sample_instance_to_mixer (sample_holder->sample_inst[0],
                                       control->mixer);

   sample_holder->num_sample = 1;
   control->chuck_samples.score_anim = sample_holder;
}

static void sound_init_score_egg_samples (sound_control_t *control)
{
   cpc_sound_queue_t base_channel_c =
   {
      .channels     = 0x84,
      .amp_env      = 0x01,
      .ton_env      = 0x00,
      .ton_period   = 0x00,
      .noise_period = 0x15,
      .amplitude    = 0x0f,
      .duration     = 0x14,
   };
   sample_t *sample_holder = NULL;

   sample_holder = al_malloc (sizeof (sample_t));
   if (sample_holder == NULL)
   {
      fprintf (stderr, "score sample holder memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample = al_malloc (sizeof (ALLEGRO_SAMPLE *));
   if (sample_holder->sample == NULL)
   {
      fprintf (stderr, "score sample memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample_inst = al_malloc (sizeof (ALLEGRO_SAMPLE_INSTANCE *));
   if (sample_holder->sample_inst == NULL)
   {
      fprintf (stderr, "score sample instance memory alloction failed\n");
      exit (EXIT_FAILURE);
   }

   set_ay_regs (&control->ayemu, &base_channel_c, AY_NOISE_C | AY_CHAN_C);
   sample_holder->sample[0] =
      sound_gen_sample (&control->ayemu, &base_channel_c);
   sample_holder->sample_inst[0] =
      al_create_sample_instance (sample_holder->sample[0]);
   al_attach_sample_instance_to_mixer (sample_holder->sample_inst[0],
                                       control->mixer);

   sample_holder->num_sample = 1;
   control->chuck_samples.egg = sample_holder;
}

static void sound_init_score_seed_samples (sound_control_t *control)
{
   cpc_sound_queue_t base_channel_c =
   {
      .channels     = 0x84,
      .amp_env      = 0x01,
      .ton_env      = 0x00,
      .ton_period   = 0x00,
      .noise_period = 0x08,
      .amplitude    = 0x0f,
      .duration     = 0x14,
   };
   sample_t *sample_holder = NULL;

   sample_holder = al_malloc (sizeof (sample_t));
   if (sample_holder == NULL)
   {
      fprintf (stderr, "score sample holder memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample = al_malloc (sizeof (ALLEGRO_SAMPLE *));
   if (sample_holder->sample == NULL)
   {
      fprintf (stderr, "score sample memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample_inst = al_malloc (sizeof (ALLEGRO_SAMPLE_INSTANCE *));
   if (sample_holder->sample_inst == NULL)
   {
      fprintf (stderr, "score sample instance memory alloction failed\n");
      exit (EXIT_FAILURE);
   }

   set_ay_regs (&control->ayemu, &base_channel_c, AY_NOISE_C | AY_CHAN_C);
   sample_holder->sample[0] =
      sound_gen_sample (&control->ayemu, &base_channel_c);
   sample_holder->sample_inst[0] =
      al_create_sample_instance (sample_holder->sample[0]);
   al_attach_sample_instance_to_mixer (sample_holder->sample_inst[0],
                                       control->mixer);

   sample_holder->num_sample = 1;
   control->chuck_samples.seed = sample_holder;
}

static void sound_init_samples (sound_control_t *control)
{
   sound_init_up_down_samples (control);
   sound_init_left_right_samples (control);
   sound_init_life_lost_samples (control);
   sound_init_score_anim_samples (control);
   sound_init_score_egg_samples (control);
   sound_init_score_seed_samples (control);
}

void sound_generate_event (uint64_t handle, int data)
{
   sound_control_t *control = (sound_control_t *) handle;
   ALLEGRO_EVENT user_event;

   user_event.user.type = PSG_SUPPORT_EVENT_TYPE;
   user_event.user.data1 = data;

   al_emit_user_event (&control->user_src, &user_event, NULL);
}

uint64_t sound_init (void)
{
   sound_control_t *control = NULL;

   control = al_malloc (sizeof (sound_control_t));
   if (control == NULL)
   {
      fprintf (stderr, "control type alloc failed\n");
      exit (EXIT_FAILURE);
   }

   init_alleg (control);
   init_ayemu (control);

   // init sounds like left/right up/down life lost
   // we can't pregenerated jump/fall this has to be dynamic
   sound_init_samples (control);

   // create sound thread
   control->sound_thread_id = al_create_thread (sound_thread, control);
   if (control->sound_thread_id == NULL)
   {
      fprintf (stderr, "al_create_thread failed\n");
      exit (EXIT_FAILURE);
   } 
   al_start_thread(control->sound_thread_id);

   return (uint64_t) control;
}

static void sound_play_up_down (sample_t *up_down)
{
   al_play_sample_instance (up_down->sample_inst[0]);
   al_rest (al_get_sample_instance_time (up_down->sample_inst[0]));
}

static void sound_play_left_right (sample_t *left_right)
{
   al_play_sample_instance (left_right->sample_inst[0]);
   al_rest (al_get_sample_instance_time (left_right->sample_inst[0]));
}

static void sound_play_jump (void)
{
}

static void sound_play_fall (void)
{
}

static void sound_play_life_lost (sample_t *life_lost)
{
   for (int i = 0; i < life_lost->num_sample; i++)
   {
      al_play_sample_instance (life_lost->sample_inst[2*i]);
      al_play_sample_instance (life_lost->sample_inst[2*i + 1]);
      al_rest (al_get_sample_instance_time (life_lost->sample_inst[2*i]));
   }
}

static void sound_play_score_anim (sample_t *score_anim)
{
   al_play_sample_instance (score_anim->sample_inst[0]);
   al_rest (al_get_sample_instance_time (score_anim->sample_inst[0]));
}

static void sound_play_egg (sample_t *egg)
{
   al_play_sample_instance (egg->sample_inst[0]);
   al_rest (al_get_sample_instance_time (egg->sample_inst[0]));
}

static void sound_play_seed (sample_t *seed)
{
   al_play_sample_instance (seed->sample_inst[0]);
   //al_rest (al_get_sample_instance_time (seed->sample_inst[0]));
}

void *sound_thread (ALLEGRO_THREAD *thread, void *arg)
{
   ALLEGRO_EVENT_QUEUE *queue;
   ALLEGRO_EVENT event;
   sound_control_t *control = (sound_control_t *) arg;

   queue = al_create_event_queue ();
   al_register_event_source(queue, &control->user_src);

   while (true) {
      al_wait_for_event (queue, &event);

      if (event.type == PSG_SUPPORT_EVENT_TYPE) {
         switch (event.user.data1)
         {
            case SOUND_EVENT_PLAY_UP_DOWN:
               sound_play_up_down (control->chuck_samples.up_down);
               break;
            case SOUND_EVENT_PLAY_LEFT_RIGHT:
               sound_play_left_right (control->chuck_samples.left_right);
               break;
            case SOUND_EVENT_PLAY_FALL:
               sound_play_fall ();
               break;
            case SOUND_EVENT_PLAY_JUMP:
               sound_play_jump ();
               break;
            case SOUND_EVENT_PLAY_LIFE_LOST:
               sound_play_life_lost (control->chuck_samples.life_lost);
               break;
            case SOUND_EVENT_PLAY_SCORE_ANIMATION:
               sound_play_score_anim (control->chuck_samples.score_anim);
               break;
            case SOUND_EVENT_PLAY_EGG:
               sound_play_egg (control->chuck_samples.egg);
               break;
            case SOUND_EVENT_PLAY_SEED:
               sound_play_seed (control->chuck_samples.seed);
               break;
            default:
               fprintf (stderr, "strange sound event %ld\n", event.user.data1);
         }
      }
   }
}
