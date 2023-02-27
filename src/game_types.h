#ifndef __GAME_TYPES_H__
#define __GAME_TYPES_H__

#include "common_defines.h"

typedef enum {
   pastel_yellow  = 0x02,
   bright_magenta = 0x08,
   bright_cyan    = 0x20,
   green          = 0x80,
   bright_white   = 0x88,
   bright_red     = 0xa0,
   pastel_blue    = 0xa1,
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

typedef struct __sprite
{
   uint8_t width;
   uint8_t height;
   uint8_t colour;
   uint8_t sprite[];
} sprite_t;

typedef enum {
   right = 0x1,
   left  = 0x2,
   up    = 0x4,
   down  = 0x8,
   jump  = 0x10,
} direction_t;

typedef struct __element_state
{
   offset_t tile_offset;
   offset_t gfx_offset;
   uint8_t direction;
   uint8_t sprite_state;
} element_state_t;

typedef enum {
   duck_half_stoop_start = 0x4,
   duck_stoop            = 0x8,
   duck_half_stoop_end   = 0x10,
} duck_stoop_t;

typedef struct __ducks_state
{
   element_state_t ducks_state[MAX_N_DUCKS];
   uint8_t duck_to_move;
   uint8_t n_ducks;
} ducks_state_t;

typedef struct __seed_state
{
   offset_t tile_offset;
   bool present;
} seed_state_t;

typedef struct __egg_state
{
   offset_t tile_offset;
   bool present;
} egg_state_t;

typedef union rand
{
   uint32_t number;
   uint8_t  byte[4];
} rand_t;

typedef enum {
   chuck_standing_one = 0x1,
   chuck_standing_two,
   chuck_running_right_arm_one,
   chuck_standing_three,
   chuck_running_right_arm_two,
   chuck_standing_four,
   chuck_standing_five,
   chuck_standing_six,
   chuck_running_left_arm_one,
   chuck_standing_seven,
   chuck_running_left_arm_two,
   chuck_standing_eight,
   chuck_max = chuck_standing_eight,
   chuck_back_one,
   chuck_back_left_arm,
   chuck_back_two,
   chuck_back_three,
   chuck_back_right_arm,
   chuck_back_four,
   chuck_back_five,
   chuck_back_max = chuck_back_five,
} chuck_sprite_t;

typedef enum {
   on_the_left_edge  = 0x0,
   in_the_middle     = 0x3,
   on_the_right_edge = 0x7,
} chuck_relative_x_tile_t;

typedef enum {
   on_the_bottom_edge = 0x0,
   collect            = 0x2,
   on_the_top_edge    = 0x6,
} chuck_relative_y_tile_t;

typedef enum {
   horizontal  = 0x0,
   on_ladder   = 0x1,
   in_jump     = 0x2,
   falling     = 0x3,
   on_elevator = 0x4,
} chuck_vertical_t;

typedef struct __chuck_state
{
   element_state_t el;
   uint8_t tile_rel_off_x;
   uint8_t tile_rel_off_y;
   uint8_t vertical_state;
   uint8_t vertical_counter;
   uint8_t dvx;
   uint8_t dvy;
   int8_t jump_dx;
} chuck_state_t;

typedef struct __flying_duck_state
{
   element_state_t el;
   int8_t dx;
   int8_t dy;
} flying_duck_state_t;

#endif // __GAME_TYPES_H__
