#ifndef __TITLE_CONTEXT_H__
#define __TITLE_CONTEXT_H__

#include <inttypes.h>

typedef struct __high_score
{
   char name[9];
   uint32_t score;
} high_score_t;

typedef struct __title_context
{
   ALLEGRO_FONT *font;
   ALLEGRO_EVENT *event;
   ALLEGRO_EVENT_QUEUE *queue;
   high_score_t high_score[10];
} title_context_t;

high_score_t *get_high_score (title_context_t *title, uint8_t index);
void set_high_score (title_context_t *title, high_score_t *high_score,
                     uint8_t index);
void init_high_score (title_context_t *title);
void set_title_font (title_context_t *title, ALLEGRO_FONT *font);
void set_title_event (title_context_t *title, ALLEGRO_EVENT *event);
void set_title_queue (title_context_t *title, ALLEGRO_EVENT_QUEUE *queue);

#endif // __TITLE_CONTEXT_H__
