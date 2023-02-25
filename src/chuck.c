#include <assert.h>
#include <inttypes.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include <allegro5/allegro5.h>
#include <allegro5/allegro_font.h>
#include <allegro5/allegro_ttf.h>
#include <allegro5/allegro_primitives.h>

#include "game_types.h"
#include "gfx_sprites.h"
#include "player_context.h"
#include "title_context.h"
#include "game_context.h"

extern void set_chuck_tile_rel_off_x (game_context_t *game, uint8_t off);
extern void set_chuck_tile_rel_off_y (game_context_t *game, uint8_t off);
extern uint8_t adjust_n_ducks (uint8_t n_ducks, uint8_t level);
extern uint8_t adjust_duck_speed (uint8_t level, uint8_t speed);

static void set_chuck_gfx_off_x (game_context_t *game, uint8_t off);
static uint8_t get_chuck_gfx_off_x (game_context_t *game);
static void set_chuck_gfx_off_y (game_context_t *game, uint8_t off);
static uint8_t get_chuck_gfx_off_y (game_context_t *game);
static uint8_t get_chuck_tile_rel_off_x (game_context_t *game);
static uint8_t get_chuck_tile_rel_off_y (game_context_t *game);
static bool set_chuck_tile_off_x (game_context_t *game, uint8_t off);
static uint8_t get_chuck_tile_off_x (game_context_t *game);
static bool set_chuck_tile_off_y (game_context_t *game, uint8_t off);
static uint8_t get_chuck_tile_off_y (game_context_t *game);
static void set_chuck_dvx (game_context_t *game, uint8_t off);
static uint8_t get_chuck_dvx (game_context_t *game);
static void set_chuck_dvy (game_context_t *game, uint8_t off);
static uint8_t get_chuck_dvy (game_context_t *game);
static void calc_chuck_dv (game_context_t *game);
static void adjust_chuck_dvy (game_context_t *game, uint8_t tile_rel_y);
static void reset_chuck_vertical_state (game_context_t *game);
static void set_chuck_vertical_state (game_context_t *game,
                                      chuck_vertical_t v_state);
static chuck_vertical_t get_chuck_vertical_state (game_context_t *game);
static int8_t calc_chuck_jump_dy (game_context_t *game,
                                  uint8_t count);
static uint8_t get_chuck_vertical_count (game_context_t *game);
static void set_chuck_vertical_count (game_context_t *game, uint8_t count);
static bool adj_chuck_all_off_x (game_context_t *game, int8_t change);
static bool adj_chuck_all_off_y (game_context_t *game, int8_t change);
static void set_chuck_jump_dx (game_context_t *game, int8_t jump_dx);
static int8_t get_chuck_jump_dx (game_context_t *game);
static void life_management (game_context_t *game);

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

static ALLEGRO_COLOR set_colour (colour_t colour)
{
   ALLEGRO_COLOR output;

   switch (colour)
   {
      case pastel_yellow:
         output = al_map_rgb (0xff, 0xff, 0x80);
         break;
      case bright_magenta:
         output = al_map_rgb (0xff, 0x00, 0xff);
         break;
      case bright_cyan:
         output = al_map_rgb (0x00, 0xff, 0xff);
         break;
      case green:
         output = al_map_rgb (0x00, 0x80, 0x00);
         break;
      case bright_white:
         output = al_map_rgb (0xff, 0xff, 0xff);
         break;
      case bright_red:
         output = al_map_rgb (0xff, 0x00, 0x00);
         break;
      case pastel_blue:
         output = al_map_rgb (0x80, 0x80, 0xff);
         break;
      default:
         // black
         output = al_map_rgb (0x00, 0x00, 0x00);
   }

   return output;
}

static int draw_element (sprite_t *element,
                         uint16_t x, uint16_t y,
                         ALLEGRO_COLOR colour)
{
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
               uint16_t w = DOTS_PER_PIXEL_X * scale;
               uint16_t h = DOTS_PER_PIXEL_Y * scale;
               al_draw_filled_rectangle(x, y, x + w, y + h, colour);
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

static int draw_platform (uint16_t x, uint16_t y, uint8_t w)
{
   int i = 0;

   for (i = 0; i < w; i++)
   {
      draw_element (&platform, x, y, set_colour (platform.colour));
      x += (DOTS_PER_PIXEL_X * 8 * scale);
   }

   return 0;
}

static int draw_ladder (uint16_t x, uint16_t y, uint8_t h)
{
   int i = 0;

   for (i = 0; i < h; i++)
   {
      draw_element (&ladder, x, y, set_colour (ladder.colour));
      y -= (DOTS_PER_PIXEL_Y * 8 * scale);
   }

   return 0;
}

static int draw_digit (uint16_t x, uint16_t y, uint8_t digit)
{
   switch (digit)
   {
      case 0:
         draw_element (&digit_0, x, y, set_colour (digit_0.colour));
         break;
      case 1:
         draw_element (&digit_1, x, y, set_colour (digit_0.colour));
         break;
      case 2:
         draw_element (&digit_2, x, y, set_colour (digit_0.colour));
         break;
      case 3:
         draw_element (&digit_3, x, y, set_colour (digit_0.colour));
         break;
      case 4:
         draw_element (&digit_4, x, y, set_colour (digit_0.colour));
         break;
      case 5:
         draw_element (&digit_5, x, y, set_colour (digit_0.colour));
         break;
      case 6:
         draw_element (&digit_6, x, y, set_colour (digit_0.colour));
         break;
      case 7:
         draw_element (&digit_7, x, y, set_colour (digit_0.colour));
         break;
      case 8:
         draw_element (&digit_8, x, y, set_colour (digit_0.colour));
         break;
      case 9:
         draw_element (&digit_9, x, y, set_colour (digit_0.colour));
         break;
      default:
         fprintf (stderr, "should not happen, hmm\n");
         return -1;
   }

   return 0;
}

static void draw_game_status (game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   uint8_t *number = NULL;
   uint8_t max_lives = 0;

   // draw STATUS (chuck original $8d3b)
   x = x_convert_to_sdl (0x0);
   y = y_convert_to_sdl (0xc7);
   draw_element (&score_txt, x, y, set_colour (score_txt.colour));

   // draw "red block" (chuck original $8d46 - $8d59)
   //    this block is drawn for current active player
   //    x = player_number * $22 - $07
   //       player_number [1..4]
   //    currently only one player supported
   x = x_convert_to_sdl (0x1b);
   y = y_convert_to_sdl (0xc7);
   draw_element (&red_background, x, y, set_colour (red_background.colour));

   // draw 6 score digits
   y = y_convert_to_sdl (0xc6);
   number = get_score_gfx (game->player_context);
   for (int i = 0; i < 6; i++)
   {
      x = x_convert_to_sdl (0x1c + 5*i);
      draw_digit (x, y, number[i]);
   }

   // draw PLAYER (chuck original $8d67)
   x = x_convert_to_sdl (0x0);
   y = y_convert_to_sdl (0xb8);
   draw_element (&player_txt, x, y, set_colour (player_txt.colour));

   // draw player number
   x = x_convert_to_sdl (0x1b);
   y = y_convert_to_sdl (0xb7);
   draw_digit (x, y, 1);

   // draw LEVEL (chuck original $8d80)
   x = x_convert_to_sdl (0x24);
   y = y_convert_to_sdl (0xb8);
   draw_element (&level_txt, x, y, set_colour (level_txt.colour));

   // draw level number
   y = y_convert_to_sdl (0xb7);
   set_current_level_gfx (game->player_context);
   number = get_current_level_gfx (game->player_context);
   for (int i = 0; i < 3; i++)
   {
      x = x_convert_to_sdl (0x3b + 5*i);
      draw_digit (x, y, number[i]);
   }

   // draw BONUS (chuck original $8db3)
   x = x_convert_to_sdl (0x4e);
   y = y_convert_to_sdl (0xb8);
   draw_element (&bonus_txt, x, y, set_colour (bonus_txt.colour));

   // draw bonus numbers
   y = y_convert_to_sdl (0xb7);
   set_bonus_gfx (game->player_context);
   number = get_bonus_gfx (game->player_context);
   for (int i = 0; i < 4; i++)
   {
      x = x_convert_to_sdl (0x66 + 5*i);
      draw_digit (x, y, number[i]);
   }

   // draw TIME (chuck original $8dda)
   x = x_convert_to_sdl (0x7e);
   y = y_convert_to_sdl (0xb8);
   draw_element (&time_txt, x, y, set_colour (time_txt.colour));

   // draw time numbers
   y = y_convert_to_sdl (0xb7);
   set_time_gfx (game->player_context);
   number = get_time_gfx (game->player_context);
   for (int i = 0; i < 3; i++)
   {
      x = x_convert_to_sdl (0x91 + 5*i);
      draw_digit (x, y, number[i]);
   }

   // draw lives
   y = y_convert_to_sdl (0xbd);
   max_lives = game->player_context->lives;
   // there is only space for eight life sprites
   if (max_lives > 8)
      max_lives = 8; 
   for (int i = 0; i < max_lives; i++)
      draw_element (&life, x_convert_to_sdl (0x1b + 4*i) ,
                    y, set_colour (life.colour));
}

static int draw_level (game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   uint8_t n = 0;
   uint8_t i = 0;
   uint8_t off_x = 0;
   uint8_t off_y = 0;

   // draw game status at the top
   draw_game_status (game);

   // draw platforms first
   for (i = 0; i < game->levels[game->player_context->current_level % 8].n_platforms; i++)
   {
      off_x = game->levels[game->player_context->current_level % 8].platform_offsets[i].offset.x;
      off_y = game->levels[game->player_context->current_level % 8].platform_offsets[i].offset.y;
      x = tile_x_convert_to_sdl (off_x);
      y = tile_y_convert_to_sdl (off_y);
      n = game->levels[game->player_context->current_level % 8].platform_offsets[i].offset_x_end -
          off_x + 1;
      draw_platform (x, y, n);
      for (int j = 0; j < n; j++)
         set_sandbox (game->player_context, off_x + j, off_y, 0x01);
   }

   // next draw ladders
   for (i = 0; i < game->levels[game->player_context->current_level % 8].n_ladders; i++)
   {
      off_x = game->levels[game->player_context->current_level % 8].ladder_offsets[i].offset.x;
      off_y = game->levels[game->player_context->current_level % 8].ladder_offsets[i].offset.y;
      x = tile_x_convert_to_sdl (off_x);
      y = tile_y_convert_to_sdl (off_y);
      n = game->levels[game->player_context->current_level % 8].ladder_offsets[i].offset_y_end -
          off_y + 1;
      draw_ladder (x, y, n);
      for (int j = 0; j < n; j++)
      {
         if (get_sandbox (game->player_context, off_x, off_y + j) == 0x01)
            set_sandbox (game->player_context, off_x, off_y + j, 0x03);
         else
            set_sandbox (game->player_context, off_x, off_y + j, 0x02);
      }
   }

   // next draw eggs
   for (i = 0; i < game->levels[game->player_context->current_level % 8].n_eggs; i++)
   {
      if (game->egg_state[i].present == true)
      {
         off_x = game->levels[game->player_context->current_level % 8].egg_offsets[i].x;
         off_y = game->levels[game->player_context->current_level % 8].egg_offsets[i].y;
         x = tile_x_convert_to_sdl (off_x);
         y = tile_y_convert_to_sdl (off_y);
         draw_element (&egg, x, y, set_colour (egg.colour));
         set_sandbox (game->player_context, off_x, off_y, 0x04 + i * 0x10);
      }
   }

   // next draw seeds
   for (i = 0; i < game->levels[game->player_context->current_level % 8].n_seeds; i++)
   {
      if (game->seed_state[i].present == true)
      {
         off_x = game->seed_state[i].tile_offset.x;
         off_y = game->seed_state[i].tile_offset.y;
         x = tile_x_convert_to_sdl (off_x);
         y = tile_y_convert_to_sdl (off_y);
         draw_element (&seed, x, y, set_colour (seed.colour));
         set_sandbox (game->player_context, off_x, off_y, 0x08 + i * 0x10);
      }
   }

   // next draw cage
   x = x_convert_to_sdl (0x00);
   y = y_convert_to_sdl (0xae);
   draw_element (&cage, x, y, set_colour (cage.colour));

   return 0;
}

static int draw_ducks (game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   uint8_t i = 0;
   uint8_t n_ducks = 0;
   uint8_t off_x = 0;
   uint8_t off_y = 0;

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
               draw_element (&duck_r, x, y, set_colour (duck_r.colour));
            else if (game->ducks_state.ducks_state[i].sprite_state == 1)
               draw_element (&duck_rs, x, y, set_colour (duck_r.colour));
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_half_stoop_start)
               draw_element (&duck_rbs, x, y, set_colour (duck_r.colour));
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_stoop)
               draw_element (&duck_res, x, y, set_colour (duck_r.colour));
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_half_stoop_end)
               draw_element (&duck_rbs, x, y, set_colour (duck_r.colour));
            break;
         case left:
            if (game->ducks_state.ducks_state[i].sprite_state == 0)
               draw_element (&duck_l, x, y, set_colour (duck_r.colour));
            else if (game->ducks_state.ducks_state[i].sprite_state == 1)
               draw_element (&duck_ls, x, y, set_colour (duck_r.colour));
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_half_stoop_start)
               draw_element (&duck_lbs, x - x_convert_to_sdl (8), y, set_colour (duck_r.colour));
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_stoop)
               draw_element (&duck_les, x - x_convert_to_sdl (8), y, set_colour (duck_r.colour));
            else if (game->ducks_state.ducks_state[i].sprite_state == duck_half_stoop_end)
               draw_element (&duck_lbs, x - x_convert_to_sdl (8), y, set_colour (duck_r.colour));
            break;
         case up:
            if (game->ducks_state.ducks_state[i].sprite_state == 1)
               draw_element (&duck_brl, x, y, set_colour (duck_r.colour));
            else if (game->ducks_state.ducks_state[i].sprite_state == 0)
               draw_element (&duck_bll, x, y, set_colour (duck_r.colour));
            break;
         case down:
            if (game->ducks_state.ducks_state[i].sprite_state == 1)
               draw_element (&duck_brl, x, y, set_colour (duck_r.colour));
            else if (game->ducks_state.ducks_state[i].sprite_state == 0)
               draw_element (&duck_bll, x, y, set_colour (duck_r.colour));
            break;
      }
   }

   return 0;
}

static int draw_flying_duck (game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   uint8_t off_x = 0;
   uint8_t off_y = 0;

   off_x = game->flying_duck_state.tile_offset.x;
   off_y = game->flying_duck_state.tile_offset.y;
   x = x_convert_to_sdl (off_x);
   y = y_convert_to_sdl (off_y);
   switch (game->flying_duck_state.direction)
   {
      case right:
         if (game->flying_duck_state.sprite_state == 0)
            draw_element (&flying_duck_rcbwd, x, y, set_colour (flying_duck_rcbwd.colour));
         else if (game->flying_duck_state.sprite_state == 1)
            draw_element (&flying_duck_rsbwu, x, y, set_colour (flying_duck_rcbwd.colour));
         break;
      case left:
         if (game->flying_duck_state.sprite_state == 0)
            draw_element (&flying_duck_lcbwd, x, y, set_colour (flying_duck_rcbwd.colour));
         else if (game->flying_duck_state.sprite_state == 1)
            draw_element (&flying_duck_lsbwu, x, y, set_colour (flying_duck_rcbwd.colour));
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

void set_chuck_tile_rel_off_x (game_context_t *game, uint8_t off)
{
   game->chuck_state.tile_rel_off_x = off & 0x7;
   // printf ("chuck tile_rel_off_x %x\n", off & 0x7);
}

static uint8_t get_chuck_tile_rel_off_x (game_context_t *game)
{
   return game->chuck_state.tile_rel_off_x;
}

void set_chuck_tile_rel_off_y (game_context_t *game, uint8_t off)
{
   game->chuck_state.tile_rel_off_y = (off & 0x7);
   // printf ("chuck tile_rel_off_y %x\n", off & 0x7);
}

static uint8_t get_chuck_tile_rel_off_y (game_context_t *game)
{
   return game->chuck_state.tile_rel_off_y;
}

static bool set_chuck_tile_off_x (game_context_t *game, uint8_t off)
{
   uint8_t tile_off_x = game->chuck_state.el.tile_offset.x;

   game->chuck_state.el.tile_offset.x = off;
   // printf ("chuck tile_off_x %x\n", off);

   return (tile_off_x == off);
}

static uint8_t get_chuck_tile_off_x (game_context_t *game)
{
   return game->chuck_state.el.tile_offset.x;
}

static bool set_chuck_tile_off_y (game_context_t *game, uint8_t off)
{
   uint8_t tile_off_y = game->chuck_state.el.tile_offset.y;

   game->chuck_state.el.tile_offset.y = off;
   // printf ("chuck tile_off_y %x\n", off);

   return (tile_off_y == off);
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

static void chuck_collect_seed (game_context_t *game)
{
   uint8_t x = get_chuck_tile_off_x (game);
   uint8_t y = get_chuck_tile_off_y (game);

   // clear a seed
   game->seed_state[get_sandbox (game->player_context, x, y) >> 4].present = false;
   set_sandbox (game->player_context, x, y, 0);

   // do other seed logic in here (in time)
   //    stop the level timer
   //    assign points to the score
   set_score (game->player_context,
              get_score (game->player_context) + 50);
   set_time_off (game, 0x14); // original chuck $99f6
}

static uint16_t adjust_egg_score (uint8_t level)
{
   return (100 + 100 * (level % 4));
}

static void chuck_collect_egg (game_context_t *game,
                               uint8_t x, uint8_t y)
{
   // clear an egg
   game->egg_state[get_sandbox (game->player_context, x, y) >> 4].present = false;
   set_sandbox (game->player_context, x, y, 0);

   // do other seed logic in here (in time)
   //    assign points to the score
   set_score (game->player_context,
              get_score (game->player_context) +
                 adjust_egg_score (game->player_context->current_level));
   // move to next level when all eggs collected
   set_n_eggs (game->player_context, get_n_eggs (game->player_context) + 1);
   if (get_n_eggs (game->player_context) == MAX_N_EGGS)
      set_next_level (game, true);
}

static int animate_chuck_fall (game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   int8_t gfx_x = 0;
   int16_t gfx_y = 0;
   int8_t tile_rel_x = 0;
   int8_t tile_rel_y = 0;

   if (get_chuck_vertical_state (game) != falling)
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
   {
      // height of the chuck sprite
      // this would also be condition for lost life
      gfx_y = 0x10;
      life_management (game);
   }
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
      draw_element (&chuck_l, x, y, set_colour (chuck_r.colour));
   else if (game->chuck_state.el.direction == right)
      draw_element (&chuck_r, x, y, set_colour (chuck_r.colour));

   set_chuck_gfx_off_x (game, gfx_x);
   set_chuck_gfx_off_y (game, gfx_y);
   set_chuck_tile_rel_off_x (game, tile_rel_x);
   set_chuck_tile_rel_off_y (game, tile_rel_y);
   game->chuck_state.vertical_counter++; 
   calc_chuck_dv (game);
   if (get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                    get_chuck_tile_off_y (game) - 1) & 0x1)
      if (tile_rel_y < 4)
         adjust_chuck_dvy (game, tile_rel_y);

   // check if should collect a seed
   if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                     get_chuck_tile_off_y (game)) & 0x8) &&
       (get_chuck_tile_rel_off_y (game) <= collect))
      chuck_collect_seed (game);

   // check if should collect a seed
   if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                     get_chuck_tile_off_y (game)) & 0x4) &&
       (get_chuck_tile_rel_off_y (game) <= collect))
      chuck_collect_egg (game, get_chuck_tile_off_x (game),
                         get_chuck_tile_off_y (game));

   // check if the fall should stop or life lost
   if ((tile_rel_y == 0) &&
       (get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                     get_chuck_tile_off_y (game) - 1) & 0x1))
      set_chuck_vertical_state (game, horizontal);

   return 0;
}

static void set_chuck_jump_dx (game_context_t *game, int8_t jump_dx)
{
   game->chuck_state.jump_dx = jump_dx;
}

static int8_t get_chuck_jump_dx (game_context_t *game)
{
   return (game->chuck_state.jump_dx);
}

static bool chuck_platform_collision (game_context_t *game,
                                      int8_t dx, int8_t dy)
{
   uint8_t tile_rel_off_x = get_chuck_tile_rel_off_x (game);
   uint8_t tile_rel_off_y = get_chuck_tile_rel_off_y (game);
   uint8_t tile_off_x = get_chuck_tile_off_x (game);
   uint8_t tile_off_y = get_chuck_tile_off_y (game);
   int8_t backup = 0x0;

   if (dx > 0x0)
   {
      // check the screen limit 152 (original chuck $94ee)
      if (get_chuck_gfx_off_x (game) >= 0x98)
         return true;

      if (tile_rel_off_x < 0x5) // original chuck $94f3
         return false;

      tile_off_x += 0x1;
   }
   else if (dx < 0x0)
   {
      // check the screen limit 0 (original chuck $94da)
      if (get_chuck_gfx_off_x (game) == 0x0)
         return true;

      if (tile_rel_off_x > 0x2) // original chuck $94de
         return false;

      tile_off_x -= 0x1;
   }
   else if (dx == 0x0)
      return false;

   if (dy == 0x02) // original chuck code $94e3 and $94f8
      return false;

   backup = tile_rel_off_y + dy;
   if ((backup >= 0x0) && (backup < 0x8)) // original chuck $94ff
   {
      if (get_sandbox (game->player_context, tile_off_x, tile_off_y) == 0x1)
         return true;
   }
   else if (backup >= 0x0)
   {
      tile_off_y += 0x1;
      if (get_sandbox (game->player_context, tile_off_x, tile_off_y) == 0x1)
         return true;
   }
   else if (backup < 0x0)
   {
      tile_off_y -= 0x1;
      if (get_sandbox (game->player_context, tile_off_x, tile_off_y) == 0x1)
         return true;
   }

   if (dy >= 0x0)
      return false;

   tile_off_y += 0x1;
   if (get_sandbox (game->player_context, tile_off_x, tile_off_y) == 0x1)
      return true;

   return false;
}

static bool jump_on_elevator (game_context_t *game, int8_t *dy)
{
   uint8_t el_0_gfx_x = game->elevator_state[0].gfx_offset.x;
   uint8_t el_0_gfx_y = game->elevator_state[0].gfx_offset.y;
   uint8_t el_1_gfx_x = game->elevator_state[1].gfx_offset.x;
   uint8_t el_1_gfx_y = game->elevator_state[1].gfx_offset.y;
   uint8_t ch_gfx_x = get_chuck_gfx_off_x (game);
   uint8_t ch_gfx_y = get_chuck_gfx_off_y (game);

#if 0
   if ((ch_gfx_x > el_0_gfx_x - 1) && (ch_gfx_x <= el_0_gfx_x - 1 + 0xa))
      if (((ch_gfx_y - 0x11) == el_0_gfx_y) || ((ch_gfx_y - 0x11 - 0x2 + *dy) <= el_0_gfx_y))
      {
         *dy = ch_gfx_y - 0x11 - el_0_gfx_y;
         return true;
      }

   if ((ch_gfx_x > el_1_gfx_x - 1) && (ch_gfx_x <= el_1_gfx_x - 1 + 0xa))
      if (((ch_gfx_y - 0x11) == el_1_gfx_y) || ((ch_gfx_y - 0x11 - 0x2 + *dy) <= el_1_gfx_y))
      {
         *dy = ch_gfx_y - 0x11 - el_1_gfx_y;
         return true;
      }
#endif

   if ((ch_gfx_x > el_0_gfx_x - 1) && (ch_gfx_x < el_0_gfx_x + 0xa))
      if ((ch_gfx_y > el_0_gfx_y) && (ch_gfx_y - 0x11 - el_0_gfx_y < abs(*dy)))
      {
         *dy = el_0_gfx_y - ch_gfx_y + 0x11;
         return true;
      }

   if ((ch_gfx_x > el_1_gfx_x) && (ch_gfx_x < el_1_gfx_x + 0x10))
      if ((ch_gfx_y > el_1_gfx_y) && (ch_gfx_y - 0x11 - el_1_gfx_y < abs(*dy)))
      {
         *dy = el_1_gfx_y - ch_gfx_y + 0x11;
         return true;
      }

   return false;
}

static int animate_chuck_jump (game_context_t *game, chuck_vertical_t prev_state)
{
   if (get_chuck_vertical_state (game) == in_jump)
   {
      int8_t dx = get_chuck_jump_dx (game);
      int8_t dy = calc_chuck_jump_dy (game, get_chuck_vertical_count (game));

      // platform to our left or right ?
      if (chuck_platform_collision (game, dx, dy))
      {
         // original game implementation at $94f8
         // if so change direction
         dx = -1 * dx;
         set_chuck_jump_dx (game, dx);
      }

      // we are nearing the end of the jump, but there is a missmatch
      //    in between dy and the height of chuck above the platform
      //    so we must limit dy
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game) - 1) & 0x1) && (dy < 0))
         if (get_chuck_tile_rel_off_y (game) < abs(dy))
            dy = (-1) * get_chuck_tile_rel_off_y (game);

      if (prev_state == on_elevator)
         goto skip;

      // same as above but this time we check for the elevator paddles
      if (jump_on_elevator (game, &dy))
         set_chuck_vertical_state (game, on_elevator);

skip:
      // platform above our head ?
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game) + 1) == 0x1) &&
          (get_chuck_tile_rel_off_y (game) == on_the_bottom_edge))
      {
         // if so change direction
         set_chuck_vertical_count (game, 0xc);
         dy = calc_chuck_jump_dy (game, get_chuck_vertical_count (game));
      }

      adj_chuck_all_off_y (game, dy);
      adj_chuck_all_off_x (game, dx);
      set_chuck_vertical_count (game, get_chuck_vertical_count (game) + 1);

      // check if should collect a seed
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game)) & 0x8) &&
          (get_chuck_tile_rel_off_y (game) <= collect))
         chuck_collect_seed (game);

      // collect an egg if applicable
      if (get_chuck_tile_rel_off_y (game) < 0x4)
      {
         if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                           get_chuck_tile_off_y (game)) & 0x4))
            chuck_collect_egg (game, get_chuck_tile_off_x (game),
                               get_chuck_tile_off_y (game));
      }
      else
         if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                           get_chuck_tile_off_y (game) + 1) & 0x4))
            chuck_collect_egg (game, get_chuck_tile_off_x (game),
                               get_chuck_tile_off_y (game) + 1);

      // end of jump ?
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game) - 1) & 0x1) == 0x1)
         if (get_chuck_tile_rel_off_y (game) == 0)
            set_chuck_vertical_state (game, horizontal);
   }

   return 0;
}

static int draw_chuck (game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;

   if (get_chuck_vertical_state (game) == falling)
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
            draw_element (&chuck_r, x, y, set_colour (chuck_r.colour));
         else if (game->chuck_state.el.direction == left)
            draw_element (&chuck_l, x, y, set_colour (chuck_r.colour));
         break;
      case chuck_running_right_arm_one:
      case chuck_running_right_arm_two:
         if (game->chuck_state.el.direction == right)
            draw_element (&chuck_rslar, x, y, set_colour (chuck_r.colour));
         else if (game->chuck_state.el.direction == left)
            draw_element (&chuck_lslar, x, y, set_colour (chuck_r.colour));
         break;
      case chuck_running_left_arm_one:
      case chuck_running_left_arm_two:
         if (game->chuck_state.el.direction == right)
            draw_element (&chuck_rslal, x, y, set_colour (chuck_r.colour));
         else if (game->chuck_state.el.direction == left)
            draw_element (&chuck_lslal, x, y, set_colour (chuck_r.colour));
         break;
      case chuck_back_one:
      case chuck_back_two:
      case chuck_back_three:
      case chuck_back_four:
      case chuck_back_five:
         draw_element (&chuck_b, x, y, set_colour (chuck_r.colour));
         break;
      case chuck_back_left_arm:
         draw_element (&chuck_blurd, x, y, set_colour (chuck_r.colour));
         break;
      case chuck_back_right_arm:
         draw_element (&chuck_bldru, x, y, set_colour (chuck_r.colour));
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

static int draw_elevator (game_context_t *game)
{
   uint16_t x = 0;
   uint16_t y = 0;
   uint8_t off_x = 0;
   uint8_t off_y = 0;
   uint8_t i = 0;

   for (i = 0; i < N_PADDLES; i++)
   {
      off_x = game->elevator_state[i].gfx_offset.x;
      off_y = game->elevator_state[i].gfx_offset.y;
      x = x_convert_to_sdl (off_x);
      y = y_convert_to_sdl (off_y);
      draw_element (&elevator, x, y, set_colour (elevator.colour));
   }

   return 0;
}

static int move_flying_duck (game_context_t *game)
{
   static uint8_t wait = 8; // original chuck $96bb

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
      game->elevator_state[0].gfx_offset.y += 2;
      if (game->elevator_state[0].gfx_offset.y > 0xae)
         game->elevator_state[0].gfx_offset.y = 4;
      game->elevator_state[1].gfx_offset.y += 2;
      if (game->elevator_state[1].gfx_offset.y > 0xae)
         game->elevator_state[1].gfx_offset.y = 4;

      if (get_chuck_vertical_state (game) == on_elevator)
         adj_chuck_all_off_y (game, +2);
   }

   wait--;

   return 0;
}

static void life_management (game_context_t *game)
{
   // reduce number of lives for the current player
   // if zero then game over
   // move to the next player (if any)

   uint8_t lives = get_lives (game->player_context);

   if (lives == 0)
      // game over
      // TODO show Game Over banner
      set_back_to_title (game, true);
   else
   {
      set_lives (game->player_context, --lives);
      set_life_lost (game, true);
   }
}

static int move_time (game_context_t *game)
{
   static uint8_t wait = 4; // original chuck $96bb
   uint8_t ticks = 0;
   uint16_t time = get_time (game->player_context);
   uint32_t bonus = get_bonus (game->player_context);
   uint8_t *time_gfx = NULL;

   wait--;
   if (wait == 0)
   {
      wait = 4;
      ticks = get_time_off (game);
      if (ticks == 0)
      {
         set_time (game->player_context, --time);
         if (time == 0)
         {
            // TODO show Timeout banner
            life_management (game);

            return 0;
         }

         time_gfx = get_time_gfx (game->player_context);
         if ((time_gfx[2] == 0x0) || (time_gfx[2] == 0x5))
            if (bonus != 0)
               set_bonus (game->player_context, bonus - 10);
      }
      else
         set_time_off (game, --ticks);
   }

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

uint8_t adjust_n_ducks (uint8_t n_ducks, uint8_t level)
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

uint8_t adjust_duck_speed (uint8_t level, uint8_t speed)
{
   if (level >= 32)
      return 5;

   return speed;
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

   if (game->ducks_state.n_ducks == 0)
   {
      printf ("no ducks in this level\n");
      return 0;
   }

   if (game->ducks_state.duck_to_move > game->ducks_state.n_ducks)
   {
      game->ducks_state.duck_to_move--;
      return 0;
   }

   index = game->ducks_state.duck_to_move - 1;
   game->ducks_state.duck_to_move--;
   if (game->ducks_state.duck_to_move == 0)
      game->ducks_state.duck_to_move = adjust_duck_speed (game->player_context->current_level, 8);

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
         game->seed_state[get_sandbox (game->player_context, x + 1, y) >> 4].present = false;
         set_sandbox (game->player_context, x + 1, y, 0);
      }
      else
      {
         game->seed_state[get_sandbox (game->player_context, x - 1, y) >> 4].present = false;
         set_sandbox (game->player_context, x - 1, y, 0);
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
      if ((get_sandbox (game->player_context, x - 1, y - 1) == 0x01) ||
          (get_sandbox (game->player_context, x - 1, y - 1) == 0x03))
         moves |= left;
   }
   // can move right (either platform or ladder over platform) ?
   if ((y >= 1) && (x < 0x13))
   {
      if ((get_sandbox (game->player_context, x + 1, y - 1) == 0x01) ||
          (get_sandbox (game->player_context, x + 1, y - 1) == 0x03))
         moves |= right;
   }
   // can move up (either ladder or ladder over platform) ?
   if (x < 0x14)
   {
      if ((get_sandbox (game->player_context, x, y + 2) == 0x02) ||
          (get_sandbox (game->player_context, x, y + 2) == 0x03))
         moves |= up;
   }
   // can move down (either ladder or ladder over platform) ?
   if ((y >= 1) && (x < 0x14))
   {
      if ((get_sandbox (game->player_context, x, y - 1) == 0x02) ||
          (get_sandbox (game->player_context, x, y - 1) == 0x03))
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
         if (get_sandbox (game->player_context, x + 1, y) & 0x08)
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
         if ((get_sandbox (game->player_context, x - 1, y) & 0x08) &&
             (game->ducks_state.ducks_state[index].sprite_state == 0))
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

static void reset_chuck_vertical_state (game_context_t *game)
{
   set_chuck_vertical_state (game, falling);

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

static bool adj_chuck_all_off_x (game_context_t *game, int8_t change)
{
   uint8_t tile_x = 0;

   set_chuck_gfx_off_x (game, get_chuck_gfx_off_x (game) + change);
   set_chuck_tile_rel_off_x (game, get_chuck_tile_rel_off_x (game) + change);

   if (get_chuck_gfx_off_x (game) == 0xff)
   {
      set_chuck_gfx_off_x (game, 0);
      set_chuck_tile_rel_off_x (game, in_the_middle);
   }
   else if (get_chuck_gfx_off_x (game) > 152)
   {
      // 160 is the max resolution, and chuck is 8 dots wide
      set_chuck_gfx_off_x (game, 152);
      set_chuck_tile_rel_off_x (game, in_the_middle);
   }

   tile_x = get_chuck_gfx_off_x (game) + 0x3 - get_chuck_tile_rel_off_x (game);
   tile_x /= 8;

   return (set_chuck_tile_off_x (game, tile_x));
}

static bool adj_chuck_all_off_y (game_context_t *game, int8_t change)
{
   uint8_t tile_y = 0;

   set_chuck_gfx_off_y (game, get_chuck_gfx_off_y (game) + change);
   set_chuck_tile_rel_off_y (game, get_chuck_tile_rel_off_y (game) + change);

   if (get_chuck_gfx_off_y (game) < 0x10)
   {
      set_chuck_gfx_off_y (game, 0x10);
      life_management (game);
   }

   tile_y = get_chuck_gfx_off_y (game) - 0x10 - get_chuck_tile_rel_off_y (game);
   tile_y /= 8;

   return (set_chuck_tile_off_y (game, tile_y));
}

static void move_chuck_left (game_context_t *game)
{
   if (get_chuck_vertical_state (game) == in_jump)
      return;

   if (get_chuck_vertical_state (game) == on_elevator)
   {
      adj_chuck_all_off_x (game, -1);
      return;
   }

   // platform on the left ?
   if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game) - 1,
                     get_chuck_tile_off_y (game)) == 0x1) &&
       (get_chuck_tile_rel_off_x (game) == 0x1))
      return;

   if (get_chuck_vertical_state (game) == on_ladder)
   {
      if (get_chuck_tile_rel_off_y (game) != 0)
         return;
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game) - 1) & 0x1) != 1)
         return;
   }

   set_chuck_vertical_state (game, horizontal);

   if (adj_chuck_all_off_x (game, -1))
   {
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game) - 1) & 0x1) == 0)
      {
         // we are entering the fall
         reset_chuck_vertical_state (game);
         return;
      }
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game)) & 0x8))
      {
         // collect a seed
         chuck_collect_seed (game);
         return;
      }
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game)) & 0x4))
      {
         // collect a egg
         chuck_collect_egg (game, get_chuck_tile_off_x (game),
                            get_chuck_tile_off_y (game));
         return;
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
}

static void move_chuck_right (game_context_t *game)
{
   if (get_chuck_vertical_state (game) == in_jump)
      return;

   if (get_chuck_vertical_state (game) == on_elevator)
   {
      adj_chuck_all_off_x (game, 1);
      return;
   }

   // platform on the right ?
   if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game) + 1,
                     get_chuck_tile_off_y (game)) == 0x1) &&
       (get_chuck_tile_rel_off_x (game) == 0x5))
      return;

   if (get_chuck_vertical_state (game) == on_ladder)
   {
      if (get_chuck_tile_rel_off_y (game) != 0)
         return;
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game) - 1) & 0x1) != 1)
         return;
   }

   set_chuck_vertical_state (game, horizontal);

   if (adj_chuck_all_off_x (game, 1))
   {
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game) - 1) & 0x1) == 0)
      {
         // we are entering the fall
         reset_chuck_vertical_state (game);
         return;
      }
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game)) & 0x8))
      {
         // collect a seed
         chuck_collect_seed (game);
         return;
      }
      if ((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                        get_chuck_tile_off_y (game)) & 0x4))
      {
         // collect a egg
         chuck_collect_egg (game, get_chuck_tile_off_x (game),
                            get_chuck_tile_off_y (game));
         return;
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
}

static void move_chuck_up (game_context_t *game)
{
   if (get_chuck_vertical_state (game) == on_elevator)
      return;

   // first check if we are in the middle of the tile
   if (get_chuck_tile_rel_off_x (game) == in_the_middle)
   {
      // check to see if we are in the jump and if are catching the ladder
      //    on the negative tile relative offset
      // the tile relative offset y has to be positive since ladder is
      //    is climbed in +/-2 increments
      if (get_chuck_vertical_state (game) == in_jump)
         if ((get_chuck_tile_rel_off_y (game) % 2) == 1)
            adj_chuck_all_off_y (game, -1);

      // is there ladder
      if (get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                       get_chuck_tile_off_y (game) + 2) & 0x2)
      {
         adj_chuck_all_off_y (game, 2);
         set_chuck_vertical_state (game, on_ladder);

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
}

static void move_chuck_down (game_context_t *game)
{
   if (get_chuck_vertical_state (game) == on_elevator)
      return;

   // first check if we are in the middle of the tile
   if (get_chuck_tile_rel_off_x (game) == in_the_middle)
   {
      // is there ladder
      if (((get_sandbox (game->player_context, get_chuck_tile_off_x (game),
                         get_chuck_tile_off_y (game) - 1) & 0x2) &&
          (get_chuck_tile_rel_off_y (game) == on_the_bottom_edge))
          ||
          ((get_chuck_vertical_state (game) == on_ladder) &&
            (get_chuck_tile_rel_off_y (game) != on_the_bottom_edge))
          ||
          (get_chuck_vertical_state (game) == in_jump))
      {
         // check to see if we are in the jump and if are catching the ladder
         //    on the negative tile relative offset
         // the tile relative offset y has to be positive since ladder is
         //    is climbed in +/-2 increments
         if (get_chuck_vertical_state (game) == in_jump)
            if ((get_chuck_tile_rel_off_y (game) % 2) == 1)
               adj_chuck_all_off_y (game, -1);

         adj_chuck_all_off_y (game, -2);
         set_chuck_vertical_state (game, on_ladder);

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
}

static int move_chuck (game_context_t *game,
                       int8_t hor, int8_t ver)
{
   // if falling then chuck can't move
   if (get_chuck_vertical_state (game) == falling)
      return 0;

   // left
   if (hor == -1)
      move_chuck_left (game);

   // right
   if (hor == 1)
      move_chuck_right (game);

   // up
   if (ver == 1)
      move_chuck_up (game);

   // down
   if (ver == -1)
      move_chuck_down (game);

   return 0;
}

static void set_chuck_vertical_state (game_context_t *game,
                                      chuck_vertical_t v_state)
{
   game->chuck_state.vertical_state = v_state;
   game->chuck_state.vertical_counter = 0;
}

static chuck_vertical_t get_chuck_vertical_state (game_context_t *game)
{
   return (game->chuck_state.vertical_state);
}

// taken from the original chuck
static int8_t calc_chuck_jump_dy (game_context_t *game,
                                  uint8_t count)
{
   int8_t dy = count / 4;

   // pratically limit the dy to -4 after count reaches 24
   if (dy >= 6)
      dy = 6;

   dy = ~dy + 3;

   return dy;
}

static uint8_t get_chuck_vertical_count (game_context_t *game)
{
   return (game->chuck_state.vertical_counter);
}

static void set_chuck_vertical_count (game_context_t *game, uint8_t count)
{
   game->chuck_state.vertical_counter = count;
}

void must_init(bool test, const char *description)
{
    if (test)
      return;

    fprintf (stderr, "couldn't initialize %s\n", description);

    exit (EXIT_FAILURE);
}

static void draw_chuckie_egg (void)
{
   uint16_t x = 0;
   uint16_t y = 0;

   // C
   x = x_convert_to_sdl (0x2);
   y = y_convert_to_sdl (0xc7);
   draw_element (&title_c, x, y, set_colour (title_c.colour));
   // H
   x = x_convert_to_sdl (0x11);
   y = y_convert_to_sdl (0xc7);
   draw_element (&title_h, x, y, set_colour (title_h.colour));
   // U
   x = x_convert_to_sdl (0x20);
   y = y_convert_to_sdl (0xc7);
   draw_element (&title_u, x, y, set_colour (title_u.colour));
   // C
   x = x_convert_to_sdl (0x2f);
   y = y_convert_to_sdl (0xc7);
   draw_element (&title_c, x, y, set_colour (title_c.colour));
   // K
   x = x_convert_to_sdl (0x3e);
   y = y_convert_to_sdl (0xc7);
   draw_element (&title_k, x, y, set_colour (title_k.colour));
   // I
   x = x_convert_to_sdl (0x4d);
   y = y_convert_to_sdl (0xc7);
   draw_element (&title_i, x, y, set_colour (title_i.colour));
   // E
   x = x_convert_to_sdl (0x5c);
   y = y_convert_to_sdl (0xc7);
   draw_element (&title_e, x, y, set_colour (title_e.colour));
   // E
   x = x_convert_to_sdl (0x72);
   y = y_convert_to_sdl (0xc7);
   draw_element (&title_e, x, y, set_colour (title_e.colour));
   // G
   x = x_convert_to_sdl (0x81);
   y = y_convert_to_sdl (0xc7);
   draw_element (&title_g, x, y, set_colour (title_g.colour));
   // G
   x = x_convert_to_sdl (0x90);
   y = y_convert_to_sdl (0xc7);
   draw_element (&title_g, x, y, set_colour (title_g.colour));
}

static void draw_high_score (title_context_t *title)
{
   uint8_t y = 0x88; // original chuck $a085
   uint8_t x = 0x8;
   uint8_t score[6];
   bool leading_zero = true;

   char *digit[] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};

   for (int i = 0; i < 10; i++)
   {
         // table position
         if ((i + 1) == 10)
            x = 0;

         // position
         al_draw_text (title->font, al_map_rgb (0x00, 0xff, 0xff),
                       x_convert_to_sdl (x), y_convert_to_sdl (y),
                       0, digit[i + 1]);
         // name
         al_draw_text (title->font, al_map_rgb (0x00, 0xff, 0xff),
                       x_convert_to_sdl (0x60), y_convert_to_sdl (y),
                       0, title->high_score[i].name);
         // score
         convert_num_to_gfx (title->high_score[i].score, &score[0], 100000, 6);
         for (int j = 0; j < 6; j++)
         {
            if ((leading_zero == true) && (score[j] == 0))
               continue;

            al_draw_text (title->font, al_map_rgb (0x00, 0xff, 0xff),
                          x_convert_to_sdl (0x28 + (0x8 * j)), y_convert_to_sdl (y),
                          0, digit[score[j]]);

            leading_zero = false;
         }

         leading_zero = true;
         y -= 0xc;
   }
}

static void title_loop (title_context_t *title)
{
   ALLEGRO_EVENT event;
   uint8_t counter = 0;
   bool done = false;

   al_start_timer (title->timer);

   while (true)
   {
      if (al_is_event_queue_empty (title->queue))
      {
         if ((counter & 0x1) == 0x0)
         {
            al_clear_to_color (al_map_rgb (0, 0, 0));
            // draw chuckie egg letters
            draw_chuckie_egg ();

            // original game prints the text at location (0x5, 0x7)
            // this translates into screen positions (0x20, 0x98)
            //   formula being screen_x = 8 * (text_x - 1)
            //                 screen_y = 8 * (25 - (text_y - 1))
            al_draw_text (title->font, al_map_rgb (0xff, 0xff, 0xff),
                          x_convert_to_sdl (0x20), y_convert_to_sdl (0x98),
                          0, "HIGH  SCORES");
            al_draw_text (title->font, al_map_rgb (0xff, 0xff, 0x80),
                          x_convert_to_sdl (0x10), y_convert_to_sdl (0x10),
                          0, "Press S to start");
            al_draw_text (title->font, al_map_rgb (0xff, 0xff, 0x80),
                          x_convert_to_sdl (0x10), y_convert_to_sdl (0x8),
                          0, "K to change keys");

            draw_high_score (title);

            // show it in the window
            al_flip_display ();
         }
         else
         {
            al_clear_to_color (al_map_rgb (0, 0, 0));
            // draw chuckie egg letters
            draw_chuckie_egg ();

            al_draw_text (title->font, al_map_rgb (0x00, 0xff, 0xff),
                          x_convert_to_sdl (0x30), y_convert_to_sdl (0x98),
                          0, "K E Y S");
            al_draw_text (title->font, al_map_rgb (0x00, 0xff, 0xff),
                          x_convert_to_sdl (0x0), y_convert_to_sdl (0x80),
                          0, "   Up .. 'up'");
            al_draw_text (title->font, al_map_rgb (0x00, 0xff, 0xff),
                          x_convert_to_sdl (0x0), y_convert_to_sdl (0x70),
                          0, " Down .. 'down'");
            al_draw_text (title->font, al_map_rgb (0x00, 0xff, 0xff),
                          x_convert_to_sdl (0x0), y_convert_to_sdl (0x60),
                          0, " Left .. 'left'");
            al_draw_text (title->font, al_map_rgb (0x00, 0xff, 0xff),
                          x_convert_to_sdl (0x0), y_convert_to_sdl (0x50),
                          0, "Right .. 'right'");
            al_draw_text (title->font, al_map_rgb (0x00, 0xff, 0xff),
                          x_convert_to_sdl (0x0), y_convert_to_sdl (0x40),
                          0, " Jump .. LCTRL");
            al_draw_text (title->font, al_map_rgb (0xff, 0x00, 0xff),
                          x_convert_to_sdl (0x0), y_convert_to_sdl (0x28),
                          0, " Hold .. 'H'");
            al_draw_text (title->font, al_map_rgb (0xff, 0x00, 0xff),
                          x_convert_to_sdl (0x0), y_convert_to_sdl (0x20),
                          0, "Abort .. Escape +'H'");
            al_draw_text (title->font, al_map_rgb (0xff, 0xff, 0x80),
                          x_convert_to_sdl (0x10), y_convert_to_sdl (0x10),
                          0, "Press S to start");
            al_draw_text (title->font, al_map_rgb (0xff, 0xff, 0x80),
                          x_convert_to_sdl (0x10), y_convert_to_sdl (0x8),
                          0, "K to change keys");

            al_flip_display ();
         }
      }

      al_wait_for_event (title->queue, &event);
      switch (event.type)
      {
         case ALLEGRO_EVENT_TIMER:
            counter++;
            break;
         case ALLEGRO_EVENT_KEY_DOWN:
            if (event.keyboard.keycode == ALLEGRO_KEY_S)
               done = true;
            break;
      }

      if (done)
         break;
   }

   al_stop_timer (title->timer);
}

#define KEY_SEEN     1
#define KEY_RELEASED 2

static void game_loop (game_context_t *game)
{
   ALLEGRO_EVENT event;
   uint8_t key[ALLEGRO_KEY_MAX];
   int8_t dx = 0;
   int8_t dy = 0;
   chuck_vertical_t prev_state = horizontal;
   bool done = false;
   bool redraw = true;
   bool dump_sandbox = true;

   memset (key, 0, sizeof (key));

   al_start_timer (game->timer);

   while (true)
   {
      if ((redraw == true) && al_is_event_queue_empty (game->queue))
      {
         al_clear_to_color (al_map_rgb (0, 0, 0));
         draw_level (game);
         draw_ducks (game);
         draw_flying_duck (game);
         draw_chuck (game);
         animate_chuck_fall (game);
         animate_chuck_jump (game, prev_state);
         if (game->levels[game->player_context->current_level % 8].elevator == true)
            draw_elevator (game);

         // show it in the window
         al_flip_display ();

         if (dump_sandbox == true)
         {
            for (int i = OFFSET_Y_MAX - 1; i >= 0; i--)
            {
               for (int j = 0; j < OFFSET_X_MAX; j++)
                  printf ("%2x ", get_sandbox (game->player_context, j, i));
               printf ("\n");
            }
            dump_sandbox = false;
         }

         redraw = false;
      }

      al_wait_for_event (game->queue, &event);

      switch (event.type)
      {
         case ALLEGRO_EVENT_TIMER:
            if (key[ALLEGRO_KEY_UP])
               dy += 1;
            if (key[ALLEGRO_KEY_DOWN])
               dy += -1;
            if (key[ALLEGRO_KEY_LEFT])
               dx += -1;
            if (key[ALLEGRO_KEY_RIGHT])
               dx += 1;
            if (key[ALLEGRO_KEY_LCTRL])
               // jump
               if ((get_chuck_vertical_state (game) != in_jump) &&
                   (get_chuck_vertical_state (game) != falling))
               {
                  prev_state = get_chuck_vertical_state (game);
                  set_chuck_vertical_state (game, in_jump);
                  set_chuck_jump_dx (game, dx);
               }

#if 1
            if (key[ALLEGRO_KEY_SPACE])
            {
               game->player_context->current_level++;
               init_game_next_level (game);
               dump_sandbox = true;
            }
#endif
            if (key[ALLEGRO_KEY_ESCAPE])
               done = true;

            for (int i = 0; i < ALLEGRO_KEY_MAX; i++)
               key[i] &= KEY_SEEN;

            redraw = true;
            break;

         case ALLEGRO_EVENT_KEY_DOWN:
            key[event.keyboard.keycode] = KEY_SEEN | KEY_RELEASED;
            break;
         case ALLEGRO_EVENT_KEY_UP:
            key[event.keyboard.keycode] &= KEY_RELEASED;
            break;

         case ALLEGRO_EVENT_DISPLAY_CLOSE:
            done = true;
            break;
      }

      if (done)
         break;

      if (get_next_level (game))
      {
         game->player_context->current_level++;
         init_game_next_level (game);
         dump_sandbox = true;
      }

      if ((redraw == true) && al_is_event_queue_empty (game->queue))
      {
         move_duck (game);
         move_flying_duck (game);
         if (game->levels[game->player_context->current_level % 8].elevator == true)
            move_elevator (game);
         move_time (game);
         move_chuck (game, dx, dy);
         dx = dy = 0;

         if (get_back_to_title (game))
            break;

         if (get_life_lost (game))
         {
            init_game_restart_level (game);
            dump_sandbox = true;
         }
      }
   }

   al_stop_timer (game->timer);
}

int main (void)
{
   ALLEGRO_FONT *font;
   title_context_t title;
   player_context_t player;
   game_context_t game;
 
   must_init (al_init (), "allegro");
   must_init (al_install_keyboard (), "keyboard");

   al_set_new_display_option (ALLEGRO_SAMPLE_BUFFERS, 1, ALLEGRO_SUGGEST);
   al_set_new_display_option (ALLEGRO_SAMPLES, 8, ALLEGRO_SUGGEST);
   al_set_new_bitmap_flags (ALLEGRO_MIN_LINEAR | ALLEGRO_MAG_LINEAR);

   must_init (al_init_primitives_addon(), "primitives");

   // doesn't have a return value in allegro 5
   al_init_font_addon ();
   must_init (al_init_ttf_addon(), "ttf addon");

   font = al_load_ttf_font_stretch ("amstrad_cpc464.ttf", 64, 32, 0);
   must_init (font, "cpc464 ttf font");

   init_title_context (&title);
   init_player_context (&player);
   init_game_context (&game, &player);
   set_game_font (&game, font);
   set_title_font (&title, font);

   while (true)
   {
      title_loop (&title);
      game_loop (&game);
   }

   //al_destroy_display (disp);
   deinit_title_context (&title);
   deinit_game_context (&game);

   return (EXIT_SUCCESS);
}
