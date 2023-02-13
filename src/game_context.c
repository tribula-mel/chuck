#include "game_context.h"

void set_time_off (game_context_t *game, uint8_t ticks)
{
   game->time_off_ticks = ticks;
}

uint8_t get_time_off (game_context_t *game)
{
   return (game->time_off_ticks);
}
