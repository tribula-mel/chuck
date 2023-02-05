#ifndef __PLAYER_CONTEXT_TYPE_H__
#define __PLAYER_CONTEXT_TYPE_H__

#include "common_defines.h"

typedef struct __player_context
{
   // player number 1 .. 4
   uint8_t current_player;
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
} player_context_t;

#endif // __PLAYER_CONTEXT_TYPE_H__
