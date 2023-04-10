#ifndef __GAME_CONTEXT_H__
#define __GAME_CONTEXT_H__

#include <inttypes.h>
#include <stdbool.h>

#include <allegro5/allegro_font.h>

#include "game_types.h"
#include "player_context.h"

typedef struct __game_context
{
   bool back_to_title;
   bool next_level;
   bool restart_level;
   bool life_lost;
   uint8_t number_of_players;
   uint8_t current_player;
   player_context_t *player_context;
   level_t levels[8];
   // chuck position
   chuck_state_t chuck_state;
   // duck positions
   ducks_state_t ducks_state;
   // flying duck position
   flying_duck_state_t flying_duck_state;
   element_state_t elevator_state[N_PADDLES];
   seed_state_t seed_state[MAX_N_SEED];
   egg_state_t egg_state[MAX_N_EGGS];
   rand_t random;
   uint8_t time_off_ticks;
   ALLEGRO_FONT *font;
   ALLEGRO_EVENT_QUEUE *queue;
   ALLEGRO_TIMER *timer;
   ALLEGRO_DISPLAY *display;
} game_context_t;

void init_game_context (game_context_t *game, player_context_t *player);
void init_game_play (game_context_t *game);
void deinit_game_context (game_context_t *game);
void init_game_next_level (game_context_t *game);
void init_game_restart_level (game_context_t *game);
void set_time_off (game_context_t *game, uint8_t ticks);
uint8_t get_time_off (game_context_t *game);
void set_game_font (game_context_t *game, ALLEGRO_FONT *font);
ALLEGRO_FONT *get_game_font (game_context_t *game);
void set_game_queue (game_context_t *game, ALLEGRO_EVENT_QUEUE *queue);
ALLEGRO_EVENT_QUEUE *get_game_queue (game_context_t *game);
void set_game_timer (game_context_t *game, ALLEGRO_TIMER *timer);
ALLEGRO_TIMER *get_game_timer (game_context_t *game);
void set_game_display (game_context_t *game, ALLEGRO_DISPLAY *display);
ALLEGRO_DISPLAY *get_game_display (game_context_t *game);
void set_back_to_title (game_context_t *game, bool value);
bool get_back_to_title (game_context_t *game);
void set_next_level (game_context_t *game, bool value);
bool get_next_level (game_context_t *game);
void set_restart_level (game_context_t *game, bool value);
bool get_restart_level (game_context_t *game);
void set_life_lost (game_context_t *game, bool value);
bool get_life_lost (game_context_t *game);

#endif // __GAME_CONTEXT_H__
