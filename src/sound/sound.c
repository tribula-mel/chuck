#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>

#include <allegro5/allegro.h>
#include <allegro5/allegro_audio.h>

#include "ayemu.h"
#include "sound.h"

#define AY_CHAN_A  1
#define AY_CHAN_B  2
#define AY_CHAN_C  4
#define AY_NOISE   8

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
   ALLEGRO_SAMPLE *sample;
   ALLEGRO_SAMPLE_INSTANCE *sample_inst[];
} sample_t;

typedef struct
{
   sample_t *up_down;
   sample_t *left_right;
   sample_t *vert_jump;
   sample_t *vert_fall;
   sample_t *life_lost;
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
   sound_ayemu_t *ayemu;
   ALLEGRO_MIXER *mixer;
   ALLEGRO_VOICE *voice;
   ALLEGRO_EVENT_SOURCE user_src;
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

   control->mixer = al_create_mixer (44100, ALLEGRO_AUDIO_DEPTH_FLOAT32,
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
}

static void init_ayemu (sound_control_t *control)
{
   control->ayemu->freq = 44100;
   control->ayemu->chans = 2; /* 1=mono, 2=stereo */
   control->ayemu->bits = 16; /* 16 or 8 bit */

   ayemu_init(&control->ayemu->ay);
   ayemu_set_chip_type (&control->ayemu->ay, AYEMU_AY_LION17, NULL);
   // cpc ay-3-8910 worked on 1MHz
   ayemu_set_chip_freq (&control->ayemu->ay, 1000000);
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
   al_sample = al_create_sample (audio_buf, audio_bufsize, ayemu->freq,
                                 ALLEGRO_AUDIO_DEPTH_INT16,
                                 ALLEGRO_CHANNEL_CONF_2, true);
   if (al_sample == NULL)
   {
      fprintf (stderr, "Error creating sample 0.\n");
      exit (EXIT_FAILURE);
   }

   return (al_sample);
}

#define GAME_LOST_TONES 0x10

// 11 00 00 00 00 00 0F 00 00
// 0A 00 00 00 00 00 0F 00 00
// 7E 02 14 38 02 0A 7E 02 14 CC 02 0A F6 02 14 BC
// 03 0A 53 03 14 F4 03 0A BC 03 3C BC 03 05 53 03
// 05 F6 02 05 CC 02 05 7E 02 05 FA 01 05 DE 01 05
#if 00
static void sound_init_life_lost_samples (sound_control_t *control)
{
   ALLEGRO_SAMPLE *sample;
   ALLEGRO_SAMPLE_INSTANCE *sample_inst;

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

   uint8_t tone_period_and_duration[] = {
      0x7e, 0x02, 0x14, 0x38, 0x02, 0x0a, 0x7e, 0x02, 0x14,
      0xcc, 0x02, 0x0a, 0xf6, 0x02, 0x14, 0xbc, 0x03, 0x0a,
      0x53, 0x03, 0x14, 0xf4, 0x03, 0x0a, 0xbc, 0x03, 0x3c,
      0xbc, 0x03, 0x05, 0x53, 0x03, 0x05, 0xf6, 0x02, 0x05,
      0xcc, 0x02, 0x05, 0x7e, 0x02, 0x05, 0xfa, 0x01, 0x05,
      0xde, 0x01, 0x05
   };

   sample_t *sample_holder = NULL;

   sample_holder = al_malloc (sizeof (sample_t));
   if (sample_holder == NULL)
   {
      fprintf (stderr, "sample holder memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample = al_malloc (GAME_LOST_TONES * sizeof (ALLEGRO_SAMPLE *));
   if (sample_holder->sample == NULL)
   {
      fprintf (stderr, "sample memory alloction failed\n");
      exit (EXIT_FAILURE);
   }
   sample_holder->sample_inst = al_malloc (GAME_LOST_TONES * sizeof (ALLEGRO_SAMPLE_INSTANCE *));
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

      set_ay_regs (control->ayemu, &base_channel_a, AY_CHAN_A);
      sample  = sound_gen_sample (control->ayemu, &base_channel_a);
      sample_inst = al_create_sample_instance(sample);
      sample_holder->sample[2*i] = sample;
      sample_holder->sample_inst[2*i] = sample_inst;
      set_ay_regs (control->ayemu, &base_channel_b, AY_CHAN_B);
      sample  = sound_gen_sample (control->ayemu, &base_channel_b);
      sample_inst = al_create_sample_instance(sample);
      sample_holder->sample[2*i + 1] = sample;
      sample_holder->sample_inst[2*i + 1] = sample_inst;
   }
}
#endif

static void sound_init_samples ()
{
}

void sound_generate_event (uint64_t handle, int data)
{
   sound_control_t *control = (sound_control_t *) handle;
   ALLEGRO_EVENT user_event;

   user_event.user.type = PSG_SUPPORT_EVENT_TYPE;
   user_event.user.data1 = data;

   printf ("control pointer in gen event %p\n", control);
   al_emit_user_event (&control->user_src, &user_event, NULL);
}

uint64_t sound_init (void)
{
   sound_control_t *control = NULL;
   ALLEGRO_THREAD *sound_thread_id = NULL;

   printf ("sound_init called\n");
   control = al_malloc (sizeof (sound_control_t));
   if (control == NULL)
   {
      fprintf (stderr, "control type alloc failed\n");
      exit (EXIT_FAILURE);
   }
   printf ("control pointer %p\n", control);

   al_init_user_event_source (&control->user_src);

   init_alleg (control);
   init_ayemu (control);

   // init sounds like left/right up/down life lost
   // we can't pregenerated jump/fall this has to be dynamic
   sound_init_samples ();

   // create sound thread
   sound_thread_id = al_create_thread (sound_thread, control);
   if (sound_thread_id == NULL)
   {
      fprintf (stderr, "al_create_thread failed\n");
      exit (EXIT_FAILURE);
   } 
   al_start_thread(sound_thread_id);

   return (uint64_t) control;
}

static void sound_play_left_right (void)
{
   printf ("sound left_right\n");
}

static void sound_play_up_down (void)
{
   printf ("sound up_down\n");
}

static void sound_play_jump (void)
{
   printf ("sound jump\n");
}

static void sound_play_fall (void)
{
   printf ("sound fall\n");
}

static void sound_play_life_lost (void)
{
   printf ("sound life_lost\n");
}

void *sound_thread (ALLEGRO_THREAD *thread, void *arg)
{
   ALLEGRO_EVENT_QUEUE *queue;
   ALLEGRO_EVENT event;
   sound_control_t *control = (sound_control_t *) arg;

   printf ("sound_thread started allegro init %d\n", al_is_system_installed ());
   queue = al_create_event_queue ();
   al_register_event_source(queue, &control->user_src);

   while (true) {
      al_wait_for_event (queue, &event);

      printf ("rec event type %d\n", event.type);
      printf ("expected event type %d\n", PSG_SUPPORT_EVENT_TYPE);
      if (event.type == PSG_SUPPORT_EVENT_TYPE) {
         switch (event.user.data1)
         {
            case SOUND_EVENT_PLAY_LEFT_RIGHT:
               sound_play_left_right ();
               break;
            case SOUND_EVENT_PLAY_UP_DOWN:
               sound_play_up_down ();
               break;
            case SOUND_EVENT_PLAY_FALL:
               sound_play_fall ();
               break;
            case SOUND_EVENT_PLAY_JUMP:
               sound_play_jump ();
               break;
            case SOUND_EVENT_PLAY_LIFE_LOST:
               sound_play_life_lost ();
               break;
            default:
               fprintf (stderr, "strange sound event %ld\n", event.user.data1);
         }
      }
   }
}
