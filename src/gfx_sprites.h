#ifndef __GFX_SPRITES_H__
#define __GFX_SPRITES_H__
 
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
   .colour = 0xa1,
   //.colour = 0x02, original
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

// life
static sprite_t life =
{
   .width  = 0x01,
   .height = 0x03,
   .colour = 0x02,
   // 4x3 pixels
   .sprite =
      {
         0x40,
         0xe0,
         0x00,
      }
};

// digit 0
static sprite_t digit_0 =
{
   .width  = 0x01,
   .height = 0x07,
   .colour = 0x08,
   // 4x7 pixels
   .sprite =
      {
         0x60,
         0x90,
         0x90,
         0x90,
         0x90,
         0x90,
         0x60,
      }
};

// digit 1
static sprite_t digit_1 =
{
   .width  = 0x01,
   .height = 0x07,
   .colour = 0x08,
   // 4x7 pixels
   .sprite =
      {
         0x20,
         0x60,
         0x20,
         0x20,
         0x20,
         0x20,
         0x70,
      }
};

// digit 2
static sprite_t digit_2 =
{
   .width  = 0x01,
   .height = 0x07,
   .colour = 0x08,
   // 4x7 pixels
   .sprite =
      {
         0x60,
         0x90,
         0x10,
         0x20,
         0x40,
         0x80,
         0xf0,
      }
};

// digit 3
static sprite_t digit_3 =
{
   .width  = 0x01,
   .height = 0x07,
   .colour = 0x08,
   // 4x7 pixels
   .sprite =
      {
         0x60,
         0x90,
         0x10,
         0x20,
         0x10,
         0x90,
         0x60,
      }
};

// digit 4
static sprite_t digit_4 =
{
   .width  = 0x01,
   .height = 0x07,
   .colour = 0x08,
   // 4x7 pixels
   .sprite =
      {
         0x80,
         0x80,
         0xa0,
         0xa0,
         0xf0,
         0x20,
         0x20,
      }
};

// digit 5
static sprite_t digit_5 =
{
   .width  = 0x01,
   .height = 0x07,
   .colour = 0x08,
   // 4x7 pixels
   .sprite =
      {
         0xf0,
         0x80,
         0xe0,
         0x10,
         0x10,
         0x90,
         0x60,
      }
};

// digit 6
static sprite_t digit_6 =
{
   .width  = 0x01,
   .height = 0x07,
   .colour = 0x08,
   // 4x7 pixels
   .sprite =
      {
         0x60,
         0x90,
         0x80,
         0xe0,
         0x90,
         0x90,
         0x60,
      }
};

// digit 7
static sprite_t digit_7 =
{
   .width  = 0x01,
   .height = 0x07,
   .colour = 0x08,
   // 4x7 pixels
   .sprite =
      {
         0xf0,
         0x10,
         0x10,
         0x20,
         0x20,
         0x40,
         0x40,
      }
};

// digit 8
static sprite_t digit_8 =
{
   .width  = 0x01,
   .height = 0x07,
   .colour = 0x08,
   // 4x7 pixels
   .sprite =
      {
         0x60,
         0x90,
         0x90,
         0x60,
         0x90,
         0x90,
         0x60,
      }
};

// digit 9
static sprite_t digit_9 =
{
   .width  = 0x01,
   .height = 0x07,
   .colour = 0x08,
   // 4x7 pixels
   .sprite =
      {
         0x60,
         0x90,
         0x90,
         0x70,
         0x10,
         0x90,
         0x60,
      }
};

// score
static sprite_t score_txt =
{
   .width  = 0x03,
   .height = 0x09,
   .colour = 0x08,
   // 24x9 pixels
   .sprite =
      {
         0xff, 0xff, 0xf8,
         0x88, 0x89, 0x88,
         0xbb, 0xaa, 0xb8,
         0xbb, 0xaa, 0xb8,
         0x8b, 0xa9, 0x98,
         0xeb, 0xaa, 0xb8,
         0xeb, 0xaa, 0xb8,
         0x88, 0x8a, 0x88,
         0xff, 0xff, 0xf8,
      }
};

// red background for score
static sprite_t red_background =
{
   .width  = 0x04,
   .height = 0x09,
   .colour = 0xa0,
   // 32x9 pixels
   .sprite =
      {
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
      }
};

// player
static sprite_t player_txt =
{
   .width  = 0x04,
   .height = 0x09,
   .colour = 0x08,
   // 32x9 pixels
   .sprite =
      {
         0xff, 0xff, 0xff, 0xff,
         0x9b, 0xda, 0x89, 0xff,
         0xab, 0xaa, 0xba, 0xff,
         0xab, 0xaa, 0xba, 0xff,
         0x9b, 0x8d, 0x99, 0xff,
         0xbb, 0xad, 0xba, 0xff,
         0xbb, 0xad, 0xba, 0xff,
         0xb8, 0xad, 0x8a, 0xff,
         0xff, 0xff, 0xff, 0xff,
      }
};

// level
static sprite_t level_txt =
{
   .width  = 0x05,
   .height = 0x09,
   .colour = 0x08,
   // 40x9 pixels
   .sprite =
      {
         0xff, 0xff, 0xff, 0xff, 0xfc,
         0xb8, 0xa8, 0xbf, 0xff, 0xfc,
         0xbb, 0xab, 0xbf, 0xff, 0xfc,
         0xbb, 0xab, 0xbf, 0xff, 0xfc,
         0xb9, 0xa9, 0xbf, 0xff, 0xfc,
         0xbb, 0xab, 0xbf, 0xff, 0xfc,
         0xbb, 0xbd, 0xbf, 0xff, 0xfc,
         0x88, 0xd8, 0x8f, 0xff, 0xfc,
         0xff, 0xff, 0xff, 0xff, 0xfc,
      }
};

// bonus
static sprite_t bonus_txt =
{
   .width  = 0x06,
   .height = 0x09,
   .colour = 0x08,
   // 48x9 pixels
   .sprite =
      {
         0xff, 0xff, 0xff, 0xff, 0xff, 0xf0,
         0x98, 0xb5, 0x47, 0xff, 0xff, 0xf0,
         0xaa, 0x95, 0x5f, 0xff, 0xff, 0xf0,
         0xaa, 0x95, 0x5f, 0xff, 0xff, 0xf0,
         0x9a, 0xa5, 0x47, 0xff, 0xff, 0xf0,
         0xaa, 0xa5, 0x77, 0xff, 0xff, 0xf0,
         0xaa, 0xb5, 0x77, 0xff, 0xff, 0xf0,
         0x98, 0xb4, 0x47, 0xff, 0xff, 0xf0,
         0xff, 0xff, 0xff, 0xff, 0xff, 0xf0,
      }
};

// time
static sprite_t time_txt =
{
   .width  = 0x05,
   .height = 0x09,
   .colour = 0x08,
   // 40x9 pixels
   .sprite =
      {
         0xff, 0xff, 0xff, 0xff, 0xc0,
         0x8a, 0x48, 0xff, 0xff, 0xc0,
         0xda, 0x4b, 0xff, 0xff, 0xc0,
         0xda, 0xab, 0xff, 0xff, 0xc0,
         0xda, 0xa9, 0xff, 0xff, 0xc0,
         0xda, 0xab, 0xff, 0xff, 0xc0,
         0xda, 0xeb, 0xff, 0xff, 0xc0,
         0xda, 0xe8, 0xff, 0xff, 0xc0,
         0xff, 0xff, 0xff, 0xff, 0xc0,
      }
};

// title letter C
static sprite_t title_c =
{
   .width  = 0x02,
   .height = 0x1e,
   .colour = 0x02,
   // 8x240 pixels
   .sprite =
      {
         0x03, 0x80,
         0x0f, 0xe0,
         0x1f, 0xf0,
         0x1f, 0xf8,
         0x3f, 0xf8,
         0x3f, 0xfc,
         0x7f, 0xfc,
         0x7f, 0xfc, 
         0x7e, 0x7c,
         0x7c, 0x38,
         0xf8, 0x18,
         0xf8, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00, 
         0xf0, 0x00,
         0xf0, 0x00,
         0xf8, 0x00,
         0xf8, 0x18,
         0x7c, 0x38,
         0x7e, 0x7c,
         0x7f, 0xfc,
         0x7f, 0xfc, 
         0x3f, 0xfc,
         0x3f, 0xf8,
         0x1f, 0xf8,
         0x1f, 0xf0,
         0x0f, 0xe0,
         0x03, 0x80,
      }
};

// title letter H
static sprite_t title_h =
{
   .width  = 0x02,
   .height = 0x1e,
   .colour = 0x02,
   // 8x240 pixels
   .sprite =
      {
         0x60, 0x18,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0x60, 0x18,
      }
};

// title letter U
static sprite_t title_u =
{
   .width  = 0x02,
   .height = 0x1e,
   .colour = 0x02,
   // 8x240 pixels
   .sprite =
      {
         0x60, 0x18,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf8, 0x7c,
         0xfc, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0x7f, 0xf8,
         0x7f, 0xf8,
         0x3f, 0xf0,
      }
};

// title letter K
static sprite_t title_k =
{
   .width  = 0x02,
   .height = 0x1e,
   .colour = 0x02,
   // 8x240 pixels
   .sprite =
      {
         0x60, 0x10,
         0xf0, 0x38,
         0xf0, 0x38,
         0xf0, 0x7c,
         0xf0, 0x7c,
         0xf0, 0xfc,
         0xf0, 0xfc,
         0xf1, 0xf8,
         0xf1, 0xf8,
         0xf3, 0xf0,
         0xf3, 0xf0,
         0xf7, 0xe0,
         0xff, 0xe0,
         0xff, 0xc0,
         0xff, 0x80,
         0xff, 0xc0,
         0xff, 0xc0,
         0xff, 0xe0,
         0xff, 0xe0,
         0xf3, 0xf0,
         0xf3, 0xf0,
         0xf1, 0xf8,
         0xf1, 0xf8,
         0xf0, 0xfc,
         0xf0, 0xfc,
         0xf0, 0x7c,
         0xf0, 0x7c,
         0xf0, 0x38,
         0xf0, 0x38,
         0x60, 0x10,
      }
};

// title letter I
static sprite_t title_i =
{
   .width  = 0x02,
   .height = 0x1e,
   .colour = 0x02,
   // 8x240 pixels
   .sprite =
      {
         0x7f, 0xf8,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0x7f, 0xf8,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x7f, 0xf8,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0x7f, 0xf8,
      }
};

// title letter E
static sprite_t title_e =
{
   .width  = 0x02,
   .height = 0x1e,
   .colour = 0x02,
   // 8x240 pixels
   .sprite =
      {
         0x3f, 0xf8,
         0x7f, 0xfc,
         0x7f, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xf8,
         0xf8, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xff, 0xe0,
         0xff, 0xf0,
         0xff, 0xf0,
         0xff, 0xf0,
         0xff, 0xf0,
         0xff, 0xe0,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf8, 0x00,
         0xff, 0xf8,
         0xff, 0xfc,
         0xff, 0xfc,
         0x7f, 0xfc,
         0x7f, 0xfc,
         0x3f, 0xf8,
      }
};

// title letter G
static sprite_t title_g =
{
   .width  = 0x02,
   .height = 0x1e,
   .colour = 0x02,
   // 8x240 pixels
   .sprite =
      {
         0x03, 0x80,
         0x0f, 0xe0,
         0x1f, 0xf0,
         0x1f, 0xf8,
         0x3f, 0xf8,
         0x3f, 0xfc,
         0x7f, 0xfc,
         0x7f, 0xfc,
         0x7e, 0x7c,
         0x7c, 0x38,
         0xf8, 0x18,
         0xf8, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0xf8,
         0xf0, 0xf8,
         0xf8, 0xfc,
         0xf8, 0x7c,
         0x7c, 0x3c,
         0x7e, 0x3c,
         0x7f, 0x7c,
         0x7f, 0xfc,
         0x3f, 0xfc,
         0x3f, 0xfc,
         0x1f, 0xfc,
         0x1f, 0xf8,
         0x0f, 0xf8,
         0x03, 0xf0,
      }
};

#endif // __GFX_SPRITES_H__
