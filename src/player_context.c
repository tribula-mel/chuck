#include <inttypes.h>

#include "player_context_type.h"

// player related setters and getters
uint8_t get_current_player (player_context_t *player)
{
   return (player->current_player);
}

void set_current_player (player_context_t *player, uint8_t num)
{
   player->current_player = num;
}

// level related setters and getters
uint8_t get_current_level (player_context_t *player)
{
   return (player->current_level);
}

void set_current_level (player_context_t *player, uint8_t num)
{
   player->current_level = num;
}

uint8_t *get_current_level_gfx (player_context_t *player)
{
   return ((uint8_t *) &player->gfx_current_level);
}

void convert_num_to_gfx (uint16_t num, uint8_t *gfx,
                         uint32_t base, uint8_t level)
{
   uint32_t div = base;
   uint16_t helper = num;
   uint8_t i;

   for (i = 0; i < level; i++)
   {
      gfx[i] = helper / div;
      helper -= gfx[i] * div;
      div /= 10;
   }
}

void set_current_level_gfx (player_context_t *player)
{
   convert_num_to_gfx (player->current_level,
                       (uint8_t *) &player->gfx_current_level, 100, 3);
}

// score related setters and getters
uint32_t get_score (player_context_t *player)
{
   return (player->score);
}

void set_score (player_context_t *player, uint32_t num)
{
   player->score = num;
}

uint8_t *get_score_gfx (player_context_t *player)
{
   return ((uint8_t *) &player->gfx_score);
}

void set_score_gfx (player_context_t *player)
{
   convert_num_to_gfx (player->score,
                       (uint8_t *) &player->gfx_score, 100000, 6);
}

// time related setters and getters
uint16_t get_time (player_context_t *player)
{
   return (player->time);
}

void set_time (player_context_t *player, uint16_t num)
{
   player->time = num;
}

uint8_t *get_time_gfx (player_context_t *player)
{
   return ((uint8_t *) &player->gfx_time);
}

void set_time_gfx (player_context_t *player)
{
   convert_num_to_gfx (player->time,
                       (uint8_t *) &player->gfx_time, 100, 3);
}

// bonus related setters and getters
uint16_t get_bonus (player_context_t *player)
{
   return (player->bonus);
}

void set_bonus (player_context_t *player, uint16_t num)
{
   player->bonus = num;
}

uint8_t *get_bonus_gfx (player_context_t *player)
{
   return ((uint8_t *) &player->gfx_bonus);
}

void set_bonus_gfx (player_context_t *player)
{
   convert_num_to_gfx (player->bonus,
                       (uint8_t *) &player->gfx_bonus, 1000, 4);
}

// lives related setters and getters
uint8_t get_lives (player_context_t *player)
{
   return (player->lives);
}

void set_lives (player_context_t *player, uint8_t num)
{
   player->lives = num;
}
