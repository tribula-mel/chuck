#include <inttypes.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#include <SDL2/SDL.h>

// number of eggs is 0xc (design by original game)
#define MAX_N_EGGS   (0xc)
// number of ducks is 0x5 (design by original game)
#define MAX_N_DUCKS  (0x5)

// the below by necessity (c language thingy)
// number of platforms
#define MAX_N_PLATFORMS  (0x1a)
// number of ladders
#define MAX_N_LADDERS    (0x09)
// number of seed
#define MAX_N_SEED       (0x10)
// two paddles for elevator
#define N_PADDLES        (0x02)

// running the game in original resolution would result in tiny graphics
// for now this will be hard coded
static const uint8_t scale = 2;

#define DOTS_PER_PIXEL_X (4)
#define DOTS_PER_PIXEL_Y (2)

// original game on cpc464 ran in mode 0
static const uint16_t x_res = DOTS_PER_PIXEL_X * 160;
static const uint16_t y_res = DOTS_PER_PIXEL_Y * 200;

typedef enum {
   pastel_yellow = 0x02,
   bright_magenta = 0x08,
   bright_cyan = 0x20,
   green = 0x80,
   bright_white = 0x88,
   bright_red = 0xa0,
} colour_t;

// tile based offsets for tiles 8x8
// these include platforms, ladders, eggs, and seeds
typedef struct __offset
{
   uint8_t x;
   uint8_t y;
} offset_t, elevator_offset_t, egg_offset_t, seed_offset_t, duck_offset_t;

typedef struct __platform_offset
{
   offset_t offset;
   uint8_t offset_x_end;
} platform_offset_t;

typedef struct __ladder_offset
{
   offset_t offset;
   uint8_t offset_y_end;
} ladder_offset_t;

typedef struct __level
{
   uint8_t n_platforms;
   uint8_t n_ladders;
   bool elevator;
   uint8_t n_eggs;
   uint8_t n_seeds;
   uint8_t n_ducks;
   platform_offset_t platform_offsets[MAX_N_PLATFORMS];
   ladder_offset_t ladder_offsets[MAX_N_LADDERS];
   elevator_offset_t elevator_offset[N_PADDLES];
   egg_offset_t egg_offsets[MAX_N_EGGS];
   seed_offset_t seed_offsets[MAX_N_SEED];
   duck_offset_t duck_offsets[MAX_N_DUCKS];
   uint16_t max_bonus;
} level_t;

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

typedef struct __sprite
{
   uint8_t width;
   uint8_t height;
   uint8_t colour;
   uint8_t sprite[];
} sprite_t;

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

typedef enum {
   right = 0,
   left  = 1,
   up    = 2,
   down  = 3,
} direction_t;

typedef struct __element_state
{
   offset_t el_offset;
   uint8_t direction;
   uint8_t sprite_state;
} element_state_t;

typedef struct __ducks_state
{
   element_state_t ducks_state[MAX_N_DUCKS];
   uint8_t duck_to_move;
   uint8_t n_ducks;
} ducks_state_t;

typedef union rand
{
   uint32_t number;
   uint8_t  byte[4];
} rand_t;

#define OFFSET_X_MAX (0x14)
#define OFFSET_Y_MAX (0x16)

typedef struct __player_context
{
   // player number 1 .. 4
   uint8_t current_player;
   // current level
   uint8_t current_level;
   // score 0 .. 999999 inclusive
   uint32_t score;
   // time 0 .. 900 inclusive
   uint16_t time;
   // bonus 0 .. 9000
   uint16_t bonus;
   // lives; new life every 10000 score points; max 255
   uint8_t lives;
   // movement context
   uint8_t sandbox[OFFSET_X_MAX][OFFSET_Y_MAX];
} player_context_t;

typedef struct __game_context
{
   uint8_t number_of_players;
   player_context_t *players_context;
   level_t levels[8];
   // chuck position
   element_state_t chuck_state;
   // duck positions
   ducks_state_t ducks_state;
   // flying duck position
   element_state_t flying_duck_state;
   element_state_t elevator_state[N_PADDLES];
   rand_t random;
} game_context_t;

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
   for (i = 0; i < game->levels[game->players_context->current_level].n_platforms; i++)
   {
      off_x = game->levels[game->players_context->current_level].platform_offsets[i].offset.x;
      off_y = game->levels[game->players_context->current_level].platform_offsets[i].offset.y;
      x = tile_x_convert_to_sdl (off_x);
      y = tile_y_convert_to_sdl (off_y);
      n = game->levels[game->players_context->current_level].platform_offsets[i].offset_x_end -
          off_x + 1;
      draw_platform (renderer, x, y, n);
      game -> players_context -> sandbox [off_x][off_y] = 0x01;
   }

   // next draw ladders
   for (i = 0; i < game->levels[game->players_context->current_level].n_ladders; i++)
   {
      off_x = game->levels[game->players_context->current_level].ladder_offsets[i].offset.x;
      off_y = game->levels[game->players_context->current_level].ladder_offsets[i].offset.y;
      x = tile_x_convert_to_sdl (off_x);
      y = tile_y_convert_to_sdl (off_y);
      n = game->levels[game->players_context->current_level].ladder_offsets[i].offset_y_end -
          off_y + 1;
      draw_ladder (renderer, x, y, n);
      if (game -> players_context -> sandbox [off_x][off_y] == 0x01)
         game -> players_context -> sandbox [off_x][off_y] = 0x03;
      else
         game -> players_context -> sandbox [off_x][off_y] = 0x02;
   }

   // next draw eggs
   for (i = 0; i < game->levels[game->players_context->current_level].n_eggs; i++)
   {
      off_x = game->levels[game->players_context->current_level].egg_offsets[i].x;
      off_y = game->levels[game->players_context->current_level].egg_offsets[i].y;
      x = tile_x_convert_to_sdl (off_x);
      y = tile_y_convert_to_sdl (off_y);
      set_colour (renderer, egg.colour);
      draw_element (renderer, &egg, x, y);
      game -> players_context -> sandbox [off_x][off_y] = 0x04 + i * 0x10;
   }

   // next draw seeds
   for (i = 0; i < game->levels[game->players_context->current_level].n_seeds; i++)
   {
      off_x = game->levels[game->players_context->current_level].seed_offsets[i].x;
      off_y = game->levels[game->players_context->current_level].seed_offsets[i].y;
      x = tile_x_convert_to_sdl (off_x);
      y = tile_y_convert_to_sdl (off_y);
      set_colour (renderer, seed.colour);
      draw_element (renderer, &seed, x, y);
      game -> players_context -> sandbox [off_x][off_y] = 0x08 + i * 0x10;
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
      off_x = game->ducks_state.ducks_state[i].el_offset.x;
      off_y = game->ducks_state.ducks_state[i].el_offset.y;
      x = x_convert_to_sdl (8 * off_x);
      y = y_convert_to_sdl (8 * off_y + 0x14);
      switch (game->ducks_state.ducks_state[i].direction)
      {
         case right:
            if (game->ducks_state.ducks_state[i].sprite_state == 0)
               draw_element (renderer, &duck_r, x, y);
            else if (game->ducks_state.ducks_state[i].sprite_state == 1)
               draw_element (renderer, &duck_rs, x, y);
            break;
         case left:
            if (game->ducks_state.ducks_state[i].sprite_state == 0)
               draw_element (renderer, &duck_l, x, y);
            else if (game->ducks_state.ducks_state[i].sprite_state == 1)
               draw_element (renderer, &duck_ls, x, y);
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
   off_x = game->flying_duck_state.el_offset.x;
   off_y = game->flying_duck_state.el_offset.y;
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

static int draw_chuck (SDL_Renderer *renderer, game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;

   x = x_convert_to_sdl (0x3c);
   y = y_convert_to_sdl (0x18);
   draw_element (renderer, &chuck_r, x, y);

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
      off_x = game->elevator_state[i].el_offset.x;
      off_y = game->elevator_state[i].el_offset.y;
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
      game->elevator_state[0].el_offset.y += 2;
      if (game->elevator_state[0].el_offset.y > 0xae)
         game->elevator_state[0].el_offset.y = 4;
      game->elevator_state[1].el_offset.y += 2;
      if (game->elevator_state[1].el_offset.y > 0xae)
         game->elevator_state[1].el_offset.y = 4;
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
   if (level >= 25)
      return 5;

   return n_ducks;
}

static bool ducks_fast (uint8_t level)
{
   if (level >= 33)
      return true;

   return false;
}

static bool flying_duck_out_of_cage (uint8_t level)
{
   if (level >= 8)
      return true;

   return false;
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
      game->ducks_state.ducks_state[i].el_offset.x = game->levels[level].duck_offsets[i].x;
      game->ducks_state.ducks_state[i].el_offset.y = game->levels[level].duck_offsets[i].y;
   }

   // initialize flying duck state
   game->flying_duck_state.el_offset.x = 0x04;
   game->flying_duck_state.el_offset.y = 0x9e;

   // initialize elevator state
   for (i = 0; i < N_PADDLES; i++)
   {
      game->elevator_state[i].el_offset.x = game->levels[level].elevator_offset[i].x;
      game->elevator_state[i].el_offset.y = game->levels[level].elevator_offset[i].y;
   }

   // radnom number for duck movements
   game->random.number = 0x76767676;

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
      .tv_nsec = 100000000,
   };

   player_context_t player_1;
   game_context_t game;

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
      if (game.levels[player_1.current_level].elevator == true)
         draw_elevator (renderer, &game);

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
               player_1.current_level++;
               if (player_1.current_level >= 8)
                  player_1.current_level = 0;
               init_game_context (&game, player_1.current_level);
               break;
         }
      }
      move_flying_duck (&game);
      move_elevator (&game);
      nanosleep (&delay, NULL);
   }

   SDL_DestroyRenderer (renderer);
   SDL_DestroyWindow (win);
   SDL_Quit ();

   return (EXIT_SUCCESS);
}
