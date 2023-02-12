#include <stdio.h>

#include <allegro5/allegro5.h>
#include <allegro5/allegro_font.h>
#include <allegro5/allegro_ttf.h>

#include "title_context.h"

// maximum length for high score name
#define MAX_HS_NAME (8)

high_score_t *get_high_score (title_context_t *title, uint8_t index)
{
   return (&title->high_score[index]);
}

void set_high_score (title_context_t *title, high_score_t *high_score,
                     uint8_t index)
{
   title->high_score[index].score = high_score->score;
   memcpy (&title->high_score[index].name[0],
           &high_score->name[0], MAX_HS_NAME);
}

void init_high_score (title_context_t *title)
{
   for (int i = 0; i < 10; i++)
   {
      memcpy (&title->high_score[i].name[0], "A'n'F", sizeof ("A'n'F"));
      title->high_score[i].score = 1000;
   }
}

void set_title_font (title_context_t *title, ALLEGRO_FONT *font)
{
   title->font = font;
}

ALLEGRO_FONT *get_title_font (title_context_t *title)
{
   return (title->font);
}

void set_title_queue (title_context_t *title, ALLEGRO_EVENT_QUEUE *queue)
{
   title->queue = queue;
}

ALLEGRO_EVENT_QUEUE *get_title_queue (title_context_t *title)
{
   return (title->queue);
}

void set_title_timer (title_context_t *title, ALLEGRO_TIMER *timer)
{
   title->timer = timer;
}

ALLEGRO_TIMER *get_title_timer (title_context_t *title)
{
   return (title->timer);
}

void init_title_context (title_context_t *title)
{
   ALLEGRO_FONT *font;
   ALLEGRO_TIMER *timer;
   ALLEGRO_EVENT_QUEUE *queue;

   memset (title, 0, sizeof (title_context_t));

   // doesn't have a return value in allegro 5
   al_init_font_addon ();
   if (false == al_init_ttf_addon ())
   {
      fprintf (stderr, "couldn't initialize ttf_addon\n");
      exit (EXIT_FAILURE);
   }

   font = al_load_ttf_font_stretch ("amstrad_cpc464.ttf", 64, 32, 0);
   if (font == NULL)
   {
      fprintf (stderr, "unable to load amstrad_cpc464.ttf font file\n");
      exit (EXIT_FAILURE);
   }

   timer = al_create_timer (5.0);
   if (timer == NULL)
   {
      fprintf (stderr, "unable to create allegro timer\n");
      exit (EXIT_FAILURE);
   }

   queue = al_create_event_queue ();
   if (queue == NULL)
   {
      fprintf (stderr, "unable to create allegro queue\n");
      exit (EXIT_FAILURE);
   }

   al_register_event_source (queue, al_get_keyboard_event_source ());
   al_register_event_source (queue, al_get_timer_event_source (timer));

   set_title_font (title, font);
   set_title_queue (title, queue);
   set_title_timer (title, timer);
   init_high_score (title);
}

void deint_title_context (title_context_t *title)
{
   al_destroy_timer (get_title_timer (title));
   al_destroy_event_queue (get_title_queue (title));
}
