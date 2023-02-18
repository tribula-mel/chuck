#ifndef __PLAYER_CONTEXT_TYPE_H__
#define __PLAYER_CONTEXT_TYPE_H__

#include "common_defines.h"

typedef struct __player_context
{
   // player number 1 .. 4
   uint8_t player_number;
   // current level
   uint8_t current_level;
   uint8_t gfx_current_level[3];
   // score 0 .. 999990 inclusive
   uint32_t score;
   uint8_t gfx_score[6];
   // time 0 .. 900 inclusive
   uint16_t time;
   uint8_t gfx_time[3];
   // bonus 0 .. 9000
   uint16_t bonus;
   uint8_t gfx_bonus[4];
   // lives; new life every 10000 score points; max 255
   uint8_t lives;
   // movement context
   uint8_t sandbox[OFFSET_Y_MAX][OFFSET_X_MAX];
   // collected eggs
   uint8_t n_of_eggs;
} player_context_t;

void init_player_context (player_context_t *player);
uint8_t get_player_number(player_context_t *player);
void set_player_number (player_context_t *player, uint8_t num);
uint8_t get_current_level (player_context_t *player);
void set_current_level (player_context_t *player, uint8_t num);
uint8_t *get_current_level_gfx (player_context_t *player);
void convert_num_to_gfx (uint32_t num, uint8_t *gfx,
                         uint32_t base, uint8_t level);
void set_current_level_gfx (player_context_t *player);
uint32_t get_score (player_context_t *player);
void set_score (player_context_t *player, uint32_t num);
uint8_t *get_score_gfx (player_context_t *player);
void set_score_gfx (player_context_t *player);
uint16_t get_time (player_context_t *player);
void set_time (player_context_t *player, uint16_t num);
uint8_t *get_time_gfx (player_context_t *player);
void set_time_gfx (player_context_t *player);
uint16_t get_bonus (player_context_t *player);
void set_bonus (player_context_t *player, uint16_t num);
uint8_t *get_bonus_gfx (player_context_t *player);
void set_bonus_gfx (player_context_t *player);
uint8_t get_lives (player_context_t *player);
void set_lives (player_context_t *player, uint8_t num);
uint8_t get_sandbox (player_context_t *game, uint8_t x, uint8_t y);
void set_sandbox (player_context_t *game, uint8_t x,
                  uint8_t y, uint8_t content);
uint8_t get_sandbox (player_context_t *game, uint8_t x, uint8_t y);
void set_n_eggs (player_context_t *player, uint8_t num);
uint8_t get_n_eggs (player_context_t *player);

#endif // __PLAYER_CONTEXT_TYPE_H__
