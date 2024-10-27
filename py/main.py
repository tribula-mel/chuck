#!/usr/bin/python3

import pygame
#from pygame.locals import *

from game_types import sprite_t
from game_types import colour_t
from game_types import direction_t
from gfx_sprites import *
from player_context import *
from game_context import *

duck_half_stoop_start = 0x4
duck_stoop            = 0x8
duck_half_stoop_end   = 0x10

N_PADDLES = 2

scale = 2

DOTS_PER_PIXEL_X = 4
DOTS_PER_PIXEL_Y = 2

# original game on cpc464 ran in mode 0
x_res = DOTS_PER_PIXEL_X * 160
y_res = DOTS_PER_PIXEL_Y * 200

# chuck tile x offset to pygame
def tile_x_convert_to_pygame (offset):
   # 8 pixels per chuck x offset
   return DOTS_PER_PIXEL_X * 8 * scale * offset

# chuck tile y offset to pygame
def tile_y_convert_to_pygame (offset):
   # 8 pixels per chuck y offset
   # plus difference between top and bottom left
   # plus we need to make a room for the sprite
   return scale * y_res - (DOTS_PER_PIXEL_Y * 8 * scale * (offset + 1)) + 1

# chuck x offset to pygame
def x_convert_to_pygame (x):
   return DOTS_PER_PIXEL_X * scale * x

# chuck tile y offset to sdl
def y_convert_to_pygame (y):
   # plus difference between top and bottom left
   # plus we need to make a room for the sprite
   return (scale * y_res - (DOTS_PER_PIXEL_Y * scale * (y + 1)) + 1)

def set_colour (colour):
   if colour == colour_t.pastel_yellow.value:
      return (0xff, 0xff, 0x80)
   elif colour == colour_t.bright_magenta.value:
      return (0xff, 0x00, 0xff)
   elif colour == colour_t.bright_cyan.value:
      return (0x00, 0xff, 0xff)
   elif colour == colour_t.green.value:
      return (0x00, 0x80, 0x00)
   elif colour == colour_t.bright_white.value:
      return (0xff, 0xff, 0xff)
   elif colour == colour_t.bright_red.value:
      return (0xff, 0x00, 0x00)
   elif colour == colour_t.pastel_blue.value:
      return (0x80, 0x80, 0xff)
   else:
      # black
      return (0x00, 0x00, 0x00)

def draw_element (screen, element, x, y, colour):
   index = 0
   x_backup = x
   mask = 0x80
   for i in range (0, element.height):
      for j in range (0, element.width):
         for k in range (0, 8):
            if element.sprite[index] & mask:
               w = DOTS_PER_PIXEL_X * scale
               h = DOTS_PER_PIXEL_Y * scale
               #al_draw_filled_rectangle(x, y, x + w, y + h, colour);
               pygame.draw.rect(screen, colour, [x, y, w, h])
            x += DOTS_PER_PIXEL_X * scale
            mask = mask >> 1
         mask = 0x80
         index += 1
      x = x_backup
      y += DOTS_PER_PIXEL_Y * scale

def draw_platform (screen, x, y, w):
   for i in range (0, w):
      draw_element (screen, platform, x, y, set_colour (platform.colour))
      x += DOTS_PER_PIXEL_X * 8 * scale

def draw_ladder (screen, x, y, h):
   for i in range (0, h):
      draw_element (screen, ladder, x, y, set_colour (ladder.colour))
      y -= DOTS_PER_PIXEL_Y * 8 * scale

def draw_digit (screen, x, y, digit):
   if digit == 0:
      draw_element (screen, digit_0, x, y, set_colour (digit_0.colour))
   elif digit == 1:
      draw_element (screen, digit_1, x, y, set_colour (digit_0.colour))
   elif digit == 2:
      draw_element (screen, digit_2, x, y, set_colour (digit_0.colour))
   elif digit == 3:
      draw_element (screen, digit_3, x, y, set_colour (digit_0.colour))
   elif digit == 4:
      draw_element (screen, digit_4, x, y, set_colour (digit_0.colour))
   elif digit == 5:
      draw_element (screen, digit_5, x, y, set_colour (digit_0.colour))
   elif digit == 6:
      draw_element (screen, digit_6, x, y, set_colour (digit_0.colour))
   elif digit == 7:
      draw_element (screen, digit_7, x, y, set_colour (digit_0.colour))
   elif digit == 8:
      draw_element (screen, digit_8, x, y, set_colour (digit_0.colour))
   elif digit == 9:
      draw_element (screen, digit_9, x, y, set_colour (digit_0.colour))

def draw_game_status (screen, game):
   x = 0
   y = 0
   number = []
   max_lives = 0
   player = game.get_player_context ()
   # draw STATUS (chuck original $8d3b)
   x = x_convert_to_pygame (0x0)
   y = y_convert_to_pygame (0xc7)
   draw_element (screen, score_txt, x, y, set_colour (score_txt.colour))
   draw_score (screen, game)
   # draw PLAYER (chuck original $8d67)
   x = x_convert_to_pygame (0x0)
   y = y_convert_to_pygame (0xb8)
   draw_element (screen, player_txt, x, y, set_colour (player_txt.colour))
   # draw player number
   x = x_convert_to_pygame (0x1b)
   y = y_convert_to_pygame (0xb7)
   draw_digit (screen, x, y, 1)
   # draw LEVEL (chuck original $8d80)
   x = x_convert_to_pygame (0x24)
   y = y_convert_to_pygame (0xb8)
   draw_element (screen, level_txt, x, y, set_colour (level_txt.colour))
   # draw level number
   y = y_convert_to_pygame (0xb7)
   player.set_current_level_gfx ()
   number = player.get_current_level_gfx ()
   for i in range (0, len (number)):
      x = x_convert_to_pygame (0x3b + 5*i)
      draw_digit (screen, x, y, number[i])

   draw_bonus (screen, game)
   # draw TIME (chuck original $8dda)
   x = x_convert_to_pygame (0x7e)
   y = y_convert_to_pygame (0xb8)
   draw_element (screen, time_txt, x, y, set_colour (time_txt.colour))
   # draw time numbers
   y = y_convert_to_pygame (0xb7)
   player.set_time_gfx ()
   number = player.get_time_gfx ()
   for i in range (0, 3):
      x = x_convert_to_pygame (0x91 + 5*i)
      draw_digit (screen, x, y, number[i])
   # draw lives
   y = y_convert_to_pygame (0xbd)
   max_lives = player.get_lives ()
   # there is only space for eight life sprites
   if max_lives > 8:
      max_lives = 8
   for i in range (0, max_lives):
      draw_element (screen, life, x_convert_to_pygame (0x1b + 4*i),
                    y, set_colour (life.colour))

def draw_level (screen, game):
   player = game.get_player_context ()
   current_level = player.get_current_level () % 8
   # draw game status at the top
   draw_game_status (screen, game)
   # draw platforms first
   for i in range (0, game.levels[current_level].n_platforms):
      off_y, off_x, end = game.levels[current_level].platform_offsets[i]
      x = tile_x_convert_to_pygame (off_x)
      y = tile_y_convert_to_pygame (off_y)
      n = end - off_x + 1
      draw_platform (screen, x, y, n)
      for j in range (0, n):
         player.set_sandbox (off_x + j, off_y, 0x01)
   # next draw ladders
   for i in range (0, game.levels[current_level].n_ladders):
      off_x, off_y, end = game.levels[current_level].ladder_offsets[i]
      x = tile_x_convert_to_pygame (off_x)
      y = tile_y_convert_to_pygame (off_y)
      n = end - off_y + 1
      draw_ladder (screen, x, y, n)
      for j in range (0, n):
         if player.get_sandbox (off_x, off_y + j) == 0x01:
            player.set_sandbox (off_x, off_y + j, 0x03)
         else:
            player.set_sandbox (off_x, off_y + j, 0x02)
   # eggs please
   for i in range (0, game.levels[current_level].n_eggs):
      if game.egg_state[i].present == True:
         off_x, off_y = game.levels[current_level].egg_offsets[i]
         x = tile_x_convert_to_pygame (off_x)
         y = tile_y_convert_to_pygame (off_y)
         draw_element (screen, egg, x, y, set_colour (egg.colour))
         player.set_sandbox (off_x, off_y, 0x04 + i * 0x10)
   # add some seeds
   for i in range (0, game.levels[current_level].n_seeds):
      if game.seed_state[i].present == True:
         off_x, off_y = game.levels[current_level].seed_offsets[i]
         x = tile_x_convert_to_pygame (off_x)
         y = tile_y_convert_to_pygame (off_y)
         draw_element (screen, seed, x, y, set_colour (seed.colour))
         player.set_sandbox (off_x, off_y, 0x08 + i * 0x10);
   # lastly draw cage
   x = x_convert_to_pygame (0x00)
   y = y_convert_to_pygame (0xae)
   draw_element (screen, cage, x, y, set_colour (cage.colour))

def draw_ducks (screen, game):
   n_ducks = game.ducks_state.n_ducks
   for i in range (0, n_ducks):
      off_x, off_y = game.ducks_state.element[i].gfx_offset
      x = x_convert_to_pygame (off_x)
      y = y_convert_to_pygame (off_y)
      direction = game.ducks_state.element[i].direction
      if direction == direction_t.right.value:
         if game.ducks_state.element[i].sprite_state == 0:
            draw_element (screen, duck_r, x, y, set_colour (duck_r.colour))
         elif game.ducks_state.element[i].sprite_state == 1:
            draw_element (screen, duck_rs, x, y, set_colour (duck_r.colour))
         elif game.ducks_state.element[i].sprite_state == duck_stoop_t.duck_half_stoop_start.value:
            draw_element (screen, duck_rbs, x, y, set_colour (duck_r.colour))
         elif game.ducks_state.element[i].sprite_state == duck_stoop_t.duck_stoop.value:
            draw_element (screen, duck_res, x, y, set_colour (duck_r.colour))
         elif game.ducks_state.element[i].sprite_state == duck_stoop_t.duck_half_stoop_end.value:
            draw_element (screen, duck_rbs, x, y, set_colour (duck_r.colour))
      if direction == direction_t.left.value:
         if game.ducks_state.element[i].sprite_state == 0:
            draw_element (screen, duck_l, x, y, set_colour (duck_r.colour))
         elif game.ducks_state.element[i].sprite_state == 1:
            draw_element (screen, duck_ls, x, y, set_colour (duck_r.colour))
         elif game.ducks_state.element[i].sprite_state == duck_stoop_t.duck_half_stoop_start.value:
            draw_element (screen, duck_lbs, x - x_convert_to_pygame (8), y, set_colour (duck_r.colour))
         elif game.ducks_state.element[i].sprite_state == duck_stoop_t.duck_stoop.value:
            draw_element (screen, duck_les, x - x_convert_to_pygame (8), y, set_colour (duck_r.colour))
         elif game.ducks_state.element[i].sprite_state == duck_stoop_t.duck_half_stoop_end.value:
            draw_element (screen, duck_lbs, x - x_convert_to_pygame (8), y, set_colour (duck_r.colour))
      if direction == direction_t.up.value:
         if game.ducks_state.element[i].sprite_state == 1:
            draw_element (screen, duck_brl, x, y, set_colour (duck_r.colour))
         elif game.ducks_state.element[i].sprite_state == 0:
            draw_element (screen, duck_bll, x, y, set_colour (duck_r.colour))
      if direction == direction_t.down.value:
         if game.ducks_state.element[i].sprite_state == 1:
            draw_element (screen, duck_brl, x, y, set_colour (duck_r.colour))
         elif game.ducks_state.element[i].sprite_state == 0:
            draw_element (screen, duck_bll, x, y, set_colour (duck_r.colour))

def draw_flying_duck (screen, game):
   off_x, off_y = game.flying_duck_state.el.gfx_offset
   x = x_convert_to_pygame (off_x)
   y = y_convert_to_pygame (off_y)
   direction = game.flying_duck_state.el.direction
   if direction == direction_t.right.value:
      if game.flying_duck_state.el.sprite_state == 0:
         draw_element (screen, flying_duck_rcbwd, x, y, set_colour (flying_duck_rcbwd.colour))
      elif game.flying_duck_state.el.sprite_state == 1:
         draw_element (screen, flying_duck_rsbwu, x, y, set_colour (flying_duck_rcbwd.colour))
   if direction == direction_t.left.value:
      if game.flying_duck_state.el.sprite_state == 0:
         draw_element (screen, flying_duck_lcbwd, x, y, set_colour (flying_duck_rcbwd.colour))
      elif game.flying_duck_state.el.sprite_state == 1:
         draw_element (screen, flying_duck_lsbwu, x, y, set_colour (flying_duck_rcbwd.colour))

def draw_score (screen, game):
   x = 0
   y = 0
   number = None
   player = game.get_player_context ()
   # draw "red block" (chuck original $8d46 - $8d59)
   #    this block is drawn for current active player
   #    x = player_number * $22 - $07
   #       player_number [1..4]
   #    currently only one player supported
   x = x_convert_to_pygame (0x1b)
   y = y_convert_to_pygame (0xc7)
   draw_element (screen, red_background, x, y, set_colour (red_background.colour))
   # draw 6 score digits
   y = y_convert_to_pygame (0xc6)
   number = player.get_score_gfx ()
   for i in range (0, len (number)):
      x = x_convert_to_pygame (0x1c + 5*i)
      draw_digit (screen, x, y, number[i])

def draw_bonus (screen, game):
   x = 0
   y = 0
   number = None
   player = game.get_player_context ()
   # draw BONUS (chuck original $8db3)
   x = x_convert_to_pygame (0x4e);
   y = y_convert_to_pygame (0xb8);
   draw_element (screen, bonus_txt, x, y, set_colour (bonus_txt.colour))
   # draw bonus numbers
   y = y_convert_to_pygame (0xb7)
   player.set_bonus_gfx ()
   number = player.get_bonus_gfx ()
   for i in range (0, 4):
      x = x_convert_to_pygame (0x66 + 5*i)
      draw_digit (screen, x, y, number[i])

def draw_chuck (screen, game):
   x, y = game.chuck_state.el.gfx_offset
   gfx_x = x_convert_to_pygame (x)
   gfx_y = y_convert_to_pygame (y)
   index = game.chuck_state.el.sprite_state
   draw_element (screen, chuck_sprites[index], gfx_x, gfx_y, set_colour (chuck_r.colour))

def draw_elevator (screen, game):
   player = game.get_player_context ()
   level = player.get_current_level () % 8
   if game.levels[level].elevator_offset == None:
      return
   for i in range (0, N_PADDLES):
      off_x, off_y = game.elevator_state[i]
      x = x_convert_to_pygame (off_x)
      y = y_convert_to_pygame (off_y)
      draw_element (screen, elevator, x, y, set_colour (elevator.colour))

def randomizer (game):
   a = game.random[0]
   a &= 0x48
   a += 0x38
   a = a << 1
   c = (a & 0x80) >> 7
   a = a << 1
   cp = (game.random[3] & 0x80) >> 7
   game.random[3] <<= 1
   game.random[3] |= c
   c = cp
   cp = (game.random[2] & 0x80) >> 7
   game.random[2] <<= 1
   game.random[2] |= c
   c = cp
   cp = (game.random[1] & 0x80) >> 7
   game.random[1] <<= 1
   game.random[1] |= c
   c = cp
   cp = (game.random[0] & 0x80) >> 7
   game.random[0] <<= 1
   game.random[0] |= c
   return game.random[0]

def number_of_moves (moves):
   count = 0
   for i in range (0, 4):
      if (moves & 0x1):
         count += 1
      moves >>= 1
   return count

def duck_one_move (game, moves, index):
   player = game.player_context
   x, y = game.ducks_state.element[index].gfx_offset
   tile_x, tile_y = game.ducks_state.element[index].tile_offset
   if moves == direction_t.up.value:
      game.ducks_state.element[index].sprite_state ^= 1
      y += 4
      if game.ducks_state.element[index].direction != direction_t.up.value:
         game.ducks_state.element[index].direction = direction_t.up.value
   elif moves == direction_t.down.value:
      game.ducks_state.element[index].sprite_state ^= 1
      y -= 4
      if game.ducks_state.element[index].direction != direction_t.down.value:
         game.ducks_state.element[index].direction = direction_t.down.value
   elif moves == direction_t.right.value:
      if game.ducks_state.element[index].direction != direction_t.right.value:
         game.ducks_state.element[index].direction = direction_t.right.value
      # check if a seed is in the way
      if player.get_sandbox (tile_x + 1, tile_y) & 0x08:
         game.ducks_state.element[index].sprite_state = duck_stoop_t.duck_half_stoop_start.value
      else:
         game.ducks_state.element[index].sprite_state ^= 1
         x += 4
   elif moves == direction_t.left.value:
      if game.ducks_state.element[index].direction != direction_t.left.value:
         game.ducks_state.element[index].direction = direction_t.left.value
      # check if a seed is in the way
      if (player.get_sandbox (tile_x - 1, tile_y) & 0x08) and (game.ducks_state.element[index].sprite_state == 0):
         game.ducks_state.element[index].sprite_state = duck_stoop_t.duck_half_stoop_start.value
      else:
         game.ducks_state.element[index].sprite_state ^= 1
         x -= 4
   game.ducks_state.element[index].gfx_offset = [x, y]
   game.ducks_state.element[index].tile_offset = [int (x / 8), int ((y - 0x14) / 8)]

def move_duck (game):
   if game.ducks_state.n_ducks == 0:
      return
   if game.ducks_state.duck_to_move > game.ducks_state.n_ducks:
      game.ducks_state.duck_to_move -= 1
      return
   moves = 0
   player = game.get_player_context ()
   index = game.ducks_state.duck_to_move - 1
   game.ducks_state.duck_to_move -= 1
   if game.ducks_state.duck_to_move == 0:
      game.ducks_state.duck_to_move = adjust_duck_speed (player.current_level, 8)
   x, y = game.ducks_state.element[index].tile_offset
   # is duck with spread legs ?
   if game.ducks_state.element[index].sprite_state == 0x01:
      # just move in the same direction as previous move
      moves = game.ducks_state.element[index].direction
      duck_one_move (game, moves, index)
      return
   # clear the seed
   if game.ducks_state.element[index].sprite_state == duck_stoop_t.duck_stoop.value:
      if game.ducks_state.element[index].direction == direction_t.right.value:
         if player.get_sandbox (x + 1, y) != 0:
            game.seed_state[player.get_sandbox (x + 1, y) >> 4].present = False
            player.set_sandbox (x + 1, y, 0)
      else:
         if player.get_sandbox (x - 1, y) != 0:
            game.seed_state[player.get_sandbox (x - 1, y) >> 4].present = False
            player.set_sandbox (x - 1, y, 0)
   # is seed collection animation over ?
   if game.ducks_state.element[index].sprite_state == duck_stoop_t.duck_half_stoop_end.value:
      # the seed is collected and animation is over, reset to upstraight position
      game.ducks_state.element[index].sprite_state = 0
      return
   # is duck collecting seed ?
   if game.ducks_state.element[index].sprite_state >= duck_stoop_t.duck_half_stoop_start.value:
      game.ducks_state.element[index].sprite_state <<= 1
      return
   # can move left (either platform or ladder over platform) ?
   if (y >= 1) and (x >= 1):
      if (player.get_sandbox (x - 1 , y - 1) & 0x1) == 0x01:
         moves |= direction_t.left.value
   # can move right (either platform or ladder over platform) ?
   if (y >= 1) and (x < 0x13):
      if (player.get_sandbox (x + 1 , y - 1) & 0x1) == 0x01:
         moves |= direction_t.right.value
   # can move up (either ladder or ladder over platform) ?
   if x < 0x14:
      if (player.get_sandbox (x, y + 2) & 0x2) == 0x02:
         moves |= direction_t.up.value
   # can move down (either ladder or ladder over platform) ?
   if (y >= 1) and (x < 0x14):
      if (player.get_sandbox (x, y - 1) & 0x2) == 0x02:
         moves |= direction_t.down.value
   if number_of_moves (moves) == 1:
      duck_one_move (game, moves, index)
      return
   # filter out impossible moves
   direction = game.ducks_state.element[index].direction
   if direction >= 4:
      direction ^= 0xf3
   else:
      direction ^= 0xfc
   moves &= direction
   if number_of_moves (moves) > 1:
      # randomize
      while True:
         random = randomizer (game)
         random &= moves
         if number_of_moves (random) == 1:
            break
      moves = random
   duck_one_move (game, moves, index)

def flying_duck_free (level):
   if level >= 8:
      return True
   return False

def skip_flying (game, flyd_x, flyd_y, flyd_dx, flyd_dy, state):
   flyd_x += flyd_dx
   flyd_y += flyd_dy
   game.flying_duck_state.el.gfx_offset = [flyd_x, flyd_y]
   game.flying_duck_state.dx = flyd_dx
   game.flying_duck_state.dy = flyd_dy
   state = (state & 0x1) ^ 0x1
   game.flying_duck_state.el.sprite_state = state

fd_wait = 8 # original chuck $96bb

# original chuck $985a
def move_flying_duck (game):
   global fd_wait
   flyd_x, flyd_y = game.flying_duck_state.el.gfx_offset
   flyd_dx = game.flying_duck_state.dx
   flyd_dy = game.flying_duck_state.dy
   state = game.flying_duck_state.el.sprite_state
   chuck_x, chuck_y = game.chuck_state.el.gfx_offset
   if fd_wait == 0:
      fd_wait = 8
      if flying_duck_free (game.player_context.current_level) == False:
         skip_flying (game, flyd_x, flyd_y, flyd_dx, flyd_dy, state)
         return
      if (flyd_x + 0x4) >= chuck_x:
         # flying duck is to the chuck's right
         flyd_dx -= 1
         if flyd_dx < -0x5:
            flyd_dx += 1
         game.flying_duck_state.el.direction = direction_t.left.value
      else:
         # flying duck is to the chuck's left
         flyd_dx += 1
         if (flyd_dx - 0x6) >= 0:
            flyd_dx -= 1
         game.flying_duck_state.el.direction = direction_t.right.value
      chuck_y += 0x4
      if chuck_y < flyd_y:
         # flying duck is above chuck
         flyd_dy -= 1
         if (flyd_dy + 0x6) < 0:
            flyd_dy += 1
      else:
         # flying duck is to the chuck's left
         flyd_dy += 1
         if (flyd_dy - 0x7) >= 0:
            flyd_dy -= 1
      if abs (flyd_y + flyd_dy) < 0x20:
         flyd_dy = -flyd_dy
      if (flyd_x + flyd_dx) >= 0x90:
         flyd_dx = -flyd_dx
      elif (flyd_x + flyd_dx) < 0x0:
         flyd_dx = -flyd_dx
      skip_flying (game, flyd_x, flyd_y, flyd_dx, flyd_dy, state)
   fd_wait -= 1
wait = 2

def move_elevator (game):
   global wait
   level = game.get_player_context ().get_current_level ()
   if game.levels[level % 8].elevator_offset == None:
      return
   if wait == 0:
      wait = 2
      x0, y0 = game.elevator_state[0]
      y0 += 2
      if y0 > 0xae:
        y0 = 4
      x1, y1 = game.elevator_state[1]
      y1 += 2
      if y1 > 0xae:
         y1 = 4
      game.elevator_state[0] = [x0, y0]
      game.elevator_state[1] = [x1, y1]
   wait -= 1

# original chuck code $94ca
def chuck_platform_collision (game, dx, dy):
   player = game.get_player_context ()
   tile_rel_off_x, tile_rel_off_y = game.get_chuck_tile_rel_off ()
   tile_off_x, tile_off_y = game.get_chuck_tile_off ()
   gfx_x, gfx_y = game.get_chuck_gfx_off ()
   if (dx > 0x0):
      # check the screen limit 152 (original chuck $94ee)
      if gfx_x >= 0x98:
         return True
      if tile_rel_off_x < 0x5: # original chuck $94f3
         return False
      tile_off_x += 0x1
   elif dx < 0x0:
      # check the screen limit 0 (original chuck $94da)
      if gfx_x == 0x0:
         return True
      if tile_rel_off_x > 0x2: # original chuck $94de
         return False
      tile_off_x -= 0x1
   elif dx == 0x0:
      return False
   if (dy == 0x02): # original chuck code $94e3 and $94f8
      return False
   backup = tile_rel_off_y + dy
   if (backup >= 0x0) and (backup < 0x8): # original chuck $94ff
      if player.get_sandbox (tile_off_x, tile_off_y) == 0x1:
         return True
   elif backup >= 0x0:
      tile_off_y += 0x1
      if player.get_sandbox (tile_off_x, tile_off_y) == 0x1:
         return True
   elif (backup < 0x0):
      tile_off_y -= 0x1
      if player.get_sandbox (tile_off_x, tile_off_y) == 0x1:
         return True
   if (dy >= 0x0):
      return False
   tile_off_y += 0x1
   if player.get_sandbox (tile_off_x, tile_off_y) == 0x1:
      return True
   return False

# original chuck code $9522
def do_set_chuck_state (game):
   gfx = game.get_chuck_gfx_off ()
   tile = game.get_chuck_tile_off ()
   tile_rel = game.get_chuck_tile_rel_off ()
   dx = game.chuck_state.dx
   dy = game.chuck_state.dy
   gfx[0] += dx
   gfx[1] += dy
   tile_rel[0] += dx
   if tile_rel[0] < 0:
      tile[0] -= 1
   if tile_rel[0] >= 8:
      tile[0] += 1
   tile_rel[0] &= 0x7
   tile_rel[1] += dy
   if tile_rel[1] < 0:
      tile[1] -= 1
   if tile_rel[1] >= 8:
      tile[1] += 1
   tile_rel[1] &= 0x7
   offc = game.chuck_state.offc
   if offc == 0:
      reg_c = 0x6
      reg_a = tile_rel[1]
   elif offc < 0:
      reg_c = 0x3
      reg_a = tile_rel[0]
   else:
      reg_c = 0x0
      reg_a = tile_rel[0]
   reg_a >>= 1
   if (reg_a & 0x2) != 0x0:
      reg_a &= 0x1
      reg_a <<= 1
   if game.chuck_state.vertical_state == 0x1:
      # ladder case
      if dy == 0:
         reg_a = 0
   else:
      if dx == 0:
         reg_a = 0
   reg_a += reg_c
   game.chuck_state.el.sprite_state = reg_a

# original chuck code $9242
def do_left_right (game):
   player = game.get_player_context ()
   game.chuck_state.dy = 0
   tile_rel = game.get_chuck_tile_rel_off ()
   tile_rel_x = tile_rel[0]
   tile_x, tile_y = game.get_chuck_tile_off ()
   tile_rel_x += game.chuck_state.dx
   if tile_rel_x < 0:
      tile_x -= 1
   if tile_rel_x >= 8:
      tile_x += 1
   tile_y -= 1
   if (player.get_sandbox (tile_x, tile_y) & 0x1) == 0:
      game.chuck_state.vertical_state = 0x3
      if ((game.chuck_state.dx + tile_rel_x) & 0x7) >= 4:
         game.chuck_state.offa = 0
         game.chuck_state.offb = -1
      else:
         game.chuck_state.offa = 1
         game.chuck_state.offb = 1
   dx = game.chuck_state.dx
   dy = game.chuck_state.dy
   if chuck_platform_collision (game, dx, dy) == True:
      game.chuck_state.dx = 0
   if game.chuck_state.dx != 0:
      game.chuck_state.offc = game.chuck_state.dx
   do_set_chuck_state (game)

# original chuck code $9215
def do_up_down (game):
   player = game.get_player_context ()
   tile_rel = game.get_chuck_tile_rel_off ()
   # aligned with a ladder ?
   if tile_rel[0] != 0x3:
      do_left_right (game)
      return
   tile_x, tile_y = game.get_chuck_tile_off ()
   if game.chuck_state.dy > 0:
      tile_y += 2
   else:
      tile_y -= 1
   if (player.get_sandbox (tile_x, tile_y) & 0x2) == 0:
      do_left_right (game)
      return
   game.chuck_state.dx = 0
   # on the ladder
   game.chuck_state.vertical_state = 0x1
   do_set_chuck_state (game)

# chuck original $93c1
def ____move_state (game, dx, dy):
   player = game.get_player_context ()
   tile_x, tile_y = game.get_chuck_tile_off ()
   tile_rel = game.get_chuck_tile_rel_off ()
   if (tile_rel[1] + dy) == 0x8:
      if (player.get_sandbox (tile_x, tile_y) & 0x1) != 0x0:
         game.chuck_state.vertical_state = 0x0
   elevator_action (game, dx, dy)

# chuck original $943c
def set_move_state (game, dx, dy):
   game.chuck_state.dx = dx
   game.chuck_state.dy = dy
   do_set_chuck_state (game)

# chuck original $93d0
def elevator_action (game, dx, dy):
   player = game.get_player_context ()
   level = player.get_current_level () % 8
   if game.levels[level].elevator_offset != None:
      gfx = game.get_chuck_gfx_off ()
      el0 = game.elevator_state[0]
      el1 = game.elevator_state[1]
      if ((gfx[0] > el0[0] - 1) and (gfx[0] < el0[0] + 0x9)):
         if el0[1] <= (gfx[1] - 0x11) and el0[1] >= (gfx[1] - 0x13 + dy):
            dy = el0[1] - gfx[1] + 0x12;
            game.chuck_state.offa = 0x0
            game.chuck_state.vertical_state = 0x04
            set_move_state (game, dx, dy)
            return
         elif el1[1] <= (gfx[1] - 0x11) and el1[1] >= (gfx[1] - 0x13 + dy):
            dy = el1[1] - gfx[1] + 0x12;
            game.chuck_state.offa = 0x0
            game.chuck_state.vertical_state = 0x04
            set_move_state (game, dx, dy)
            return
   if chuck_platform_collision (game, dx, dy) == True:
      dx = -dx
      game.chuck_state.offb = dx
   set_move_state (game, dx, dy)

# chuck original $93a5
def ___move_state (game, dx, dy):
   player = game.get_player_context ()
   tile_x, tile_y = game.get_chuck_tile_off ()
   tile_rel = game.get_chuck_tile_rel_off ()
   if (tile_rel[1] + dy) > 0x0:
      ____move_state (game, dx, dy)
      return
   if (player.get_sandbox (tile_x, tile_y - 1) & 0x1) == 0x0:
      elevator_action (game, dx, dy)
      return
   game.chuck_state.vertical_state = 0x0
   dy = -tile_rel[1]
   elevator_action (game, dx, dy)

# original chuck code $9385
def catch_on_ladder_down (game, dx, dy):
   player = game.get_player_context ()
   tile_x, tile_y = game.get_chuck_tile_off ()
   tile_rel = game.get_chuck_tile_rel_off ()
   if (player.get_sandbox (tile_x, tile_y) & 0x2) == 0x0:
      ___move_state (game, dx, dy)
      return
   if (player.get_sandbox (tile_x, tile_y + 1) & 0x2) == 0x0:
      ___move_state (game, dx, dy)
      return
   game.chuck_state.vertical_state = 0x1
   if ((tile_rel[1] + dy) & 0x1) != 0x0:
      dy -= 1
   set_move_state (game, dx, dy)

# original chuck code $9376
def catch_on_ladder (game, dx, dy):
   tile_rel = game.get_chuck_tile_rel_off ()
   game.chuck_state.vertical_state = 0x1
   if ((tile_rel[1] + dy) & 0x1) != 0x0:
      dy += 1
   set_move_state (game, dx, dy)

# chuck orginal $9385
def __move_state (game, dx, dy):
   player = game.get_player_context ()
   tile_x, tile_y = game.get_chuck_tile_off ()
   tile_rel = game.get_chuck_tile_rel_off ()
   if (player.get_sandbox (tile_x, tile_y) & 0x2) == 0x0:
      ___move_state (game, dx, dy)
      return
   if (player.get_sandbox (tile_x, tile_y + 1) & 0x2) == 0x0:
      ___move_state (game, dx, dy)
      return
   game.chuck_state.vertical_state = 0x1
   if ((tile_rel[1] + dy) & 0x1) != 0:
      dy -= 1
   set_move_state (game, dx, dy)

# chuck original 934d
def _move_state (game, dx, dy):
   player = game.get_player_context ()
   tile_x, tile_y = game.get_chuck_tile_off ()
   tile_rel = game.get_chuck_tile_rel_off ()
   if (tile_rel[0] + dx) == 0x3:
      if game.chuck_state.dy != 0:
         if game.chuck_state.dy < 0:
            __move_state (game, dx, dy)
            return
         if (player.get_sandbox (tile_x, tile_y + 1) & 0x2) != 0x0:
            catch_on_ladder (game, dx, dy)
            return
         y = tile_y + 1
         if tile_rel[1] >= 0x4:
            y += 1
         if (player.get_sandbox (tile_x, y) & 0x2) != 0x0:
            catch_on_ladder (game, dx, dy)
            return
   ___move_state (game, dx, dy)

# original chuck code $930c
def do_chuck_jump_state (game):
   player = game.get_player_context ()
   tile_x, tile_y = game.get_chuck_tile_off ()
   gfx = game.get_chuck_gfx_off ()
   offa = game.chuck_state.offa
   dx = game.chuck_state.offb
   offa >>= 2
   if offa >= 6:
      offa = 6
   offa = -offa + 2
   dy = offa
   game.chuck_state.offa += 1
   if offa <= 0:
      _move_state (game, dx, dy)
      return
   if ((player.get_sandbox (tile_x, tile_y)) & 0x1) != 0 or \
        player.get_sandbox (tile_x, tile_y + 1) != 1:
      if gfx[1] < 0xae:
         _move_state (game, dx, dy)
         return
   dy = -1
   game.chuck_state.offa = 0xc
   elevator_action (game, dx, dy)

# original chuck code $92fa
def do_jump_key (game):
   game.chuck_state.offa = 0
   game.chuck_state.vertical_state = 0x2
   game.chuck_state.offb = game.chuck_state.dx
   if game.chuck_state.dx != 0:
      game.chuck_state.offc = game.chuck_state.dx
   do_chuck_jump_state (game)

# chuck original $92c2
def __do_chuck_ladder (game):
   player = game.get_player_context ()
   tile_x, tile_y = game.get_chuck_tile_off ()
   tile_rel = game.get_chuck_tile_rel_off ()
   game.chuck_state.dx = 0
   if game.chuck_state.dy == 0:
      game.chuck_state.offc = 0
      do_set_chuck_state (game)
      return
   if tile_rel[1] != 0:
      game.chuck_state.offc = 0
      do_set_chuck_state (game)
      return
   if game.chuck_state.dy > 0:
      if (player.get_sandbox (tile_x, tile_y + 2) & 0x2) == 0:
         game.chuck_state.dy = 0
   else:
      if (player.get_sandbox (tile_x, tile_y - 1) & 0x2) == 0:
         game.chuck_state.dy = 0
   game.chuck_state.offc = 0
   do_set_chuck_state (game)

# original chuck code $9293
def do_chuck_ladder (game):
   player = game.get_player_context ()
   tile_x, tile_y = game.get_chuck_tile_off ()
   tile_rel = game.get_chuck_tile_rel_off ()
   if game.chuck_state.jump_key == 0x10:
      do_jump_key (game)
      return
   if game.chuck_state.dx == 0:
      __do_chuck_ladder (game)
      return
   if tile_rel[1] != 0:
      __do_chuck_ladder (game)
      return
   if (player.get_sandbox (tile_x, tile_y - 1) & 0x1) == 0:
      __do_chuck_ladder (game)
      return
   game.chuck_state.dy = 0
   game.chuck_state.vertical_state = 0x0
   dx = game.chuck_state.dx
   dy = game.chuck_state.dy
   if chuck_platform_collision (game, dx, dy) == True:
      game.chuck_state.dx = 0
   game.chuck_state.offc = 0
   do_set_chuck_state (game)

# original chuck code $9445
def do_chuck_fall (game):
   player = game.get_player_context ()
   tile_x, tile_y = game.get_chuck_tile_off ()
   tile_rel_x, tile_rel_y = game.get_chuck_tile_rel_off ()
   game.chuck_state.offa += 1
   offa = game.chuck_state.offa
   if offa < 0x4 and offa >= 0:
      game.chuck_state.dx = game.chuck_state.offb
      game.chuck_state.dy = -1
   elif offa >= 0x4:
      game.chuck_state.dx = 0
      offa >>= 2
      if offa >= 4:
         offa = 3
      offa = (-offa) - 1 # xor $ff
      game.chuck_state.dy = offa
   if (game.chuck_state.dy + tile_rel_y) < 0:
      if (player.get_sandbox (tile_x, tile_y - 1) & 0x1) != 0x0:
         game.chuck_state.vertical_state = 0x0
         game.chuck_state.dy = -tile_rel_y
   do_set_chuck_state (game)

# chuck code $948e
def do_chuck_elevator_state (game):
   if game.chuck_state.jump_key == 0x10:
      do_jump_key (game)
      return
   gfx = game.get_chuck_gfx_off ()
   el0 = game.elevator_state[0]
   if (el0[0] - 0x1) >= gfx[0] or (el0[0] - 0x1 + 0xa) < gfx[0]:
      game.chuck_state.offa = 0x0
      game.chuck_state.offb = 0x0
      game.chuck_state.vertical_state = 0x3
   game.chuck_state.dy = 0x1
   if game.chuck_state.dx != 0x0:
      game.chuck_state.offc = game.chuck_state.dx
   dx = game.chuck_state.dx
   dy = game.chuck_state.dy
   if chuck_platform_collision (game, dx, dy) == True:
      game.chuck_state.dx = 0
   do_set_chuck_state (game)

# original chuck code $91f9
def move_chuck_vert (game):
   if game.chuck_state.vertical_state == 0x1:
      do_chuck_ladder (game)
      return
   elif game.chuck_state.vertical_state == 0x2:
      do_chuck_jump_state (game)
      return
   elif game.chuck_state.vertical_state == 0x3:
      do_chuck_fall (game)
      return
   elif game.chuck_state.vertical_state == 0x4:
      do_chuck_elevator_state (game)
      return

# original chuck code $91c3
def move_chuck (game):
   # check first vertical movement state
   # e.g. if chuck is in a jump, on the elevator,
   # ladder, or in a fall
   if game.chuck_state.vertical_state != 0:
      move_chuck_vert (game)
      return
   # check if jump key is pressed
   if game.chuck_state.jump_key == 0x10:
      do_jump_key (game)
      return
   if game.chuck_state.dy != 0:
      do_up_down (game)
      return
   do_left_right (game)

# pygame setup
pygame.init()
screen = pygame.display.set_mode((x_res * scale, y_res * scale))
clock = pygame.time.Clock()
running = True
player = player_context_t ()
game = init_game_context (player)
init_game_play (game)
while running:
   # poll for events
   # pygame.QUIT event means the user clicked X to close your window
   keys = pygame.key.get_pressed ()
   if keys[pygame.K_RIGHT]:
      game.chuck_state.dx += 1
   if keys[pygame.K_LEFT]:
      game.chuck_state.dx += -1
   if keys[pygame.K_UP]:
      game.chuck_state.dy += 2
   if keys[pygame.K_DOWN]:
      game.chuck_state.dy += -2
   if keys[pygame.K_LCTRL]:
      game.chuck_state.jump_key = 0x10
   for event in pygame.event.get ():
      if event.type == pygame.QUIT:
         running = False
      elif event.type == pygame.KEYDOWN:
         if event.key == pygame.K_ESCAPE:
            running = False
            break
         if event.key == pygame.K_t:
            print ('tile = ', game.chuck_state.el.tile_offset)
            print ('tile_rel = ', game.chuck_state.tile_rel_off)
            print ('vertical_state = ', game.chuck_state.vertical_state)
            print ('gfx = ', game.chuck_state.el.gfx_offset)
         if event.key == pygame.K_n:
            level = player.get_current_level () + 1
            player.set_current_level (level)
            player.clear_sandbox ()
            init_game_play (game)
   # RENDER YOUR GAME HERE
   screen.fill((0,0,0))
   draw_level (screen, game)
   draw_ducks (screen, game)
   draw_flying_duck (screen, game)
   draw_elevator (screen, game)
   draw_chuck (screen, game)
   move_duck (game)
   move_flying_duck (game)
   move_elevator (game)
   move_chuck (game)
   game.chuck_state.dx = 0
   game.chuck_state.dy = 0
   game.chuck_state.jump_key = 0
   # flip() the display to put your work on screen
   pygame.display.flip ()
   clock.tick (35) # limits FPS to 60
pygame.quit()
