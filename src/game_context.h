#ifndef __GAME_CONTEXT_H__
#define __GAME_CONTEXT_H__

#include <inttypes.h>
#include <stdbool.h>

#include <allegro5/allegro_font.h>

#include "game_types.h"
#include "player_context.h"

typedef struct __game_context
{
   uint8_t number_of_players;
   player_context_t *players_context;
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
} game_context_t;

void init_game_context (game_context_t *game, uint8_t level);
void set_time_off (game_context_t *game, uint8_t ticks);
uint8_t get_time_off (game_context_t *game);

#endif // __GAME_CONTEXT_H__
