#ifndef __SOUND_H_
#define __SOUND_H_

#include <stdint.h>

#include <allegro5/allegro.h>

#define PSG_SUPPORT_EVENT_TYPE ALLEGRO_GET_EVENT_TYPE('p', 's', 'g', 's')

typedef enum {
   SOUND_EVENT_PLAY_UP_DOWN,
   SOUND_EVENT_PLAY_LEFT_RIGHT,
   SOUND_EVENT_PLAY_FALL,
   SOUND_EVENT_PLAY_JUMP,
   SOUND_EVENT_PLAY_LIFE_LOST,
   SOUND_EVENT_PLAY_SCORE_ANIMATION,
} sound_event_play_t;

uint64_t sound_init (void);
void *sound_thread (ALLEGRO_THREAD *thread, void *arg);
void sound_generate_event (uint64_t handle, int data);

#endif // __SOUND_H_
