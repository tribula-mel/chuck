#include <stdio.h>

#include <allegro5/allegro5.h>
#include <allegro5/allegro_font.h>
#include <allegro5/allegro_ttf.h>

#include "title_context.h"

// maximum length for high score name
#define MAX_HS_NAME (8)

extern void must_init(bool test, const char *description);

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
   ALLEGRO_TIMER *timer;
   ALLEGRO_EVENT_QUEUE *queue;

   memset (title, 0, sizeof (title_context_t));

   timer = al_create_timer (5.0);
   must_init (timer, "title timer");

   queue = al_create_event_queue ();
   must_init (queue, "title queue");

   al_register_event_source (queue, al_get_keyboard_event_source ());
   al_register_event_source (queue, al_get_timer_event_source (timer));

   set_title_queue (title, queue);
   set_title_timer (title, timer);
   init_high_score (title);
}

void deinit_title_context (title_context_t *title)
{
   al_destroy_timer (get_title_timer (title));
   al_destroy_event_queue (get_title_queue (title));
}
