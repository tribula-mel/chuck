#include <allegro5/allegro5.h>
#include <allegro5/allegro_font.h>

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
   memset (title, 0, sizeof (title_context_t));
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

void set_title_event (title_context_t *title, ALLEGRO_EVENT *event)
{
   title->event = event;
}

void set_title_queue (title_context_t *title, ALLEGRO_EVENT_QUEUE *queue)
{
   title->queue = queue;
}
