#ifndef __GAME_CONTEXT_H__
#define __GAME_CONTEXT_H__

#include <inttypes.h>
#include <stdbool.h>

#include <allegro5/allegro_font.h>

#include "game_types.h"
#include "player_context.h"

// running the game in original resolution would result in tiny graphics
// for now this will be hard coded
static const uint8_t scale = 2;

#define DOTS_PER_PIXEL_X (4)
#define DOTS_PER_PIXEL_Y (2)

// original game on cpc464 ran in mode 0
static const uint16_t x_res = DOTS_PER_PIXEL_X * 160;
static const uint16_t y_res = DOTS_PER_PIXEL_Y * 200;

typedef struct __game_context
{
   bool back_to_title;
   uint8_t number_of_players;
   uint8_t current_player;
   player_context_t *player_context;
   level_t levels[8];
   // chuck position
   chuck_state_t chuck_state;
   // duck positions
   ducks_state_t ducks_state;
   // flying duck position
   element_state_t flying_duck_state;
   element_state_t elevator_state[N_PADDLES];
   seed_state_t seed_state[MAX_N_SEED];
   egg_state_t egg_state[MAX_N_EGGS];
   rand_t random;
   uint8_t time_off_ticks;
   ALLEGRO_FONT *font;
   ALLEGRO_EVENT_QUEUE *queue;
   ALLEGRO_TIMER *timer;
} game_context_t;

void init_game_context (game_context_t *game, player_context_t *player);
void deinit_game_context (game_context_t *game);
void set_time_off (game_context_t *game, uint8_t ticks);
uint8_t get_time_off (game_context_t *game);
void set_game_font (game_context_t *game, ALLEGRO_FONT *font);
ALLEGRO_FONT *get_game_font (game_context_t *game);
void set_game_queue (game_context_t *game, ALLEGRO_EVENT_QUEUE *queue);
ALLEGRO_EVENT_QUEUE *get_game_queue (game_context_t *game);
void set_game_timer (game_context_t *game, ALLEGRO_TIMER *timer);
ALLEGRO_TIMER *get_game_timer (game_context_t *game);
void set_back_to_title (game_context_t *game, bool value);
bool get_back_to_title (game_context_t *game);

#endif // __GAME_CONTEXT_H__
