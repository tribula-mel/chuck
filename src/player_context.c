#include <inttypes.h>
#include <string.h>
#include <assert.h>

#include "player_context.h"

void init_player_context (player_context_t *player)
{
   memset (player, 0, sizeof (player_context_t));
   player->player_number = 1;
   player->current_level = 0;
   player->score = 0;
   player->time = 1000;
   player->bonus = 900;
   player->lives = 5;
}

// player related setters and getters
uint8_t get_player_number (player_context_t *player)
{
   return (player->player_number);
}

void set_player_number (player_context_t *player, uint8_t num)
{
   player->player_number = num;
}

// level related setters and getters
uint8_t get_current_level (player_context_t *player)
{
   return (player->current_level);
}

void set_current_level (player_context_t *player, uint8_t num)
{
   player->current_level = num;
   set_current_level_gfx (player);
}

uint8_t *get_current_level_gfx (player_context_t *player)
{
   return (&player->gfx_current_level[0]);
}

void convert_num_to_gfx (uint32_t num, uint8_t *gfx,
                         uint32_t base, uint8_t level)
{
   uint32_t div = base;
   uint32_t helper = num;
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
                       &player->gfx_current_level[0], 100, 3);
}

// score related setters and getters
uint32_t get_score (player_context_t *player)
{
   return (player->score);
}

void set_score (player_context_t *player, uint32_t num)
{
   player->score = num;
   set_score_gfx (player);
}

uint8_t *get_score_gfx (player_context_t *player)
{
   return (&player->gfx_score[0]);
}

void set_score_gfx (player_context_t *player)
{
   uint8_t prior = player->gfx_score[1];

   convert_num_to_gfx (player->score, &player->gfx_score[0], 100000, 6);

   // new life every 10000 points
   if (prior != player->gfx_score[1])
      // max is 255 lives
      if (get_lives (player) < 0xff)
         set_lives (player, get_lives (player) + 1);
}

// time related setters and getters
uint16_t get_time (player_context_t *player)
{
   return (player->time);
}

void set_time (player_context_t *player, uint16_t num)
{
   player->time = num;
   set_time_gfx (player);
}

uint8_t *get_time_gfx (player_context_t *player)
{
   return (&player->gfx_time[0]);
}

void set_time_gfx (player_context_t *player)
{
   convert_num_to_gfx (player->time, &player->gfx_time[0], 100, 3);
}

// bonus related setters and getters
uint16_t get_bonus (player_context_t *player)
{
   return (player->bonus);
}

void set_bonus (player_context_t *player, uint16_t num)
{
   player->bonus = num;
   set_bonus_gfx (player);
}

uint8_t *get_bonus_gfx (player_context_t *player)
{
   return (&player->gfx_bonus[0]);
}

void set_bonus_gfx (player_context_t *player)
{
   convert_num_to_gfx (player->bonus, &player->gfx_bonus[0], 1000, 4);
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

uint8_t get_sandbox (player_context_t *player, uint8_t x, uint8_t y)
{
   return (player->sandbox[y][x]);
}

void set_sandbox (player_context_t *player, uint8_t x,
                  uint8_t y, uint8_t content)
{
   assert ((y < OFFSET_Y_MAX) && (x < OFFSET_X_MAX));

   player->sandbox[y][x] = content;
}

uint8_t get_n_eggs (player_context_t *player)
{
   return (player->n_of_eggs);
}

void set_n_eggs (player_context_t *player, uint8_t num)
{
   player->n_of_eggs = num;
}
