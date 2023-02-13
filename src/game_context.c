#include "game_context.h"

extern uint8_t adjust_duck_speed (uint8_t level, uint8_t speed);
extern void set_chuck_tile_rel_off_x (game_context_t *game, uint8_t off);
extern void set_chuck_tile_rel_off_y (game_context_t *game, uint8_t off);
extern uint8_t adjust_n_ducks (uint8_t n_ducks, uint8_t level);

void init_game_context (game_context_t *game, uint8_t level)
{
   uint8_t n_ducks = 0;
   int i = 0;

   n_ducks = adjust_n_ducks (game->levels[level % 8].n_ducks, level);
   game->ducks_state.n_ducks = n_ducks;

   // initialize ducks state
   for (i = 0; i < n_ducks; i++)
   {
      game->ducks_state.ducks_state[i].tile_offset.x = game->levels[level % 8].duck_offsets[i].x;
      game->ducks_state.ducks_state[i].tile_offset.y = game->levels[level % 8].duck_offsets[i].y;
      game->ducks_state.ducks_state[i].gfx_offset.x = 8 * game->ducks_state.ducks_state[i].tile_offset.x;
      game->ducks_state.ducks_state[i].gfx_offset.y = 8 * game->ducks_state.ducks_state[i].tile_offset.y + 0x14;
      game->ducks_state.ducks_state[i].direction = right;
      game->ducks_state.ducks_state[i].sprite_state = 0;
   }
   game->ducks_state.duck_to_move = adjust_duck_speed (level, 8);

   // initialize flying duck state
   game->flying_duck_state.tile_offset.x = 0x04;
   game->flying_duck_state.tile_offset.y = 0x9e;
   game->flying_duck_state.direction = right;

   // initialize elevator state
   for (i = 0; i < N_PADDLES; i++)
   {
      game->elevator_state[i].tile_offset.x = game->levels[level % 8].elevator_offset[i].x;
      game->elevator_state[i].tile_offset.y = game->levels[level % 8].elevator_offset[i].y;
   }

   // initialize seed state
   for (i = 0; i < game->levels[level % 8].n_seeds; i++)
   {
      game->seed_state[i].tile_offset.x = game->levels[level % 8].seed_offsets[i].x;
      game->seed_state[i].tile_offset.y = game->levels[level % 8].seed_offsets[i].y;
      game->seed_state[i].present = true;
   }

   // initialize eggs state
   for (i = 0; i < game->levels[level % 8].n_eggs; i++)
   {
      game->egg_state[i].tile_offset.x = game->levels[level % 8].egg_offsets[i].x;
      game->egg_state[i].tile_offset.y = game->levels[level % 8].egg_offsets[i].y;
      game->egg_state[i].present = true;
   }

   // initialize chuck state
   game->chuck_state.el.gfx_offset.x = 0x3c;
   game->chuck_state.el.gfx_offset.y = 0x18;
   game->chuck_state.el.tile_offset.x = 0x7;
   game->chuck_state.el.tile_offset.y = 0x1;
   game->chuck_state.el.direction = right;
   game->chuck_state.el.sprite_state = chuck_standing_one;
   set_chuck_tile_rel_off_x (game, on_the_right_edge);
   set_chuck_tile_rel_off_y (game, on_the_bottom_edge);
   game->chuck_state.vertical_state = 0;
   game->chuck_state.vertical_counter = 0;

   // radnom number for duck movements
   game->random.number = 0x76767676;

   // clear the sandbox
   memset (game->players_context->sandbox, 0, OFFSET_X_MAX * OFFSET_Y_MAX);

   // init game status
   set_score (game->players_context, 0);
   set_bonus (game->players_context, 1000);
   set_time (game->players_context, 900);
   set_current_level (game->players_context, game->players_context->current_level);
}

void set_time_off (game_context_t *game, uint8_t ticks)
{
   game->time_off_ticks = ticks;
}

uint8_t get_time_off (game_context_t *game)
{
   return (game->time_off_ticks);
}
