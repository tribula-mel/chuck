#ifndef __GFX_CLASSIC_LEVELS_H_
#define __GFX_CLASSIC_LEVELS_H_

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

#endif // __GFX_CLASSIC_LEVELS_H_
