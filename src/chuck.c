#include <assert.h>
#include <inttypes.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#include <SDL2/SDL.h>

#include "game_types.h"

static void set_chuck_gfx_off_x (game_context_t *game, uint8_t off);
static uint8_t get_chuck_gfx_off_x (game_context_t *game);
static void set_chuck_gfx_off_y (game_context_t *game, uint8_t off);
static uint8_t get_chuck_gfx_off_y (game_context_t *game);
static void set_chuck_tile_rel_off_x (game_context_t *game, uint8_t off);
static uint8_t get_chuck_tile_rel_off_x (game_context_t *game);
static void set_chuck_tile_rel_off_y (game_context_t *game, uint8_t off);
static uint8_t get_chuck_tile_rel_off_y (game_context_t *game);
static void set_chuck_tile_off_x (game_context_t *game, uint8_t off);
static uint8_t get_chuck_tile_off_x (game_context_t *game);
static void set_chuck_tile_off_y (game_context_t *game, uint8_t off);
static uint8_t get_chuck_tile_off_y (game_context_t *game);
static void set_chuck_dvx (game_context_t *game, uint8_t off);
static uint8_t get_chuck_dvx (game_context_t *game);
static void set_chuck_dvy (game_context_t *game, uint8_t off);
static uint8_t get_chuck_dvy (game_context_t *game);
static void calc_chuck_dv (game_context_t *game);
static void adjust_chuck_dvy (game_context_t *game, uint8_t tile_rel_y);
static uint8_t get_sandbox (game_context_t *game, uint8_t x, uint8_t y);
static void reset_chuck_vertical_state (game_context_t *game);

// running the game in original resolution would result in tiny graphics
// for now this will be hard coded
static const uint8_t scale = 2;

#define DOTS_PER_PIXEL_X (4)
#define DOTS_PER_PIXEL_Y (2)

// original game on cpc464 ran in mode 0
static const uint16_t x_res = DOTS_PER_PIXEL_X * 160;
static const uint16_t y_res = DOTS_PER_PIXEL_Y * 200;

static level_t level_classic_one =
{
   .n_platforms      = 0x0d,
   .n_ladders        = 0x04,
   .elevator         = false,
   .n_eggs           = 0x0c,
   .n_seeds          = 0x0a,
   .n_ducks          = 0x02,
   .platform_offsets =
      {
         { // 0x01
            .offset =
               {
                  .y = 0x00,
                  .x = 0x00
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x01
               },
            .offset_x_end = 0x12,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x02
               },
            .offset_x_end = 0x08,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x0e
               },
            .offset_x_end = 0x12,
         },
         {
            .offset =
               {
                  .y = 0x09,
                  .x = 0x09
               },
            .offset_x_end = 0x0a,
         },
         { // 0x06
            .offset =
               {
                  .y = 0x0a,
                  .x = 0x0b
               },
            .offset_x_end = 0x0c,
         },
         {
            .offset =
               {
                  .y = 0x0b,
                  .x = 0x0d
               },
            .offset_x_end = 0x0e,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x0f
               },
            .offset_x_end = 0x10,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x03
               },
            .offset_x_end = 0x07,
         },
         {
            .offset =
               {
                  .y = 0x0d,
                  .x = 0x09
               },
            .offset_x_end = 0x0b,
         },
         {
            .offset =
               {
                  .y = 0x10,
                  .x = 0x05
               },
            .offset_x_end = 0x09,
         },
         { // 0x0c
            .offset =
               {
                  .y = 0x10,
                  .x = 0x0b
               },
            .offset_x_end = 0x10,
         },
         { // 0x0d
            .offset =
               {
                  .y = 0x10,
                  .x = 0x12
               },
            .offset_x_end = 0x13,
         },
      },
   .ladder_offsets =
      {
         { // 0x01
            .offset =
               {
                  .x = 0x03,
                  .y = 0x05
               },
            .offset_y_end = 0x0a,
         },
         { // 0x02
            .offset =
               {
                  .x = 0x07,
                  .y = 0x01
               },
            .offset_y_end = 0x12,
         },
         { // 0x03
            .offset =
               {
                  .x = 0x0b,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
         { // 0x04
            .offset =
               {
                  .x = 0x10,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
      },
   .egg_offsets =
      {
         {
            .x = 0x04,
            .y = 0x01
         },
         {
            .x = 0x01,
            .y = 0x05
         },
         {
            .x = 0x0d,
            .y = 0x05
         },
         {
            .x = 0x12,
            .y = 0x05
         },
         {
            .x = 0x02,
            .y = 0x09
         },
         { // 0x06
            .x = 0x0a,
            .y = 0x0a
         },
         {
            .x = 0x11,
            .y = 0x09
         },
         {
            .x = 0x04,
            .y = 0x0d
         },
         {
            .x = 0x0a,
            .y = 0x0e
         },
         {
            .x = 0x06,
            .y = 0x11
         },
         {
            .x = 0x0d,
            .y = 0x11
         },
         { // 0x0c
            .x = 0x13,
            .y = 0x11
         },
      },
   .seed_offsets =
      {
         {
            .x = 0x02,
            .y = 0x01
         },
         {
            .x = 0x0d,
            .y = 0x01
         },
         {
            .x = 0x05,
            .y = 0x05
         },
         {
            .x = 0x0e,
            .y = 0x05
         },
         {
            .x = 0x05,
            .y = 0x09
         },
         { // 0x06
            .x = 0x0f,
            .y = 0x09
         },
         {
            .x = 0x10,
            .y = 0x0d
         },
         {
            .x = 0x0b,
            .y = 0x0e
         },
         {
            .x = 0x09,
            .y = 0x11
         },
         { // 0x0a
            .x = 0x0e,
            .y = 0x11
         },
      },
   .duck_offsets =
      {
         { // 0x01
            .x = 0x05,
            .y = 0x0d
         },
         {
            .x = 0x08,
            .y = 0x11
         },
         {
            .x = 0x04,
            .y = 0x09
         },
         {
            .x = 0x06,
            .y = 0x05
         },
         { // 0x5
            .x = 0x0c,
            .y = 0x01
         },
      },
   .max_bonus = 1000,
};

static level_t level_classic_two =
{
   .n_platforms      = 0x0d,
   .n_ladders        = 0x08,
   .elevator         = false,
   .n_eggs           = 0x0c,
   .n_seeds          = 0x07,
   .n_ducks          = 0x03,
   .platform_offsets =
      {
         { // 0x01
            .offset =
               {
                  .y = 0x00,
                  .x = 0x00
               },
            .offset_x_end = 0x03,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x05
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x00
               },
            .offset_x_end = 0x06,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x08
               },
            .offset_x_end = 0x0a,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x0c
               },
            .offset_x_end = 0x0e,
         },
         { // 0x06
            .offset =
               {
                  .y = 0x04,
                  .x = 0x10
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x00
               },
            .offset_x_end = 0x03,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x05
               },
            .offset_x_end = 0x0e,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x10
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x00
               },
            .offset_x_end = 0x0a,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x0c
               },
            .offset_x_end = 0x13,
         },
         { // 0x0c
            .offset =
               {
                  .y = 0x10,
                  .x = 0x04
               },
            .offset_x_end = 0x0a,
         },
         { // 0x0d
            .offset =
               {
                  .y = 0x10,
                  .x = 0x0c
               },
            .offset_x_end = 0x13,
         },
      },
   .ladder_offsets =
      {
         { // 0x01
            .offset =
               {
                  .x = 0x02,
                  .y = 0x01
               },
            .offset_y_end = 0x0e,
         },
         { // 0x02
            .offset =
               {
                  .x = 0x04,
                  .y = 0x0d
               },
            .offset_y_end = 0x12,
         },
         { // 0x03
            .offset =
               {
                  .x = 0x06,
                  .y = 0x05
               },
            .offset_y_end = 0x0e,
         },
         { // 0x04
            .offset =
               {
                  .x = 0x09,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
         { // 0x05
            .offset =
               {
                  .x = 0x09,
                  .y = 0x09
               },
            .offset_y_end = 0x12,
         },
         { // 0x06
            .offset =
               {
                  .x = 0x0d,
                  .y = 0x09
               },
            .offset_y_end = 0x0e,
         },
         { // 0x07
            .offset =
               {
                  .x = 0x11,
                  .y = 0x01
               },
            .offset_y_end = 0x0a,
         },
         { // 0x08
            .offset =
               {
                  .x = 0x11,
                  .y = 0x0d
               },
            .offset_y_end = 0x12,
         },
      },
   .egg_offsets =
      {
         {
            .x = 0x05,
            .y = 0x01
         },
         {
            .x = 0x0c,
            .y = 0x01
         },
         {
            .x = 0x00,
            .y = 0x05
         },
         {
            .x = 0x04,
            .y = 0x05
         },
         {
            .x = 0x0d,
            .y = 0x05
         },
         { // 0x06
            .x = 0x00,
            .y = 0x09
         },
         {
            .x = 0x07,
            .y = 0x09
         },
         {
            .x = 0x13,
            .y = 0x09
         },
         {
            .x = 0x07,
            .y = 0x0d
         },
         {
            .x = 0x07,
            .y = 0x11
         },
         {
            .x = 0x0f,
            .y = 0x11
         },
         { // 0x0c
            .x = 0x13,
            .y = 0x11
         },
      },
   .seed_offsets =
      {
         {
            .x = 0x00,
            .y = 0x01
         },
         {
            .x = 0x03,
            .y = 0x01
         },
         {
            .x = 0x0f,
            .y = 0x01
         },
         {
            .x = 0x10,
            .y = 0x05
         },
         {
            .x = 0x00,
            .y = 0x0d
         },
         { // 0x06
            .x = 0x0a,
            .y = 0x0d
         },
         {
            .x = 0x0c,
            .y = 0x11
         },
      },
   .duck_offsets =
      {
         { // 0x01
            .x = 0x06,
            .y = 0x11
         },
         {
            .x = 0x01,
            .y = 0x01
         },
         {
            .x = 0x12,
            .y = 0x09
         },
         {
            .x = 0x0b,
            .y = 0x09
         },
         { // 0x5
            .x = 0x0d,
            .y = 0x11
         },
      },
   .max_bonus = 2000,
};

static level_t level_classic_three =
{
   .n_platforms      = 0x18,
   .n_ladders        = 0x07,
   .elevator         = true,
   .n_eggs           = 0x0c,
   .n_seeds          = 0x0a,
   .n_ducks          = 0x03,
   .platform_offsets =
      {
         { // 0x01
            .offset =
               {
                  .y = 0x00,
                  .x = 0x00
               },
            .offset_x_end = 0x02,
         },
         {
            .offset =
               {
                  .y = 0x01,
                  .x = 0x03
               },
            .offset_x_end = 0x04,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x07
               },
            .offset_x_end = 0x09,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x0b
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x03,
                  .x = 0x10
               },
            .offset_x_end = 0x12,
         },
         { // 0x06
            .offset =
               {
                  .y = 0x07,
                  .x = 0x00
               },
            .offset_x_end = 0x04,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x00
               },
            .offset_x_end = 0x03,
         },
         {
            .offset =
               {
                  .y = 0x0f,
                  .x = 0x03
               },
            .offset_x_end = 0x04,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x07
               },
            .offset_x_end = 0x0a,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x0c
               },
            .offset_x_end = 0x0c,
         },
         {
            .offset =
               {
                  .y = 0x05,
                  .x = 0x0e
               },
            .offset_x_end = 0x0e,
         },
         { // 0x0c
            .offset =
               {
                  .y = 0x06,
                  .x = 0x0f
               },
            .offset_x_end = 0x0f,
         },
         { // 0x0d
            .offset =
               {
                  .y = 0x07,
                  .x = 0x11
               },
            .offset_x_end = 0x11,
         },
         { // 0x0e
            .offset =
               {
                  .y = 0x08,
                  .x = 0x12
               },
            .offset_x_end = 0x13,
         },
         { // 0x0f
            .offset =
               {
                  .y = 0x09,
                  .x = 0x0c
               },
            .offset_x_end = 0x0d,
         },
         { // 0x10
            .offset =
               {
                  .y = 0x09,
                  .x = 0x0f
               },
            .offset_x_end = 0x0f,
         },
         { // 0x11
            .offset =
               {
                  .y = 0x0b,
                  .x = 0x12
               },
            .offset_x_end = 0x13,
         },
         { // 0x12
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x11
               },
            .offset_x_end = 0x11,
         },
         { // 0x13
            .offset =
               {
                  .y = 0x0d,
                  .x = 0x0f
               },
            .offset_x_end = 0x0f,
         },
         { // 0x14
            .offset =
               {
                  .y = 0x0e,
                  .x = 0x0c
               },
            .offset_x_end = 0x0d,
         },
         { // 0x15
            .offset =
               {
                  .y = 0x0f,
                  .x = 0x07
               },
            .offset_x_end = 0x0b,
         },
         { // 0x16
            .offset =
               {
                  .y = 0x11,
                  .x = 0x0d
               },
            .offset_x_end = 0x0f,
         },
         { // 0x17
            .offset =
               {
                  .y = 0x10,
                  .x = 0x10
               },
            .offset_x_end = 0x10,
         },
         { // 0x18
            .offset =
               {
                  .y = 0x10,
                  .x = 0x12
               },
            .offset_x_end = 0x13,
         },
      },
   .ladder_offsets =
      {
         { // 0x01
            .offset =
               {
                  .x = 0x01,
                  .y = 0x01
               },
            .offset_y_end = 0x09,
         },
         { // 0x02
            .offset =
               {
                  .x = 0x03,
                  .y = 0x08
               },
            .offset_y_end = 0x11,
         },
         { // 0x03
            .offset =
               {
                  .x = 0x08,
                  .y = 0x05
               },
            .offset_y_end = 0x11,
         },
         { // 0x04
            .offset =
               {
                  .x = 0x0a,
                  .y = 0x05
               },
            .offset_y_end = 0x11,
         },
         { // 0x05
            .offset =
               {
                  .x = 0x0d,
                  .y = 0x0f
               },
            .offset_y_end = 0x13,
         },
         { // 0x06
            .offset =
               {
                  .x = 0x12,
                  .y = 0x01
               },
            .offset_y_end = 0x05,
         },
         { // 0x07
            .offset =
               {
                  .x = 0x13,
                  .y = 0x09
               },
            .offset_y_end = 0x0d,
         },
      },
   .elevator_offset =
      {
         {
            .x = 8 * 0x05, // $88f6, multiplied by 8 to get the x position
            .y = 0x04
         },
         {
            .x = 8 * 0x05,
            .y = 0x042     // the above paddle is at this y
         }
      },
   .egg_offsets =
      {
         {
            .x = 0x04,
            .y = 0x02
         },
         {
            .x = 0x0f,
            .y = 0x01
         },
         {
            .x = 0x10,
            .y = 0x04
         },
         {
            .x = 0x04,
            .y = 0x08
         },
         {
            .x = 0x04,
            .y = 0x10
         },
         { // 0x06
            .x = 0x09,
            .y = 0x05
         },
         {
            .x = 0x0f,
            .y = 0x07
         },
         {
            .x = 0x0f,
            .y = 0x0a
         },
         {
            .x = 0x01,
            .y = 0x0d
         },
         {
            .x = 0x11,
            .y = 0x0d
         },
         {
            .x = 0x13,
            .y = 0x0e
         },
         { // 0x0c
            .x = 0x13,
            .y = 0x11
         },
      },
   .seed_offsets =
      {
         {
            .x = 0x02,
            .y = 0x01
         },
         {
            .x = 0x02,
            .y = 0x08
         },
         {
            .x = 0x07,
            .y = 0x05
         },
         {
            .x = 0x07,
            .y = 0x10
         },
         {
            .x = 0x00,
            .y = 0x0d
         },
         { // 0x06
            .x = 0x0d,
            .y = 0x01
         },
         {
            .x = 0x0c,
            .y = 0x0f
         },
         {
            .x = 0x0f,
            .y = 0x0e
         },
         {
            .x = 0x0d,
            .y = 0x0a
         },
         { // 0x0a
            .x = 0x12,
            .y = 0x11
         },
      },
   .duck_offsets =
      {
         { // 0x01
            .x = 0x02,
            .y = 0x0d
         },
         {
            .x = 0x09,
            .y = 0x10
         },
         {
            .x = 0x11,
            .y = 0x04
         },
         {
            .x = 0x00,
            .y = 0x01
         },
         { // 0x5
            .x = 0x08,
            .y = 0x05
         },
      },
   .max_bonus = 3000,
};

static level_t level_classic_four =
{
   .n_platforms      = 0x1a,
   .n_ladders        = 0x05,
   .elevator         = true,
   .n_eggs           = 0x0c,
   .n_seeds          = 0x06,
   .n_ducks          = 0x04,
   .platform_offsets =
      {
         { // 0x01
            .offset =
               {
                  .y = 0x00,
                  .x = 0x00
               },
            .offset_x_end = 0x04,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x06
               },
            .offset_x_end = 0x0a,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x0d
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x00
               },
            .offset_x_end = 0x04,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x07
               },
            .offset_x_end = 0x0a,
         },
         { // 0x06
            .offset =
               {
                  .y = 0x04,
                  .x = 0x0d
               },
            .offset_x_end = 0x11,
         },
         {
            .offset =
               {
                  .y = 0x03,
                  .x = 0x13
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x00
               },
            .offset_x_end = 0x01,
         },
         {
            .offset =
               {
                  .y = 0x09,
                  .x = 0x03
               },
            .offset_x_end = 0x03,
         },
         {
            .offset =
               {
                  .y = 0x0a,
                  .x = 0x05
               },
            .offset_x_end = 0x05,
         },
         {
            .offset =
               {
                  .y = 0x0b,
                  .x = 0x07
               },
            .offset_x_end = 0x08,
         },
         { // 0x0c
            .offset =
               {
                  .y = 0x08,
                  .x = 0x07
               },
            .offset_x_end = 0x08,
         },
         { // 0x0d
            .offset =
               {
                  .y = 0x08,
                  .x = 0x0d
               },
            .offset_x_end = 0x10,
         },
         { // 0x0e
            .offset =
               {
                  .y = 0x07,
                  .x = 0x12
               },
            .offset_x_end = 0x13,
         },
         { // 0x0f
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x08
               },
            .offset_x_end = 0x0a,
         },
         { // 0x10
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x00
               },
            .offset_x_end = 0x00,
         },
         { // 0x11
            .offset =
               {
                  .y = 0x0d,
                  .x = 0x02
               },
            .offset_x_end = 0x02,
         },
         { // 0x12
            .offset =
               {
                  .y = 0x0e,
                  .x = 0x03
               },
            .offset_x_end = 0x03,
         },
         { // 0x13
            .offset =
               {
                  .y = 0x0f,
                  .x = 0x04
               },
            .offset_x_end = 0x04,
         },
         { // 0x14
            .offset =
               {
                  .y = 0x10,
                  .x = 0x05
               },
            .offset_x_end = 0x05,
         },
         { // 0x15
            .offset =
               {
                  .y = 0x10,
                  .x = 0x07
               },
            .offset_x_end = 0x0a,
         },
         { // 0x16
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x0d
               },
            .offset_x_end = 0x0e,
         },
         { // 0x17
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x10
               },
            .offset_x_end = 0x10,
         },
         { // 0x18
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x12
               },
            .offset_x_end = 0x13,
         },
         { // 0x19
            .offset =
               {
                  .y = 0x10,
                  .x = 0x0d
               },
            .offset_x_end = 0x0f,
         },
         { // 0x1a
            .offset =
               {
                  .y = 0x10,
                  .x = 0x11
               },
            .offset_x_end = 0x13,
         },
      },
   .ladder_offsets =
      {
         { // 0x01
            .offset =
               {
                  .x = 0x03,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
         { // 0x02
            .offset =
               {
                  .x = 0x08,
                  .y = 0x01
               },
            .offset_y_end = 0x12,
         },
         { // 0x03
            .offset =
               {
                  .x = 0x0e,
                  .y = 0x09
               },
            .offset_y_end = 0x12,
         },
         { // 0x04
            .offset =
               {
                  .x = 0x0f,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
         { // 0x05
            .offset =
               {
                  .x = 0x13,
                  .y = 0x0c
               },
            .offset_y_end = 0x12,
         },
      },
   .elevator_offset =
      {
         {
            .x = 8 * 0x0b, // $898f
            .y = 0x04
         },
         {
            .x = 8 * 0x0b,
            .y = 0x042
         }
      },
   .egg_offsets =
      {
         {
            .x = 0x00,
            .y = 0x01
         },
         {
            .x = 0x00,
            .y = 0x09
         },
         {
            .x = 0x00,
            .y = 0x0d
         },
         {
            .x = 0x07,
            .y = 0x05
         },
         {
            .x = 0x09,
            .y = 0x0d
         },
         { // 0x06
            .x = 0x0d,
            .y = 0x01
         },
         {
            .x = 0x10,
            .y = 0x05
         },
         {
            .x = 0x0d,
            .y = 0x09
         },
         {
            .x = 0x13,
            .y = 0x08
         },
         {
            .x = 0x11,
            .y = 0x0c
         },
         {
            .x = 0x10,
            .y = 0x10
         },
         { // 0x0c
            .x = 0x10,
            .y = 0x13
         },
      },
   .seed_offsets =
      {
         {
            .x = 0x00,
            .y = 0x05
         },
         {
            .x = 0x0a,
            .y = 0x01
         },
         {
            .x = 0x12,
            .y = 0x01
         },
         {
            .x = 0x05,
            .y = 0x0b
         },
         {
            .x = 0x09,
            .y = 0x11
         },
         { // 0x06
            .x = 0x0d,
            .y = 0x11
         },
      },
   .duck_offsets =
      {
         { // 0x01
            .x = 0x0a,
            .y = 0x11
         },
         {
            .x = 0x11,
            .y = 0x11
         },
         {
            .x = 0x11,
            .y = 0x01
         },
         {
            .x = 0x04,
            .y = 0x01
         },
         { // 0x5
            .x = 0x0a,
            .y = 0x05
         },
      },
   .max_bonus = 4000,
};

static level_t level_classic_five =
{
   .n_platforms      = 0x11,
   .n_ladders        = 0x09,
   .elevator         = true,
   .n_eggs           = 0x0c,
   .n_seeds          = 0x0d,
   .n_ducks          = 0x04,
   .platform_offsets =
      {
         { // 0x01
            .offset =
               {
                  .y = 0x00,
                  .x = 0x00
               },
            .offset_x_end = 0x01,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x03
               },
            .offset_x_end = 0x0b,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x0d
               },
            .offset_x_end = 0x0f,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x12
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x00
               },
            .offset_x_end = 0x05,
         },
         { // 0x06
            .offset =
               {
                  .y = 0x04,
                  .x = 0x09
               },
            .offset_x_end = 0x0c,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x0e
               },
            .offset_x_end = 0x0f,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x00
               },
            .offset_x_end = 0x05,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x0a
               },
            .offset_x_end = 0x0f,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x13
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x00
               },
            .offset_x_end = 0x05,
         },
         { // 0x0c
            .offset =
               {
                  .y = 0x10,
                  .x = 0x03
               },
            .offset_x_end = 0x07,
         },
         { // 0x0d
            .offset =
               {
                  .y = 0x0f,
                  .x = 0x09
               },
            .offset_x_end = 0x09,
         },
         { // 0x0e
            .offset =
               {
                  .y = 0x0e,
                  .x = 0x0b
               },
            .offset_x_end = 0x0d,
         },
         { // 0x0f
            .offset =
               {
                  .y = 0x0d,
                  .x = 0x0e
               },
            .offset_x_end = 0x0e,
         },
         { // 0x10
            .offset =
               {
                  .y = 0x11,
                  .x = 0x0c
               },
            .offset_x_end = 0x0f,
         },
         { // 0x11
            .offset =
               {
                  .y = 0x10,
                  .x = 0x12
               },
            .offset_x_end = 0x13,
         },
      },
   .ladder_offsets =
      {
         { // 0x01
            .offset =
               {
                  .x = 0x03,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
         { // 0x02
            .offset =
               {
                  .x = 0x02,
                  .y = 0x09
               },
            .offset_y_end = 0x0e,
         },
         { // 0x03
            .offset =
               {
                  .x = 0x04,
                  .y = 0x09
               },
            .offset_y_end = 0x12,
         },
         { // 0x04
            .offset =
               {
                  .x = 0x07,
                  .y = 0x01
               },
            .offset_y_end = 0x05,
         },
         { // 0x05
            .offset =
               {
                  .x = 0x07,
                  .y = 0x08
               },
            .offset_y_end = 0x0d,
         },
         { // 0x06
            .offset =
               {
                  .x = 0x0a,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
         { // 0x07
            .offset =
               {
                  .x = 0x0c,
                  .y = 0x05
               },
            .offset_y_end = 0x0a,
         },
         { // 0x08
            .offset =
               {
                  .x = 0x0c,
                  .y = 0x0f
               },
            .offset_y_end = 0x13,
         },
         { // 0x09
            .offset =
               {
                  .x = 0x0e,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
      },
   .elevator_offset =
      {
         {
            .x = 8 * 0x10, // $8a11
            .y = 0x04
         },
         {
            .x = 8 * 0x10,
            .y = 0x042
         }
      },
   .egg_offsets =
      {
         {
            .x = 0x00,
            .y = 0x01
         },
         {
            .x = 0x00,
            .y = 0x05
         },
         {
            .x = 0x00,
            .y = 0x09
         },
         {
            .x = 0x00,
            .y = 0x0d
         },
         {
            .x = 0x05,
            .y = 0x05
         },
         { // 0x06
            .x = 0x05,
            .y = 0x11
         },
         {
            .x = 0x09,
            .y = 0x08
         },
         {
            .x = 0x0d,
            .y = 0x04
         },
         {
            .x = 0x0b,
            .y = 0x0f
         },
         {
            .x = 0x0d,
            .y = 0x12
         },
         {
            .x = 0x13,
            .y = 0x09
         },
         { // 0x0c
            .x = 0x13,
            .y = 0x11
         },
      },
   .seed_offsets =
      {
         {
            .x = 0x04,
            .y = 0x01
         },
         {
            .x = 0x05,
            .y = 0x01
         },
         {
            .x = 0x06,
            .y = 0x01
         },
         {
            .x = 0x0d,
            .y = 0x01
         },
         {
            .x = 0x0f,
            .y = 0x01
         },
         { // 0x06
            .x = 0x12,
            .y = 0x01
         },
         {
            .x = 0x0a,
            .y = 0x09
         },
         {
            .x = 0x0f,
            .y = 0x09
         },
         {
            .x = 0x03,
            .y = 0x11
         },
         { // 0x0a
            .x = 0x06,
            .y = 0x11
         },
         {
            .x = 0x07,
            .y = 0x11
         },
         {
            .x = 0x0f,
            .y = 0x12
         },
         { // 0x0d
            .x = 0x12,
            .y = 0x11
         },
      },
   .duck_offsets =
      {
         { // 0x01
            .x = 0x01,
            .y = 0x05
         },
         {
            .x = 0x03,
            .y = 0x09
         },
         {
            .x = 0x01,
            .y = 0x0d
         },
         {
            .x = 0x0e,
            .y = 0x09
         },
         { // 0x5
            .x = 0x0f,
            .y = 0x05
         },
      },
   .max_bonus = 5000,
};

static level_t level_classic_six =
{
   .n_platforms      = 0x10,
   .n_ladders        = 0x06,
   .elevator         = true,
   .n_eggs           = 0x0c,
   .n_seeds          = 0x09,
   .n_ducks          = 0x04,
   .platform_offsets =
      {
         { // 0x01
            .offset =
               {
                  .y = 0x00,
                  .x = 0x00
               },
            .offset_x_end = 0x02,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x06
               },
            .offset_x_end = 0x08,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x0b
               },
            .offset_x_end = 0x0e,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x00
               },
            .offset_x_end = 0x01,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x03
               },
            .offset_x_end = 0x05,
         },
         { // 0x06
            .offset =
               {
                  .y = 0x04,
                  .x = 0x0c
               },
            .offset_x_end = 0x0e,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x02
               },
            .offset_x_end = 0x07,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x0c
               },
            .offset_x_end = 0x11,
         },
         {
            .offset =
               {
                  .y = 0x07,
                  .x = 0x11
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x00
               },
            .offset_x_end = 0x05,
         },
         {
            .offset =
               {
                  .y = 0x0d,
                  .x = 0x10
               },
            .offset_x_end = 0x13,
         },
         { // 0x0c
            .offset =
               {
                  .y = 0x10,
                  .x = 0x06
               },
            .offset_x_end = 0x06,
         },
         { // 0x0d
            .offset =
               {
                  .y = 0x10,
                  .x = 0x08
               },
            .offset_x_end = 0x08,
         },
         { // 0x0e
            .offset =
               {
                  .y = 0x10,
                  .x = 0x0c
               },
            .offset_x_end = 0x11,
         },
         { // 0x0f
            .offset =
               {
                  .y = 0x11,
                  .x = 0x11
               },
            .offset_x_end = 0x13,
         },
         { // 0x10
            .offset =
               {
                  .y = 0x01,
                  .x = 0x11
               },
            .offset_x_end = 0x11,
         },
      },
   .ladder_offsets =
      {
         { // 0x01
            .offset =
               {
                  .x = 0x00,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
         { // 0x02
            .offset =
               {
                  .x = 0x04,
                  .y = 0x03
               },
            .offset_y_end = 0x0e,
         },
         { // 0x03
            .offset =
               {
                  .x = 0x0e,
                  .y = 0x05
               },
            .offset_y_end = 0x0a,
         },
         { // 0x04
            .offset =
               {
                  .x = 0x0e,
                  .y = 0x0f
               },
            .offset_y_end = 0x13,
         },
         { // 0x05
            .offset =
               {
                  .x = 0x11,
                  .y = 0x01
               },
            .offset_y_end = 0x0a,
         },
         { // 0x06
            .offset =
               {
                  .x = 0x11,
                  .y = 0x0d
               },
            .offset_y_end = 0x13,
         },
      },
   .elevator_offset =
      {
         {
            .x = 8 * 0x09, // $8a95
            .y = 0x04
         },
         {
            .x = 8 * 0x09,
            .y = 0x042
         }
      },
   .egg_offsets =
      {
         {
            .x = 0x02,
            .y = 0x01
         },
         {
            .x = 0x10,
            .y = 0x01
         },
         {
            .x = 0x05,
            .y = 0x05
         },
         {
            .x = 0x0c,
            .y = 0x05
         },
         {
            .x = 0x0c,
            .y = 0x09
         },
         { // 0x06
            .x = 0x10,
            .y = 0x09
         },
         {
            .x = 0x07,
            .y = 0x0d
         },
         {
            .x = 0x03,
            .y = 0x10
         },
         {
            .x = 0x06,
            .y = 0x11
         },
         {
            .x = 0x0c,
            .y = 0x11
         },
         {
            .x = 0x13,
            .y = 0x0e
         },
         { // 0x0c
            .x = 0x13,
            .y = 0x12
         },
      },
   .seed_offsets =
      {
         {
            .x = 0x0b,
            .y = 0x01
         },
         {
            .x = 0x0c,
            .y = 0x01
         },
         {
            .x = 0x0d,
            .y = 0x01
         },
         {
            .x = 0x0e,
            .y = 0x01
         },
         {
            .x = 0x00,
            .y = 0x0d
         },
         { // 0x06
            .x = 0x02,
            .y = 0x0d
         },
         {
            .x = 0x03,
            .y = 0x0d
         },
         {
            .x = 0x07,
            .y = 0x09
         },
         {
            .x = 0x13,
            .y = 0x08
         },
      },
   .duck_offsets =
      {
         { // 0x01
            .x = 0x01,
            .y = 0x0d
         },
         {
            .x = 0x01,
            .y = 0x01
         },
         {
            .x = 0x12,
            .y = 0x0e
         },
         {
            .x = 0x0d,
            .y = 0x05
         },
         { // 0x5
            .x = 0x12,
            .y = 0x08
         },
      },
   .max_bonus = 6000,
};

static level_t level_classic_seven =
{
   .n_platforms      = 0x17,
   .n_ladders        = 0x07,
   .elevator         = true,
   .n_eggs           = 0x0c,
   .n_seeds          = 0x04,
   .n_ducks          = 0x03,
   .platform_offsets =
      {
         { // 0x01
            .offset =
               {
                  .y = 0x10,
                  .x = 0x0b
               },
            .offset_x_end = 0x10,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x00
               },
            .offset_x_end = 0x04,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x06
               },
            .offset_x_end = 0x07,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x00
               },
            .offset_x_end = 0x02,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x01
               },
            .offset_x_end = 0x03,
         },
         { // 0x06
            .offset =
               {
                  .y = 0x03,
                  .x = 0x00
               },
            .offset_x_end = 0x01,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x03
               },
            .offset_x_end = 0x04,
         },
         {
            .offset =
               {
                  .y = 0x01,
                  .x = 0x05
               },
            .offset_x_end = 0x06,
         },
         {
            .offset =
               {
                  .y = 0x00,
                  .x = 0x07
               },
            .offset_x_end = 0x08,
         },
         {
            .offset =
               {
                  .y = 0x01,
                  .x = 0x09
               },
            .offset_x_end = 0x09,
         },
         {
            .offset =
               {
                  .y = 0x02,
                  .x = 0x09
               },
            .offset_x_end = 0x09,
         },
         { // 0x0c
            .offset =
               {
                  .y = 0x02,
                  .x = 0x0c
               },
            .offset_x_end = 0x0c,
         },
         { // 0x0d
            .offset =
               {
                  .y = 0x05,
                  .x = 0x05
               },
            .offset_x_end = 0x08,
         },
         { // 0x0e
            .offset =
               {
                  .y = 0x06,
                  .x = 0x05
               },
            .offset_x_end = 0x05,
         },
         { // 0x0f
            .offset =
               {
                  .y = 0x07,
                  .x = 0x05
               },
            .offset_x_end = 0x05,
         },
         { // 0x10
            .offset =
               {
                  .y = 0x08,
                  .x = 0x05
               },
            .offset_x_end = 0x05,
         },
         { // 0x11
            .offset =
               {
                  .y = 0x09,
                  .x = 0x05
               },
            .offset_x_end = 0x05,
         },
         { // 0x12
            .offset =
               {
                  .y = 0x08,
                  .x = 0x08
               },
            .offset_x_end = 0x08,
         },
         { // 0x13
            .offset =
               {
                  .y = 0x09,
                  .x = 0x08
               },
            .offset_x_end = 0x08,
         },
         { // 0x14
            .offset =
               {
                  .y = 0x0b,
                  .x = 0x0c
               },
            .offset_x_end = 0x0f,
         },
         { // 0x15
            .offset =
               {
                  .y = 0x08,
                  .x = 0x0a
               },
            .offset_x_end = 0x0b,
         },
         { // 0x16
            .offset =
               {
                  .y = 0x06,
                  .x = 0x0e
               },
            .offset_x_end = 0x10,
         },
         { // 0x17
            .offset =
               {
                  .y = 0x01,
                  .x = 0x0f
               },
            .offset_x_end = 0x10,
         },
      },
   .ladder_offsets =
      {
         { // 0x01
            .offset =
               {
                  .x = 0x01,
                  .y = 0x01
               },
            .offset_y_end = 0x0e,
         },
         { // 0x02
            .offset =
               {
                  .x = 0x03,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
         { // 0x03
            .offset =
               {
                  .x = 0x05,
                  .y = 0x10
               },
            .offset_y_end = 0x13,
         },
         { // 0x04
            .offset =
               {
                  .x = 0x07,
                  .y = 0x10
               },
            .offset_y_end = 0x13,
         },
         { // 0x05
            .offset =
               {
                  .x = 0x09,
                  .y = 0x10
               },
            .offset_y_end = 0x13,
         },
         { // 0x06
            .offset =
               {
                  .x = 0x0d,
                  .y = 0x0c
               },
            .offset_y_end = 0x12,
         },
         { // 0x07
            .offset =
               {
                  .x = 0x0f,
                  .y = 0x07
               },
            .offset_y_end = 0x0d,
         },
      },
   .elevator_offset =
      {
         {
            .x = 8 * 0x12, // $8b29
            .y = 0x04
         },
         {
            .x = 8 * 0x12,
            .y = 0x042
         }
      },
   .egg_offsets =
      {
         {
            .x = 0x06,
            .y = 0x12
         },
         {
            .x = 0x08,
            .y = 0x12
         },
         {
            .x = 0x0a,
            .y = 0x12
         },
         {
            .x = 0x0f,
            .y = 0x11
         },
         {
            .x = 0x07,
            .y = 0x0d
         },
         { // 0x06
            .x = 0x02,
            .y = 0x02
         },
         {
            .x = 0x07,
            .y = 0x06
         },
         {
            .x = 0x0b,
            .y = 0x09
         },
         {
            .x = 0x10,
            .y = 0x0b
         },
         {
            .x = 0x10,
            .y = 0x07
         },
         {
            .x = 0x0c,
            .y = 0x03
         },
         { // 0x0c
            .x = 0x11,
            .y = 0x01
         },
      },
   .seed_offsets =
      {
         {
            .x = 0x02,
            .y = 0x05
         },
         {
            .x = 0x03,
            .y = 0x0d
         },
         {
            .x = 0x08,
            .y = 0x06
         },
         { // 0x04
            .x = 0x0c,
            .y = 0x11
         },
      },
   .duck_offsets =
      {
         { // 0x01
            .x = 0x0d,
            .y = 0x11
         },
         {
            .x = 0x01,
            .y = 0x0d
         },
         {
            .x = 0x0e,
            .y = 0x07
         },
         {
            .x = 0x00,
            .y = 0x04
         },
         { // 0x5
            .x = 0x02,
            .y = 0x09
         },
      },
   .max_bonus = 7000,
};

static level_t level_classic_eight =
{
   .n_platforms      = 0x0f,
   .n_ladders        = 0x06,
   .elevator         = false,
   .n_eggs           = 0x0c,
   .n_seeds          = 0x10,
   .n_ducks          = 0x03,
   .platform_offsets =
      {
         { // 0x01
            .offset =
               {
                  .y = 0x00,
                  .x = 0x00
               },
            .offset_x_end = 0x13,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x02
               },
            .offset_x_end = 0x04,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x07
               },
            .offset_x_end = 0x0d,
         },
         {
            .offset =
               {
                  .y = 0x04,
                  .x = 0x10
               },
            .offset_x_end = 0x12,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x02
               },
            .offset_x_end = 0x05,
         },
         { // 0x06
            .offset =
               {
                  .y = 0x08,
                  .x = 0x08
               },
            .offset_x_end = 0x0c,
         },
         {
            .offset =
               {
                  .y = 0x08,
                  .x = 0x0f
               },
            .offset_x_end = 0x12,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x03
               },
            .offset_x_end = 0x06,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x09
               },
            .offset_x_end = 0x0b,
         },
         {
            .offset =
               {
                  .y = 0x0c,
                  .x = 0x0e
               },
            .offset_x_end = 0x11,
         },
         {
            .offset =
               {
                  .y = 0x10,
                  .x = 0x03
               },
            .offset_x_end = 0x03,
         },
         { // 0x0c
            .offset =
               {
                  .y = 0x10,
                  .x = 0x06
               },
            .offset_x_end = 0x06,
         },
         { // 0x0d
            .offset =
               {
                  .y = 0x10,
                  .x = 0x08
               },
            .offset_x_end = 0x0c,
         },
         { // 0x0e
            .offset =
               {
                  .y = 0x10,
                  .x = 0x0e
               },
            .offset_x_end = 0x0e,
         },
         { // 0x0f
            .offset =
               {
                  .y = 0x10,
                  .x = 0x11
               },
            .offset_x_end = 0x11,
         },
      },
   .ladder_offsets =
      {
         { // 0x01
            .offset =
               {
                  .x = 0x03,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
         { // 0x02
            .offset =
               {
                  .x = 0x11,
                  .y = 0x01
               },
            .offset_y_end = 0x06,
         },
         { // 0x03
            .offset =
               {
                  .x = 0x0a,
                  .y = 0x05
               },
            .offset_y_end = 0x0a,
         },
         { // 0x04
            .offset =
               {
                  .x = 0x04,
                  .y = 0x09
               },
            .offset_y_end = 0x0e,
         },
         { // 0x05
            .offset =
               {
                  .x = 0x10,
                  .y = 0x09
               },
            .offset_y_end = 0x0e,
         },
         { // 0x06
            .offset =
               {
                  .x = 0x0a,
                  .y = 0x0d
               },
            .offset_y_end = 0x12,
         },
      },
   .egg_offsets =
      {
         {
            .x = 0x05,
            .y = 0x04
         },
         {
            .x = 0x0f,
            .y = 0x04
         },
         {
            .x = 0x06,
            .y = 0x08
         },
         {
            .x = 0x0e,
            .y = 0x08
         },
         {
            .x = 0x08,
            .y = 0x0c
         },
         { // 0x06
            .x = 0x0c,
            .y = 0x0c
         },
         {
            .x = 0x05,
            .y = 0x10
         },
         {
            .x = 0x0f,
            .y = 0x10
         },
         {
            .x = 0x07,
            .y = 0x10
         },
         {
            .x = 0x0d,
            .y = 0x10
         },
         {
            .x = 0x03,
            .y = 0x13
         },
         { // 0x0c
            .x = 0x11,
            .y = 0x13
         },
      },
   .seed_offsets =
      {
         {
            .x = 0x01,
            .y = 0x01
         },
         {
            .x = 0x02,
            .y = 0x01
         },
         {
            .x = 0x04,
            .y = 0x01
         },
         { // 0x04
            .x = 0x05,
            .y = 0x01
         },
         {
            .x = 0x06,
            .y = 0x01
         },
         {
            .x = 0x08,
            .y = 0x01
         },
         {
            .x = 0x09,
            .y = 0x01
         },
         { // 0x08
            .x = 0x0a,
            .y = 0x01
         },
         {
            .x = 0x0b,
            .y = 0x01
         },
         {
            .x = 0x0c,
            .y = 0x01
         },
         {
            .x = 0x0d,
            .y = 0x01
         },
         { // 0x0c
            .x = 0x0e,
            .y = 0x01
         },
         {
            .x = 0x0f,
            .y = 0x01
         },
         {
            .x = 0x10,
            .y = 0x01
         },
         {
            .x = 0x12,
            .y = 0x01
         },
         { // 0x10
            .x = 0x13,
            .y = 0x01
         },
      },
   .duck_offsets =
      {
         { // 0x01
            .x = 0x11,
            .y = 0x01
         },
         {
            .x = 0x0a,
            .y = 0x09
         },
         {
            .x = 0x0a,
            .y = 0x11
         },
         {
            .x = 0x03,
            .y = 0x0d
         },
         { // 0x5
            .x = 0x11,
            .y = 0x0d
         },
      },
   .max_bonus = 8000,
};

static sprite_t platform =
{
   .width  = 0x01,
   .height = 0x08,
   .colour = 0x80,
   // 8x8 pixels
   .sprite =
      {
         0xfb,
         0x00,
         0xbf,
         0x00,
         0xef,
         0x00,
         0x00,
         0x00
      }
};

static sprite_t ladder =
{
   .width  = 0x01,
   .height = 0x08,
   .colour = 0x08,
   // 8x8 pixels
   .sprite =
      {
         0x42,
         0x42,
         0x42,
         0x42,
         0x7e,
         0x42,
         0x42,
         0x42
      }
};

static sprite_t egg =
{
   .width  = 0x01,
   .height = 0x08,
   .colour = 0x88,
   // 8x8 pixels
   .sprite =
      {
         0x00,
         0x38,
         0x6c,
         0x5e,
         0x7e,
         0x7c,
         0x38,
         0x00
      }
};

static sprite_t cage =
{
   .width  = 0x03,
   .height = 0x30,
   .colour = 0x02,
   // 24x48 pixels
   .sprite =
      {
         0x00, 0x38, 0x00,
         0x00, 0x44, 0x00,
         0x00, 0x44, 0x00,
         0x00, 0x44, 0x00,
         0x00, 0x38, 0x00,
         0x00, 0x10, 0x00,
         0x00, 0xfe, 0x00,
         0x03, 0x7d, 0x80,
         0x0c, 0xd6, 0x60,
         0x11, 0x55, 0x10,
         0x22, 0x54, 0x88,
         0x24, 0x92, 0x48,
         0x44, 0x92, 0x44,
         0x48, 0x92, 0x24,
         0x88, 0x92, 0x22,
         0x89, 0x11, 0x22,
         0xd1, 0x11, 0x16,
         0xb1, 0x11, 0x1a,
         0x99, 0x11, 0x32,
         0x97, 0x11, 0xd2,
         0x91, 0xff, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0xd1, 0x11, 0x16,
         0xb1, 0x11, 0x1a,
         0x99, 0x11, 0x32,
         0x97, 0x11, 0xd2,
         0x91, 0xff, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x51, 0x11, 0x14,
         0x31, 0x11, 0x18,
         0x19, 0x11, 0x30,
         0x07, 0x11, 0xc0,
         0x00, 0xfe, 0x00
      }
};

static sprite_t seed =
{
   .width  = 0x01,
   .height = 0x08,
   .colour = 0xa0,
   // 8x8 pixels
   .sprite =
      {
         0x00,
         0x00,
         0x00,
         0x08,
         0x14,
         0x2a,
         0x55,
         0x00
      }
};

// duck facing right straight legs
static sprite_t duck_r =
{
   .width  = 0x01,
   .height = 0x14,
   .colour = 0x20,
   // 8x20 pixels
   .sprite =
      {
         0x0c,
         0x1b,
         0x1c,
         0x08,
         0x08,
         0x04,
         0x04,
         0x02,
         0x32,
         0x7b,
         0x7f,
         0x7f,
         0x7f,
         0x3e,
         0x18,
         0x10,
         0x10,
         0x10,
         0x10,
         0x18
      }
};

// duck facing right spread legs
static sprite_t duck_rs =
{
   .width  = 0x01,
   .height = 0x14,
   .colour = 0x20,
   // 8x20 pixels
   .sprite =
      {
         0x0d,
         0x1a,
         0x1d,
         0x08,
         0x08,
         0x04,
         0x04,
         0x02,
         0x32,
         0x7b,
         0x7f,
         0x7f,
         0x7f,
         0x3e,
         0x18,
         0x28,
         0x28,
         0x44,
         0x45,
         0x22
      }
};

// duck facing left straight legs
static sprite_t duck_l =
{
   .width  = 0x01,
   .height = 0x14,
   .colour = 0x20,
   // 8x20 pixels
   .sprite =
      {
         0x30,
         0xd8,
         0x38,
         0x10,
         0x10,
         0x20,
         0x20,
         0x40,
         0x4c,
         0xde,
         0xfe,
         0xfe,
         0xfe,
         0x7c,
         0x18,
         0x08,
         0x08,
         0x08,
         0x08,
         0x18
      }
};

// duck facing left spread legs
static sprite_t duck_ls =
{
   .width  = 0x01,
   .height = 0x14,
   .colour = 0x20,
   // 8x20 pixels
   .sprite =
      {
         0xb0,
         0x58,
         0xb8,
         0x10,
         0x10,
         0x20,
         0x20,
         0x40,
         0x4c,
         0xde,
         0xfe,
         0xfe,
         0xfe,
         0x7c,
         0x18,
         0x14,
         0x14,
         0x22,
         0xa2,
         0x44
      }
};

// duck back left leg longer
static sprite_t duck_bll =
{
   .width  = 0x01,
   .height = 0x14,
   .colour = 0x20,
   // 8x20 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0x3c,
         0x3c,
         0x18,
         0x18,
         0x18,
         0x3c,
         0x7e,
         0x7e,
         0x7e,
         0x7e,
         0x7e,
         0x3c,
         0x3c,
         0x24,
         0x24,
         0x26,
         0x20,
         0x60
      }
};

// duck back right leg longer
static sprite_t duck_brl =
{
   .width  = 0x01,
   .height = 0x15,
   .colour = 0x20,
   // 8x21 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0x3c,
         0x3c,
         0x18,
         0x18,
         0x18,
         0x3c,
         0x7e,
         0x7e,
         0x7e,
         0x7e,
         0x7e,
         0x3c,
         0x3c,
         0x24,
         0x24,
         0x64,
         0x04,
         0x04,
         0x06
      }
};

// duck right begin stooping
static sprite_t duck_rbs =
{
   .width  = 0x02,
   .height = 0x14,
   .colour = 0x20,
   // 16x20 pixels
   .sprite =
      {
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x38,
         0x30, 0x28,
         0x78, 0x78,
         0x7c, 0xc4,
         0x7f, 0x82,
         0x7f, 0x80,
         0x3f, 0x00,
         0x3f, 0x00,
         0x1f, 0x00,
         0x16, 0x00,
         0x10, 0x00,
         0x10, 0x00,
         0x10, 0x00,
         0x18, 0x00
      }
};

// duck right end stooping
static sprite_t duck_res =
{
   .width  = 0x02,
   .height = 0x14,
   .colour = 0x20,
   // 16x20 pixels
   .sprite =
      {
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x30, 0x00,
         0x78, 0x00,
         0x7c, 0x00,
         0x7e, 0x00,
         0x7f, 0xf8,
         0x3f, 0xf4,
         0x3f, 0x14,
         0x1f, 0x08,
         0x16, 0x08,
         0x10, 0x08,
         0x10, 0x00,
         0x10, 0x00,
         0x18, 0x00
      }
};

// duck left begin stooping
static sprite_t duck_lbs =
{
   .width  = 0x02,
   .height = 0x14,
   .colour = 0x20,
   // 16x20 pixels
   .sprite =
      {
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x1c, 0x00,
         0x14, 0x0c,
         0x1e, 0x1e,
         0x23, 0x3e,
         0x43, 0xfe,
         0x01, 0xfe,
         0x00, 0xfc,
         0x00, 0xfc,
         0x00, 0xf8,
         0x00, 0x68,
         0x00, 0x08,
         0x00, 0x08,
         0x00, 0x08,
         0x00, 0x18
      }
};

// duck left end stooping
static sprite_t duck_les =
{
   .width  = 0x02,
   .height = 0x14,
   .colour = 0x20,
   // 16x20 pixels
   .sprite =
      {
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x0c,
         0x00, 0x1e,
         0x00, 0x3e,
         0x00, 0x7e,
         0x1f, 0xfe,
         0x2f, 0xfc,
         0x28, 0xfc,
         0x10, 0xf8,
         0x10, 0x68,
         0x10, 0x08,
         0x00, 0x08,
         0x00, 0x08,
         0x00, 0x18
      }
};

// chuck right straight legs
static sprite_t chuck_r =
{
   .width  = 0x01,
   .height = 0x10,
   .colour = 0x02,
   // 8x16 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0xff,
         0x34,
         0x3c,
         0x10,
         0x18,
         0x3c,
         0x6e,
         0x6e,
         0x6e,
         0x6e,
         0x3c,
         0x18,
         0x10,
         0x18
      }
};

// chuck right spread legs arm to the right
static sprite_t chuck_rslar =
{
   .width  = 0x01,
   .height = 0x10,
   .colour = 0x02,
   // 8x16 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0xff,
         0x34,
         0x3c,
         0x10,
         0x18,
         0x3c,
         0x6e,
         0x6e,
         0x76,
         0x76,
         0x3c,
         0x38,
         0x4a,
         0x24
      }
};

// chuck right spread legs arm to the left
static sprite_t chuck_rslal =
{
   .width  = 0x01,
   .height = 0x10,
   .colour = 0x02,
   // 8x16 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0xff,
         0x34,
         0x3c,
         0x10,
         0x18,
         0x3c,
         0x6e,
         0x6e,
         0x5e,
         0x5e,
         0x3c,
         0x38,
         0x4a,
         0x24
      }
};

// chuck left straight legs
static sprite_t chuck_l =
{
   .width  = 0x01,
   .height = 0x10,
   .colour = 0x02,
   // 8x16 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0xff,
         0x2c,
         0x3c,
         0x08,
         0x18,
         0x3c,
         0x76,
         0x76,
         0x76,
         0x76,
         0x3c,
         0x18,
         0x08,
         0x18
      }
};

// chuck left spread legs arm to the left
static sprite_t chuck_lslal =
{
   .width  = 0x01,
   .height = 0x10,
   .colour = 0x02,
   // 8x16 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0xff,
         0x2c,
         0x3c,
         0x08,
         0x18,
         0x3c,
         0x76,
         0x76,
         0x6e,
         0x6e,
         0x3c,
         0x1c,
         0x52,
         0x24
      }
};

// chuck left spread legs arm to the right
static sprite_t chuck_lslar =
{
   .width  = 0x01,
   .height = 0x10,
   .colour = 0x02,
   // 8x16 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0xff,
         0x2c,
         0x3c,
         0x08,
         0x18,
         0x3c,
         0x76,
         0x76,
         0x7a,
         0x7a,
         0x3c,
         0x1c,
         0x52,
         0x24
      }
};

// chuck back both arms not visible
static sprite_t chuck_b =
{
   .width  = 0x01,
   .height = 0x10,
   .colour = 0x02,
   // 8x16 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0xff,
         0x3c,
         0x3c,
         0x18,
         0x18,
         0xbd,
         0xff,
         0x7e,
         0x7e,
         0x7e,
         0x3c,
         0x24,
         0x24,
         0x66
      }
};

// chuck back left arm down right arm up
static sprite_t chuck_bldru =
{
   .width  = 0x01,
   .height = 0x12,
   .colour = 0x02,
   // 8x18 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0xff,
         0x3c,
         0x3d,
         0x19,
         0x19,
         0x3d,
         0xff,
         0xfe,
         0xfe,
         0xfe,
         0xbc,
         0x3e,
         0x20,
         0x20,
         0x20,
         0x60
      }
};

// chuck back left arm up right arm down
static sprite_t chuck_blurd =
{
   .width  = 0x01,
   .height = 0x12,
   .colour = 0x02,
   // 8x18 pixels
   .sprite =
      {
         0x18,
         0x3c,
         0xff,
         0x3c,
         0xbc,
         0x98,
         0x98,
         0xbc,
         0xff,
         0x7f,
         0x7f,
         0x7f,
         0x3d,
         0x7c,
         0x04,
         0x04,
         0x04,
         0x06
      }
};

// flying duck right closed beak wing down
static sprite_t flying_duck_rcbwd =
{
   .width  = 0x02,
   .height = 0x18,
   .colour = 0x02,
   // 16x24 pixels
   .sprite =
      {
         0x00, 0x70,
         0x00, 0xf8,
         0x01, 0xe8,
         0x01, 0xef,
         0x01, 0xff,
         0x01, 0xf8,
         0x00, 0xf0,
         0x00, 0xe0,
         0x00, 0x60,
         0x0e, 0x70,
         0x1f, 0x70,
         0x3f, 0xf8,
         0x7f, 0xf8,
         0xff, 0x78,
         0xff, 0xb8,
         0xbf, 0xbc,
         0xbf, 0xbc,
         0xdf, 0xbc,
         0x6f, 0x7c,
         0x76, 0xfc,
         0x39, 0xf8,
         0x1f, 0xf8,
         0x0f, 0xf0,
         0x03, 0xe0
      }
};

// flying duck right spread beak wing up
static sprite_t flying_duck_rsbwu =
{
   .width  = 0x02,
   .height = 0x18,
   .colour = 0x02,
   // 16x24 pixels
   .sprite =
      {
         0x00, 0x70,
         0x00, 0xf9,
         0x01, 0xea,
         0x01, 0xec,
         0x01, 0xfc,
         0x01, 0xfa,
         0x00, 0xf1,
         0x00, 0xe0,
         0x00, 0x60,
         0x0e, 0x70,
         0x1f, 0x70,
         0x3f, 0xf8,
         0x71, 0xf8,
         0xee, 0x78,
         0xdf, 0xb8,
         0xbf, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0x7f, 0xfc,
         0x7f, 0xfc,
         0x3f, 0xf8,
         0x1f, 0xf8,
         0x0f, 0xf0,
         0x03, 0xe0
      }
};

// flying duck left closed beak wing down
static sprite_t flying_duck_lcbwd =
{
   .width  = 0x02,
   .height = 0x18,
   .colour = 0x02,
   // 16x24 pixels
   .sprite =
      {
         0x0e, 0x00,
         0x1f, 0x00,
         0x17, 0x80,
         0xf7, 0x80,
         0xff, 0x80,
         0x1f, 0x80,
         0x0f, 0x00,
         0x07, 0x00,
         0x06, 0x00,
         0x0e, 0x70,
         0x0e, 0xf8,
         0x1f, 0xfc,
         0x1f, 0xfe,
         0x1e, 0xff,
         0x1d, 0xff,
         0x3d, 0xfd,
         0x3d, 0xfd,
         0x3d, 0xfb,
         0x3e, 0xf6,
         0x3f, 0x6e,
         0x1f, 0x9c,
         0x1f, 0xf8,
         0x0f, 0xf0,
         0x07, 0xc0
      }
};

// flying duck left spread beak wing up
static sprite_t flying_duck_lsbwu =
{
   .width  = 0x02,
   .height = 0x18,
   .colour = 0x02,
   // 16x24 pixels
   .sprite =
      {
         0x0e, 0x00,
         0x9f, 0x00,
         0x57, 0x80,
         0x37, 0x80,
         0x3f, 0x80,
         0x5f, 0x80,
         0x8f, 0x00,
         0x07, 0x00,
         0x06, 0x00,
         0x0e, 0x70,
         0x0e, 0xf8,
         0x1f, 0xfc,
         0x1f, 0x8e,
         0x1e, 0x77,
         0x1d, 0xfb,
         0x3f, 0xfd,
         0x3f, 0xff,
         0x3f, 0xff,
         0x3f, 0xfe,
         0x3f, 0xfe,
         0x1f, 0xfc,
         0x1f, 0xf8,
         0x0f, 0xf0,
         0x07, 0xc0
      }
};

// elevator
static sprite_t elevator =
{
   .width  = 0x02,
   .height = 0x06,
   .colour = 0x88,
   // 16x6 pixels
   .sprite =
      {
         0x1f, 0xf8,
         0x1f, 0xf8,
         0x04, 0x20,
         0x0e, 0x70,
         0x1b, 0xd8,
         0x11, 0x88,
      }
};

/* chuck tile x offset to sdl */
static uint16_t tile_x_convert_to_sdl (uint8_t offset)
{
   // 8 pixels per chuck x offset
   return (DOTS_PER_PIXEL_X * 8 * scale * offset);
}

/* chuck tile y offset to sdl */
static uint16_t tile_y_convert_to_sdl (uint8_t offset)
{
   // 8 pixels per chuck y offset
   // plus difference between top and bottom left
   // plus we need to make a room for the sprite
   return (scale * y_res - (DOTS_PER_PIXEL_Y * 8 * scale * (offset + 1)) + 1);
}

/* chuck x offset to sdl */
static uint16_t x_convert_to_sdl (uint8_t x)
{
   return (DOTS_PER_PIXEL_X * scale * x);
}

/* chuck tile y offset to sdl */
static uint16_t y_convert_to_sdl (uint8_t y)
{
   // plus difference between top and bottom left
   // plus we need to make a room for the sprite
   return (scale * y_res - (DOTS_PER_PIXEL_Y * scale * (y + 1)) + 1);
}

static int set_colour (SDL_Renderer *renderer, colour_t colour)
{
   switch (colour)
   {
      case pastel_yellow:
         SDL_SetRenderDrawColor (renderer, 0xff, 0xff, 0x80, 0x00);
         break;
      case bright_magenta:
         SDL_SetRenderDrawColor (renderer, 0xff, 0x00, 0xff, 0x00);
         break;
      case bright_cyan:
         SDL_SetRenderDrawColor (renderer, 0x00, 0xff, 0xff, 0x00);
         break;
      case green:
         SDL_SetRenderDrawColor (renderer, 0x00, 0x80, 0x00, 0x00);
         break;
      case bright_white:
         SDL_SetRenderDrawColor (renderer, 0xff, 0xff, 0xff, 0x00);
         break;
      case bright_red:
         SDL_SetRenderDrawColor (renderer, 0xff, 0x00, 0x00, 0x00);
         break;
      default:
         // black
         SDL_SetRenderDrawColor (renderer, 0x00, 0x00, 0x00, 0x00);
   }

   return 0;
}

static int draw_element (SDL_Renderer *renderer,
                         sprite_t *element,
                         uint16_t x, uint16_t y)
{
   SDL_Rect rect;
   uint16_t i = 0, j = 0, k = 0;
   uint16_t index = 0;
   uint16_t x_backup = x;
   uint8_t mask = 0x80;

   for (i = 0; i < element->height; i++)
   {
      for (j = 0; j < element->width; j++)
      {
         for (k = 0; k < 8; k++)
         {
            if (element->sprite[index] & mask)
            {
               rect.x = x;
               rect.y = y;
               rect.w = DOTS_PER_PIXEL_X * scale;
               rect.h = DOTS_PER_PIXEL_Y * scale;
               SDL_RenderFillRect (renderer, &rect);
            }

            x += DOTS_PER_PIXEL_X * scale;
            mask = mask >> 1;
         }

         mask = 0x80;
         index++;
      }

      x = x_backup;
      y += DOTS_PER_PIXEL_Y * scale;
   }

   return 0;
}

static int draw_platform (SDL_Renderer *renderer,
                          uint16_t x, uint16_t y, uint8_t w)
{
   int i = 0;

   set_colour (renderer, platform.colour);

   for (i = 0; i < w; i++)
   {
      draw_element (renderer, &platform, x, y);
      x += (DOTS_PER_PIXEL_X * 8 * scale);
   }

   return 0;
}

static int draw_ladder (SDL_Renderer *renderer,
                        uint16_t x, uint16_t y, uint8_t h)
{
   int i = 0;

   set_colour (renderer, ladder.colour);

   for (i = 0; i < h; i++)
   {
      draw_element (renderer, &ladder, x, y);
      y -= (DOTS_PER_PIXEL_Y * 8 * scale);
   }

   return 0;
}

static int draw_level (SDL_Renderer *renderer, game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   uint8_t n = 0;
   uint8_t i = 0;
   uint8_t off_x = 0;
   uint8_t off_y = 0;

   // draw platforms first
   for (i = 0; i < game->levels[game->players_context->current_level % 8].n_platforms; i++)
   {
      off_x = game->levels[game->players_context->current_level % 8].platform_offsets[i].offset.x;
      off_y = game->levels[game->players_context->current_level % 8].platform_offsets[i].offset.y;
      x = tile_x_convert_to_sdl (off_x);
      y = tile_y_convert_to_sdl (off_y);
      n = game->levels[game->players_context->current_level % 8].platform_offsets[i].offset_x_end -
          off_x + 1;
      draw_platform (renderer, x, y, n);
      for (int j = 0; j < n; j++)
         game->players_context->sandbox[off_y][off_x + j] = 0x01;
   }

   // next draw ladders
   for (i = 0; i < game->levels[game->players_context->current_level % 8].n_ladders; i++)
   {
      off_x = game->levels[game->players_context->current_level % 8].ladder_offsets[i].offset.x;
      off_y = game->levels[game->players_context->current_level % 8].ladder_offsets[i].offset.y;
      x = tile_x_convert_to_sdl (off_x);
      y = tile_y_convert_to_sdl (off_y);
      n = game->levels[game->players_context->current_level % 8].ladder_offsets[i].offset_y_end -
          off_y + 1;
      draw_ladder (renderer, x, y, n);
      for (int j = 0; j < n; j++)
      {
         if (game->players_context->sandbox[off_y+j][off_x] == 0x01)
            game->players_context->sandbox[off_y+j][off_x] = 0x03;
         else
            game->players_context->sandbox[off_y+j][off_x] = 0x02;
      }
   }

   // next draw eggs
   for (i = 0; i < game->levels[game->players_context->current_level % 8].n_eggs; i++)
   {
      off_x = game->levels[game->players_context->current_level % 8].egg_offsets[i].x;
      off_y = game->levels[game->players_context->current_level % 8].egg_offsets[i].y;
      x = tile_x_convert_to_sdl (off_x);
      y = tile_y_convert_to_sdl (off_y);
      set_colour (renderer, egg.colour);
      draw_element (renderer, &egg, x, y);
      game->players_context->sandbox[off_y][off_x] = 0x04 + i * 0x10;
   }

   // next draw seeds
   for (i = 0; i < game->levels[game->players_context->current_level % 8].n_seeds; i++)
   {
      if (game->seed_state[i].present == true)
      {
         off_x = game->seed_state[i].tile_offset.x;
         off_y = game->seed_state[i].tile_offset.y;
         x = tile_x_convert_to_sdl (off_x);
         y = tile_y_convert_to_sdl (off_y);
         set_colour (renderer, seed.colour);
         draw_element (renderer, &seed, x, y);
         game->players_context->sandbox[off_y][off_x] = 0x08 + i * 0x10;
      }
   }

   // next draw cage
   x = x_convert_to_sdl (0x00);
   y = y_convert_to_sdl (0xae);
   set_colour (renderer, cage.colour);
   draw_element (renderer, &cage, x, y);

   return 0;
}

static int draw_ducks (SDL_Renderer *renderer, game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   uint8_t i = 0;
   uint8_t n_ducks = 0;
   uint8_t off_x = 0;
   uint8_t off_y = 0;

   set_colour (renderer, duck_r.colour);

   n_ducks = game->ducks_state.n_ducks;
   for (i = 0; i < n_ducks; i++)
   {
      off_x = game->ducks_state.ducks_state[i].gfx_offset.x;
      off_y = game->ducks_state.ducks_state[i].gfx_offset.y;
      x = x_convert_to_sdl (off_x);
      y = y_convert_to_sdl (off_y);
      switch (game->ducks_state.ducks_state[i].direction)
      {
         case right:
            if (game->ducks_state.ducks_state[i].sprite_state == 0)
               draw_element (renderer, &duck_r, x, y);
            else if (game->ducks_state.ducks_state[i].sprite_state == 1)
               draw_element (renderer, &duck_rs, x, y);
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_half_stoop_start)
               draw_element (renderer, &duck_rbs, x, y);
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_stoop)
               draw_element (renderer, &duck_res, x, y);
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_half_stoop_end)
               draw_element (renderer, &duck_rbs, x, y);
            break;
         case left:
            if (game->ducks_state.ducks_state[i].sprite_state == 0)
               draw_element (renderer, &duck_l, x, y);
            else if (game->ducks_state.ducks_state[i].sprite_state == 1)
               draw_element (renderer, &duck_ls, x, y);
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_half_stoop_start)
               draw_element (renderer, &duck_lbs, x - x_convert_to_sdl (8), y);
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_stoop)
               draw_element (renderer, &duck_les, x - x_convert_to_sdl (8), y);
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_half_stoop_end)
               draw_element (renderer, &duck_lbs, x - x_convert_to_sdl (8), y);
            break;
         case up:
            if (game->ducks_state.ducks_state[i].sprite_state == 0)
               draw_element (renderer, &duck_brl, x, y);
            else if (game->ducks_state.ducks_state[i].sprite_state == 1)
               draw_element (renderer, &duck_bll, x, y);
            break;
         case down:
            if (game->ducks_state.ducks_state[i].sprite_state == 0)
               draw_element (renderer, &duck_brl, x, y);
            else if (game->ducks_state.ducks_state[i].sprite_state == 1)
               draw_element (renderer, &duck_bll, x, y);
            break;
      }
   }

   return 0;
}

static int draw_flying_duck (SDL_Renderer *renderer, game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   uint8_t off_x = 0;
   uint8_t off_y = 0;

   set_colour (renderer, flying_duck_rcbwd.colour);
   off_x = game->flying_duck_state.tile_offset.x;
   off_y = game->flying_duck_state.tile_offset.y;
   x = x_convert_to_sdl (off_x);
   y = y_convert_to_sdl (off_y);
   switch (game->flying_duck_state.direction)
   {
      case right:
         if (game->flying_duck_state.sprite_state == 0)
            draw_element (renderer, &flying_duck_rcbwd, x, y);
         else if (game->flying_duck_state.sprite_state == 1)
            draw_element (renderer, &flying_duck_rsbwu, x, y);
         break;
      case left:
         if (game->flying_duck_state.sprite_state == 0)
            draw_element (renderer, &flying_duck_lcbwd, x, y);
         else if (game->flying_duck_state.sprite_state == 1)
            draw_element (renderer, &flying_duck_lsbwu, x, y);
         break;
   }

   return 0;
}

static void set_chuck_gfx_off_x (game_context_t *game, uint8_t off)
{
   game->chuck_state.el.gfx_offset.x = off;
}

static uint8_t get_chuck_gfx_off_x (game_context_t *game)
{
   return game->chuck_state.el.gfx_offset.x;
}

static void set_chuck_gfx_off_y (game_context_t *game, uint8_t off)
{
   game->chuck_state.el.gfx_offset.y = off;
}

static uint8_t get_chuck_gfx_off_y (game_context_t *game)
{
   return game->chuck_state.el.gfx_offset.y;
}

static void set_chuck_tile_rel_off_x (game_context_t *game, uint8_t off)
{
   game->chuck_state.tile_rel_off_x = off;
}

static uint8_t get_chuck_tile_rel_off_x (game_context_t *game)
{
   return game->chuck_state.tile_rel_off_x;
}

static void set_chuck_tile_rel_off_y (game_context_t *game, uint8_t off)
{
   game->chuck_state.tile_rel_off_y = off;
}

static uint8_t get_chuck_tile_rel_off_y (game_context_t *game)
{
   return game->chuck_state.tile_rel_off_y;
}

static void set_chuck_tile_off_x (game_context_t *game, uint8_t off)
{
   game->chuck_state.el.tile_offset.x = off;
}

static uint8_t get_chuck_tile_off_x (game_context_t *game)
{
   return game->chuck_state.el.tile_offset.x;
}

static void set_chuck_tile_off_y (game_context_t *game, uint8_t off)
{
   game->chuck_state.el.tile_offset.y = off;
}

static uint8_t get_chuck_tile_off_y (game_context_t *game)
{
   return game->chuck_state.el.tile_offset.y;
}

static void set_chuck_dvx (game_context_t *game, uint8_t off)
{
   game->chuck_state.dvx = off;
}

static uint8_t get_chuck_dvx (game_context_t *game)
{
   return game->chuck_state.dvx;
}

static void set_chuck_dvy (game_context_t *game, uint8_t off)
{
   game->chuck_state.dvy = off;
}

static uint8_t get_chuck_dvy (game_context_t *game)
{
   return game->chuck_state.dvy;
}

static void calc_chuck_dv (game_context_t *game)
{
   if (game->chuck_state.vertical_counter < 4)
   {
      set_chuck_dvx (game, 1);
      set_chuck_dvy (game, 1);
   }
   else if ((game->chuck_state.vertical_counter >= 4) &&
            (game->chuck_state.vertical_counter < 8))
   {
      set_chuck_dvx (game, 0);
      set_chuck_dvy (game, 2);
   }
   else if ((game->chuck_state.vertical_counter >= 8) &&
            (game->chuck_state.vertical_counter < 12))
   {
      set_chuck_dvx (game, 0);
      set_chuck_dvy (game, 3);
   }
   else if (game->chuck_state.vertical_counter >= 12)
   {
      set_chuck_dvx (game, 0);
      set_chuck_dvy (game, 4);
   }
}

static void adjust_chuck_dvy (game_context_t *game, uint8_t tile_rel_y)
{
   set_chuck_dvy (game, tile_rel_y);
}

static int animate_chuck_fall (SDL_Renderer *renderer, game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   int8_t gfx_x = 0;
   int16_t gfx_y = 0;
   int8_t tile_rel_x = 0;
   int8_t tile_rel_y = 0;

   if (game->chuck_state.vertical_state != falling)
      return 0;
 
   gfx_x = get_chuck_gfx_off_x (game);
   gfx_y = get_chuck_gfx_off_y (game);
   tile_rel_x = get_chuck_tile_rel_off_x (game);
   tile_rel_y = get_chuck_tile_rel_off_y (game);

   gfx_y -= get_chuck_dvy (game);
   tile_rel_y -= get_chuck_dvy (game);
   if (game->chuck_state.el.direction == left)
   {
      gfx_x -= get_chuck_dvx (game);
      tile_rel_x -= get_chuck_dvx (game);
   }
   else if (game->chuck_state.el.direction == right)
   {
      gfx_x += get_chuck_dvx (game);
      tile_rel_x += get_chuck_dvx (game);
   }

   if (gfx_y < 0x10)
      // height of the chuck sprite
      // this would also be condition for lost life
      gfx_y = 0x10;
   if (tile_rel_x < 0)
   {
      tile_rel_x = 7;
      set_chuck_tile_off_x (game, get_chuck_tile_off_x (game) - 1);
   }
   if (tile_rel_x > 7)
   {
      tile_rel_x = 0;
      set_chuck_tile_off_x (game, get_chuck_tile_off_x (game) + 1);
   }
   if (tile_rel_y < 0)
   {
      tile_rel_y = 8 + tile_rel_y;
      set_chuck_tile_off_y (game, get_chuck_tile_off_y (game) - 1);
   }

   x = x_convert_to_sdl (gfx_x);
   y = y_convert_to_sdl (gfx_y);
   if (game->chuck_state.el.direction == left)
      draw_element (renderer, &chuck_l, x, y);
   else if (game->chuck_state.el.direction == right)
      draw_element (renderer, &chuck_r, x, y);

   set_chuck_gfx_off_x (game, gfx_x);
   set_chuck_gfx_off_y (game, gfx_y);
   set_chuck_tile_rel_off_x (game, tile_rel_x);
   set_chuck_tile_rel_off_y (game, tile_rel_y);
   game->chuck_state.vertical_counter++; 
   calc_chuck_dv (game);
   if (game->players_context->sandbox[get_chuck_tile_off_y (game) - 1][get_chuck_tile_off_x (game)] & 0x1)
      if (tile_rel_y < 4)
         adjust_chuck_dvy (game, tile_rel_y);

   // check if the fall should stop or life lost
   if ((tile_rel_y == 0) && (game->players_context->sandbox[get_chuck_tile_off_y (game) - 1][get_chuck_tile_off_x (game)] & 0x1))
      game->chuck_state.vertical_state = 0;

   return 0;
}

static int draw_chuck (SDL_Renderer *renderer, game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;

   if (game->chuck_state.vertical_state == falling)
      return 0;

   x = x_convert_to_sdl (game->chuck_state.el.gfx_offset.x);
   y = y_convert_to_sdl (game->chuck_state.el.gfx_offset.y);

   switch (game->chuck_state.el.sprite_state)
   {
      case chuck_standing_one:
      case chuck_standing_two:
      case chuck_standing_three:
      case chuck_standing_four:
      case chuck_standing_five:
      case chuck_standing_six:
      case chuck_standing_seven:
      case chuck_standing_eight:
         if (game->chuck_state.el.direction == right)
            draw_element (renderer, &chuck_r, x, y);
         else if (game->chuck_state.el.direction == left)
            draw_element (renderer, &chuck_l, x, y);
         break;
      case chuck_running_right_arm_one:
      case chuck_running_right_arm_two:
         if (game->chuck_state.el.direction == right)
            draw_element (renderer, &chuck_rslar, x, y);
         else if (game->chuck_state.el.direction == left)
            draw_element (renderer, &chuck_lslar, x, y);
         break;
      case chuck_running_left_arm_one:
      case chuck_running_left_arm_two:
         if (game->chuck_state.el.direction == right)
            draw_element (renderer, &chuck_rslal, x, y);
         else if (game->chuck_state.el.direction == left)
            draw_element (renderer, &chuck_lslal, x, y);
         break;
      case chuck_back_one:
      case chuck_back_two:
      case chuck_back_three:
      case chuck_back_four:
      case chuck_back_five:
         draw_element (renderer, &chuck_b, x, y);
         break;
      case chuck_back_left_arm:
         draw_element (renderer, &chuck_blurd, x, y);
         break;
      case chuck_back_right_arm:
         draw_element (renderer, &chuck_bldru, x, y);
         break;
   }

   if ((game->chuck_state.el.sprite_state == chuck_running_right_arm_one) ||
       (game->chuck_state.el.sprite_state == chuck_running_right_arm_two) ||
       (game->chuck_state.el.sprite_state == chuck_running_left_arm_one)  ||
       (game->chuck_state.el.sprite_state == chuck_running_left_arm_two))
      game->chuck_state.el.sprite_state += 1;

   if ((game->chuck_state.el.sprite_state == chuck_back_left_arm) ||
       (game->chuck_state.el.sprite_state == chuck_back_right_arm))
      game->chuck_state.el.sprite_state += 1;

   return 0;
}

static int draw_elevator (SDL_Renderer *renderer, game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   uint8_t off_x = 0;
   uint8_t off_y = 0;
   uint8_t i = 0;

   set_colour (renderer, elevator.colour);

   for (i = 0; i < N_PADDLES; i++)
   {
      off_x = game->elevator_state[i].tile_offset.x;
      off_y = game->elevator_state[i].tile_offset.y;
      x = x_convert_to_sdl (off_x);
      y = y_convert_to_sdl (off_y);
      draw_element (renderer, &elevator, x, y);
   }

   return 0;
}

static int move_flying_duck (game_context_t *game)
{
   static uint8_t wait = 8;

   if (wait == 0)
   {
      wait = 8;
      game->flying_duck_state.sprite_state = (game->flying_duck_state.sprite_state + 1) % 2;
   }

   wait--;

   return 0;
}

static int move_elevator (game_context_t *game)
{
   static uint8_t wait = 4;

   if (wait == 0)
   {
      wait = 4;
      game->elevator_state[0].tile_offset.y += 2;
      if (game->elevator_state[0].tile_offset.y > 0xae)
         game->elevator_state[0].tile_offset.y = 4;
      game->elevator_state[1].tile_offset.y += 2;
      if (game->elevator_state[1].tile_offset.y > 0xae)
         game->elevator_state[1].tile_offset.y = 4;
   }

   wait--;

   return 0;
}

static uint8_t randomizer (game_context_t *game)
{
   uint8_t a = 0;
   uint8_t c = 0;
   uint8_t cp = 0;

   a = game->random.byte[0];
   a &= 0x48;
   a += 0x38;
   a = a << 1;
   c = (a & 0x80) >> 7;
   a = a << 1;

   cp = (game->random.byte[3] & 0x80) >> 7;
   game->random.byte[3] <<= 1;
   game->random.byte[3] |= c;
   c = cp;

   cp = (game->random.byte[2] & 0x80) >> 7;
   game->random.byte[2] <<= 1;
   game->random.byte[2] |= c;
   c = cp;

   cp = (game->random.byte[1] & 0x80) >> 7;
   game->random.byte[1] <<= 1;
   game->random.byte[1] |= c;
   c = cp;

   cp = (game->random.byte[0] & 0x80) >> 7;
   game->random.byte[0] <<= 1;
   game->random.byte[0] |= c;

   return game->random.byte[0];
}

// every finished 16 levels time drops by 100
static uint16_t calc_level_time (uint8_t level)
{
   int16_t time;

   time = 900 - 100 * (level / 16);
   // limit to 100
   if (time <= 0)
      time = 100;

   return time;
}

static uint8_t adjust_n_ducks (uint8_t n_ducks, uint8_t level)
{
   if ((level >= 8) && (level <= 15))
      return 0;
   if (level >= 24)
      return 5;

   return n_ducks;
}

#if 0 // todo enable when time is ripe
static bool flying_duck_out_of_cage (uint8_t level)
{
   if (level >= 8)
      return true;

   return false;
}
#endif

static uint8_t adjust_duck_speed (uint8_t level, uint8_t speed)
{
   if (level >= 32)
      return 5;

   return speed;
}

static int init_game_context (game_context_t *game, uint8_t level)
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

   // initialize chuck state
   game->chuck_state.el.gfx_offset.x = 0x3c;
   game->chuck_state.el.gfx_offset.y = 0x18;
   game->chuck_state.el.tile_offset.x = 0x7;
   game->chuck_state.el.tile_offset.y = 0x1;
   game->chuck_state.el.direction = right;
   game->chuck_state.el.sprite_state = chuck_standing_one;
   game->chuck_state.tile_rel_off_x = on_the_right_edge;
   game->chuck_state.tile_rel_off_y = on_the_bottom_edge;
   game->chuck_state.vertical_state = 0;
   game->chuck_state.vertical_counter = 0;

   // radnom number for duck movements
   game->random.number = 0x76767676;

   // clear the sandbox
   memset (game->players_context->sandbox, 0, OFFSET_X_MAX * OFFSET_Y_MAX);

   return 0;
}

static uint8_t number_of_moves (uint8_t moves)
{
   uint8_t count = 0;

   for (int i = 0; i < 4; i++)
   {
      if (moves & 0x1)
         count++;
      moves >>= 1;
   }

   return count;
}

static int move_duck (game_context_t *game)
{
   int index = 0;
   uint8_t x = 0;
   uint8_t y = 0;
   uint8_t moves = 0;
   uint8_t random = 0;
   uint8_t direction = 0;

   if (game->ducks_state.duck_to_move > game->ducks_state.n_ducks)
   {
      game->ducks_state.duck_to_move--;
      return 0;
   }

   index = game->ducks_state.duck_to_move - 1;
   game->ducks_state.duck_to_move--;
   if (game->ducks_state.duck_to_move == 0)
      game->ducks_state.duck_to_move = adjust_duck_speed (game->players_context->current_level, 8);

   x = game->ducks_state.ducks_state[index].tile_offset.x;
   y = game->ducks_state.ducks_state[index].tile_offset.y;

   // is duck with spread legs ?
   if (game->ducks_state.ducks_state[index].sprite_state == 0x01)
   {
      // just move in the same direction as previous move
      moves = game->ducks_state.ducks_state[index].direction;
      goto one_move;
   }

   // clear the seed
   if (game->ducks_state.ducks_state[index].sprite_state == duck_stoop)
   {
      if (game->ducks_state.ducks_state[index].direction == right)
      {
         game->seed_state[game->players_context->sandbox[y][x + 1] >> 4].present = false;
         game->players_context->sandbox[y][x + 1] = 0;
      }
      else
      {
         game->seed_state[game->players_context->sandbox[y][x - 1] >> 4].present = false;
         game->players_context->sandbox[y][x - 1] = 0;
      }
   }

   // is seed collection animation over ?
   if (game->ducks_state.ducks_state[index].sprite_state == duck_half_stoop_end)
   {
      // the seed is collected and animation is over, reset to upstraight position
      game->ducks_state.ducks_state[index].sprite_state = 0;
      return 0;
   }
   // is duck collecting seed ?
   if (game->ducks_state.ducks_state[index].sprite_state >= duck_half_stoop_start)
   {
      game->ducks_state.ducks_state[index].sprite_state <<= 1;
      return 0;
   }

   // can move left (either platform or ladder over platform) ?
   if ((y >= 1) && (x >= 1))
   {
      if ((game->players_context->sandbox[y - 1][x - 1] == 0x01) ||
          (game->players_context->sandbox[y - 1][x - 1] == 0x03))
         moves |= left;
   }
   // can move right (either platform or ladder over platform) ?
   if ((y >= 1) && (x < 0x13))
   {
      if ((game->players_context->sandbox[y - 1][x + 1] == 0x01) ||
          (game->players_context->sandbox[y - 1][x + 1] == 0x03))
         moves |= right;
   }
   // can move up (either ladder or ladder over platform) ?
   if (x < 0x14)
   {
      if ((game->players_context->sandbox[y + 2][x] == 0x02) ||
          (game->players_context->sandbox[y + 2][x] == 0x03))
         moves |= up;
   }
   // can move down (either ladder or ladder over platform) ?
   if ((y >= 1) && (x < 0x14))
   {
      if ((game->players_context->sandbox[y - 1][x] == 0x02) ||
          (game->players_context->sandbox[y - 1][x] == 0x03))
         moves |= down;
   }

   if (number_of_moves (moves) == 1)
      goto one_move;

   // filter out impossible moves
   direction = game->ducks_state.ducks_state[index].direction;
   if (direction >= 4)
      direction ^= 0xf3;
   else
      direction ^= 0xfc;
   moves &= direction;

   assert (moves != 0);

   if (number_of_moves (moves) > 1)
   {
      // randomize
      do
      {
         random = randomizer (game);
         random &= moves;
      } while (number_of_moves (random) != 1);
      moves = random;
   }

   assert (moves != 0);
one_move:
   switch (moves)
   {
      case up:
         game->ducks_state.ducks_state[index].sprite_state ^= 1;
         game->ducks_state.ducks_state[index].gfx_offset.y += 4;
         if (game->ducks_state.ducks_state[index].direction != up)
            game->ducks_state.ducks_state[index].direction = up;
         break;
      case down:
         game->ducks_state.ducks_state[index].sprite_state ^= 1;
         game->ducks_state.ducks_state[index].gfx_offset.y -= 4;
         if (game->ducks_state.ducks_state[index].direction != down)
            game->ducks_state.ducks_state[index].direction = down;
         break;
      case right:
         if (game->ducks_state.ducks_state[index].direction != right)
            game->ducks_state.ducks_state[index].direction = right;
         // check if a seed is in the way
         if ((game->players_context->sandbox[y][x + 1] & 0x08))
            game->ducks_state.ducks_state[index].sprite_state = duck_half_stoop_start;
         else
         {
            game->ducks_state.ducks_state[index].sprite_state ^= 1;
            game->ducks_state.ducks_state[index].gfx_offset.x += 4;
         }
         break;
      case left:
         if (game->ducks_state.ducks_state[index].direction != left)
            game->ducks_state.ducks_state[index].direction = left;
         // check if a seed is in the way
         if ((game->players_context->sandbox[y][x - 1] & 0x08) && (game->ducks_state.ducks_state[index].sprite_state == 0))
            game->ducks_state.ducks_state[index].sprite_state = duck_half_stoop_start;
         else
         {
            game->ducks_state.ducks_state[index].sprite_state ^= 1;
            game->ducks_state.ducks_state[index].gfx_offset.x -= 4;
         }
         break;
      default:
         fprintf (stderr, "Hmm, moves %x\n", moves);
   }

   game->ducks_state.ducks_state[index].tile_offset.x = game->ducks_state.ducks_state[index].gfx_offset.x / 8;
   game->ducks_state.ducks_state[index].tile_offset.y = (game->ducks_state.ducks_state[index].gfx_offset.y - 0x14) / 8;

   return 0;
}

static uint8_t get_sandbox (game_context_t *game, uint8_t x, uint8_t y)
{
   return (game->players_context->sandbox[y][x]);
}

static void reset_chuck_vertical_state (game_context_t *game)
{
   game->chuck_state.vertical_state = falling;

   // these checks are needed due to the fact that the platform is 8
   //    pixels long, which means there is no middle
   // so in the case of left fall we lend on tile relative offset 4,
   //    while in the case or right fall we lend on the offset 3
   // this offset should really be 2, so then we have simmetry in both
   //    the falls
   if (game->chuck_state.el.direction == left)
      game->chuck_state.vertical_counter = 1;
   else if (game->chuck_state.el.direction == right)
      game->chuck_state.vertical_counter = 2;

   calc_chuck_dv (game);
}

static int move_chuck (game_context_t *game, direction_t dir)
{
   // if falling then chuck can't move
   if (game->chuck_state.vertical_state == falling)
      return 0;

   if (dir == left)
   {
      if (game->chuck_state.vertical_state == on_ladder)
      {
         if (game->chuck_state.tile_rel_off_y != 0)
            return 0;
         if ((get_sandbox (game, get_chuck_tile_off_x (game),
                           get_chuck_tile_off_y (game) - 1) & 0x1) != 1)
            return 0;
      }

      game->chuck_state.el.gfx_offset.x -= 1;
      game->chuck_state.tile_rel_off_x -= 1;
      game->chuck_state.vertical_state = horizontal;
      if (game->chuck_state.el.gfx_offset.x == 0xff)
      {
         game->chuck_state.el.gfx_offset.x = 0;
         game->chuck_state.tile_rel_off_x = in_the_middle;
      }
      if (game->chuck_state.tile_rel_off_x == 0xff)
      {
         game->chuck_state.el.tile_offset.x -= 1;
         game->chuck_state.tile_rel_off_x = on_the_right_edge;
         if ((get_sandbox (game, get_chuck_tile_off_x (game),
                           get_chuck_tile_off_y (game) - 1) & 0x1) == 0)
         {
            // we are entering the fall
            reset_chuck_vertical_state (game);
            return 0;
         }
      }

      if (game->chuck_state.el.direction == left)
      {
         game->chuck_state.el.sprite_state += 1;
         if (game->chuck_state.el.sprite_state > chuck_max)
            game->chuck_state.el.sprite_state = chuck_standing_one;
      }
      else
      {
         game->chuck_state.el.sprite_state = chuck_standing_one;
         game->chuck_state.el.direction = left;
      }

      return 0;
   }

   if (dir == right)
   {
      if (game->chuck_state.vertical_state == on_ladder)
      {
         if (game->chuck_state.tile_rel_off_y != 0)
            return 0;
         if ((get_sandbox (game, get_chuck_tile_off_x (game),
                           get_chuck_tile_off_y (game) - 1) & 0x1) != 1)
            return 0;
      }

      game->chuck_state.el.gfx_offset.x += 1;
      game->chuck_state.tile_rel_off_x += 1;
      game->chuck_state.vertical_state = horizontal;
      if (game->chuck_state.el.gfx_offset.x > 152)
      {
         game->chuck_state.el.gfx_offset.x = 152;
         game->chuck_state.tile_rel_off_x = in_the_middle;
      }
      if (game->chuck_state.tile_rel_off_x == 8)
      {
         game->chuck_state.el.tile_offset.x += 1;
         game->chuck_state.tile_rel_off_x = on_the_left_edge;
         if ((get_sandbox (game, get_chuck_tile_off_x (game),
                           get_chuck_tile_off_y (game) - 1) & 0x1) == 0)
         {
            // we are entering the fall
            reset_chuck_vertical_state (game);
            return 0;
         }
      }

      if (game->chuck_state.el.direction == right)
      {
         game->chuck_state.el.sprite_state += 1;
         if (game->chuck_state.el.sprite_state > chuck_max)
            game->chuck_state.el.sprite_state = chuck_standing_one;
      }
      else
      {
         game->chuck_state.el.sprite_state = chuck_standing_one;
         game->chuck_state.el.direction = right;
      }

      return 0;
   }

   if (dir == up)
   {
      // first check if we are in the middle of the tile
      if (game->chuck_state.tile_rel_off_x == in_the_middle)
      {
         // is there ladder
         if (get_sandbox (game, get_chuck_tile_off_x (game),
                          get_chuck_tile_off_y (game) + 2) & 0x2)
         {
            game->chuck_state.el.gfx_offset.y += 2;
            game->chuck_state.tile_rel_off_y += 2;
            game->chuck_state.vertical_state = on_ladder;
            if (game->chuck_state.tile_rel_off_y > on_the_top_edge)
            {
               game->chuck_state.el.tile_offset.y += 1;
               game->chuck_state.tile_rel_off_y = on_the_bottom_edge;
            }

            if (game->chuck_state.el.direction == up)
            {
               game->chuck_state.el.sprite_state += 1;
               if (game->chuck_state.el.sprite_state > chuck_back_max)
                  game->chuck_state.el.sprite_state = chuck_back_one;
            }
            else
            {
               game->chuck_state.el.sprite_state = chuck_back_one;
               game->chuck_state.el.direction = up;
            }
         }
      }

      return 0;
   }

   if (dir == down)
   {
      // first check if we are in the middle of the tile
      if (game->chuck_state.tile_rel_off_x == in_the_middle)
      {
         // is there ladder
         if (((get_sandbox (game, get_chuck_tile_off_x (game),
                            get_chuck_tile_off_y (game) - 1) & 0x2) &&
              (get_chuck_tile_rel_off_y (game) == on_the_bottom_edge))
             ||
             ((game->chuck_state.vertical_state == on_ladder) &&
              (get_chuck_tile_rel_off_y (game) != on_the_bottom_edge)))
         {
            game->chuck_state.el.gfx_offset.y -= 2;
            game->chuck_state.tile_rel_off_y -= 2;
            game->chuck_state.vertical_state = on_ladder;
            if (game->chuck_state.tile_rel_off_y == 0xfe)
            {
               game->chuck_state.el.tile_offset.y -= 1;
               game->chuck_state.tile_rel_off_y = on_the_top_edge;
            }

            if (game->chuck_state.el.direction == down)
            {
               game->chuck_state.el.sprite_state += 1;
               if (game->chuck_state.el.sprite_state > chuck_back_max)
                  game->chuck_state.el.sprite_state = chuck_back_one;
            }
            else
            {
               game->chuck_state.el.sprite_state = chuck_back_one;
               game->chuck_state.el.direction = down;
            }
         }
      }

      return 0;
   }

   return 0;
}

int main (void)
{
   SDL_Window *win = NULL;
   SDL_Renderer *renderer = NULL;
   SDL_bool loopShouldStop = SDL_FALSE;
   struct timespec delay =
   {
      .tv_sec = 0,
      .tv_nsec = 50000000,
   };

   player_context_t player_1;
   game_context_t game;
   bool dump_sandbox = true;

   int width = x_res * scale, height = y_res * scale;

   if (-1 == SDL_Init (SDL_INIT_VIDEO | SDL_INIT_AUDIO))
   {
      fprintf (stderr, "could not initialize SDL: %s\n", SDL_GetError ());
		exit (EXIT_FAILURE);
   }

   win = SDL_CreateWindow ("Chuckie Egg", SDL_WINDOWPOS_UNDEFINED,
                           SDL_WINDOWPOS_UNDEFINED, width, height, 0);

   renderer = SDL_CreateRenderer (win, -1, SDL_RENDERER_ACCELERATED);

   memset (&game, 0, sizeof (game));
   game.number_of_players = 1;
   game.players_context = &player_1;
   game.levels[0] = level_classic_one;
   game.levels[1] = level_classic_two;
   game.levels[2] = level_classic_three;
   game.levels[3] = level_classic_four;
   game.levels[4] = level_classic_five;
   game.levels[5] = level_classic_six;
   game.levels[6] = level_classic_seven;
   game.levels[7] = level_classic_eight;

   memset (&player_1, 0, sizeof (player_1));
   player_1.current_player = 1;
   player_1.current_level = 0;
   player_1.score = 0;
   player_1.time = calc_level_time (player_1.current_level);
   player_1.bonus = level_classic_three.max_bonus;
   player_1.lives = 5;

   init_game_context (&game, player_1.current_level);

   while (!loopShouldStop)
   {
      SDL_SetRenderDrawColor (renderer, 0x0, 0x0, 0x0, 0x00);
      SDL_RenderClear (renderer);
      draw_level (renderer, &game);
      draw_ducks (renderer, &game);
      draw_flying_duck (renderer, &game);
      draw_chuck (renderer, &game);
      animate_chuck_fall (renderer, &game);
      if (game.levels[player_1.current_level % 8].elevator == true)
         draw_elevator (renderer, &game);

      if (dump_sandbox == true)
      {
         for (int i = OFFSET_Y_MAX - 1; i >= 0; i--)
         {
            for (int j = 0; j < OFFSET_X_MAX; j++)
               printf ("%2x ", game.players_context->sandbox[i][j]);
            printf ("\n");
         }
         dump_sandbox = false;
      }

      // show it in the window
      SDL_RenderPresent (renderer);

      SDL_Event event;
      while (SDL_PollEvent (&event))
      {
         switch (event.type)
         {
            case SDL_QUIT:
               loopShouldStop = SDL_TRUE;
               break;
            case SDL_KEYDOWN:
               //if (event.key.repeat == 0)
               {
                  if (event.key.keysym.scancode == SDL_SCANCODE_LEFT)
                     move_chuck (&game, left);
                  if (event.key.keysym.scancode == SDL_SCANCODE_RIGHT)
                     move_chuck (&game, right);
                  if (event.key.keysym.scancode == SDL_SCANCODE_UP)
                     move_chuck (&game, up);
                  if (event.key.keysym.scancode == SDL_SCANCODE_DOWN)
                     move_chuck (&game, down);
               }
               if (event.key.keysym.scancode == SDL_SCANCODE_SPACE)
               {
                  player_1.current_level++;
                  init_game_context (&game, player_1.current_level);
                  dump_sandbox = true;
               }
               break;
         }
      }
      move_duck (&game);
      move_flying_duck (&game);
      move_elevator (&game);
      nanosleep (&delay, NULL);
   }

   SDL_DestroyRenderer (renderer);
   SDL_DestroyWindow (win);
   SDL_Quit ();

   return (EXIT_SUCCESS);
}
