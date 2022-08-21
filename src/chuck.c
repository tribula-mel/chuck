#include <inttypes.h>
#include <stdbool.h>
#include <stdio.h>

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

// running the game in original resolution would result in tiny graphics
// for now this will be hard coded
static const uint8_t scale = 3;

// original game on cpc464 ran in mode 0
static const uint16_t x_res = 160;
static const uint16_t y_res = 200;

typedef struct __offset
{
   uint8_t x;
   uint8_t y;
} offset_t, egg_offset_t, seed_offset_t, duck_offset_t;

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
   uint8_t n_seeds;
   uint8_t n_ducks;
   platform_offset_t platform_offsets[MAX_N_PLATFORMS];
   ladder_offset_t ladder_offsets[MAX_N_LADDERS];
   egg_offset_t egg_offsets[MAX_N_EGGS];
   seed_offset_t seed_offsets[MAX_N_SEED];
   duck_offset_t duck_offsets[MAX_N_DUCKS];
} level_t;

static level_t level_classic_one =
{
   .n_platforms      = 0x0d,
   .n_ladders        = 0x04,
   .elevator         = false,
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
      }
};

static level_t level_classic_eight =
{
   .n_platforms      = 0x0f,
   .n_ladders        = 0x06,
   .elevator         = false,
   .n_seeds          = 0x10,
   .n_ducks          = 0x03,
   .platform_offsets =
      {
         {
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
      },
   .ladder_offsets =
      {
      },
   .egg_offsets =
      {
      },
   .seed_offsets =
      {
      },
   .duck_offsets =
      {
      }
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
   .colour = 0x80, // TODO define the colour
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
   .colour = 0x08, // TODO define the colour
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
   .colour = 0x88, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0xa0, // TODO define the colour
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
   .colour = 0x20, // TODO define the colour
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
   .colour = 0x20, // TODO define the colour
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
   .colour = 0x20, // TODO define the colour
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
   .colour = 0x20, // TODO define the colour
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
   .colour = 0x20, // TODO define the colour
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
   .colour = 0x20, // TODO define the colour
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
   .colour = 0x20, // TODO define the colour
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
   .colour = 0x20, // TODO define the colour
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
   .colour = 0x20, // TODO define the colour
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
   .colour = 0x20, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .colour = 0x02, // TODO define the colour
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
   .height = 0x04,
   .colour = 0x88, // TODO define the colour
   // 16x4 pixels
   .sprite =
      {
         0x1f, 0xf8,
         0x1f, 0xf8,
         0x1b, 0xd8,
         0x11, 0x88,
      }
};

int main (void)
{
   SDL_Window *win = NULL;
   SDL_Renderer *renderer = NULL;
   SDL_Texture *texture = NULL;
   int posX = 100, posY = 100, width = x_res * scale, height = y_res * scale;
   SDL_bool loopShouldStop = SDL_FALSE;
   SDL_Rect rect;

   if (-1 == SDL_Init (SDL_INIT_VIDEO | SDL_INIT_AUDIO))
   {
      fprintf (stderr, "could not initialize SDL: %s\n", SDL_GetError ());
		exit (EXIT_FAILURE);
   }

   win = SDL_CreateWindow ("Chuckie Egg", posX, posY, width, height, 0);

   renderer = SDL_CreateRenderer (win, -1, SDL_RENDERER_ACCELERATED);

   texture = SDL_CreateTexture (renderer, SDL_PIXELFORMAT_RGBA8888,
                                SDL_TEXTUREACCESS_TARGET, width, height);

   rect.x = 0;
   rect.y = 0;
   rect.w = 32;
   rect.h = 32;

   while (!loopShouldStop)
   {
      SDL_Event event;
      while (SDL_PollEvent (&event))
      {
         switch (event.type)
         {
            case SDL_QUIT:
               loopShouldStop = SDL_TRUE;
               break;
         }
      }

      // set the texture as a target
      SDL_SetRenderTarget (renderer, texture);
      // draw colour
      SDL_SetRenderDrawColor (renderer, 0x00, 0x00, 0x00, 0x00);
      // clears the overall texture
      SDL_RenderClear (renderer);
      // rect colour
      SDL_SetRenderDrawColor (renderer, 0xFF, 0x00, 0x00, 0x00);
      // render the rect in the texture
      SDL_RenderDrawRect (renderer, &rect);
#if 0
      if (-1 == SDL_RenderFillRect (renderer, &rect))
      {
         fprintf (stderr, "could not initialize SDL: %s\n", SDL_GetError ());
		   exit (EXIT_FAILURE);
      }
#endif
      // render to the window instead of the texture
      SDL_SetRenderTarget (renderer, NULL);
      // copy the overall texture to the window
      SDL_RenderCopy (renderer, texture, NULL, NULL);
      // show it in the window
      SDL_RenderPresent (renderer);
   }

   SDL_DestroyTexture (texture);
   SDL_DestroyRenderer (renderer);
   SDL_DestroyWindow (win);
   SDL_Quit ();

   return 0;
}
