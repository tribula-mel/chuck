import pygame

from game_types import sprite_t
from game_types import colour_t
from gfx_sprites import *
from player_context import *
from game_context import *

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
   # lastly draw cage
   x = x_convert_to_pygame (0x00)
   y = y_convert_to_pygame (0xae)
   draw_element (screen, cage, x, y, set_colour (cage.colour))

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

# pygame setup
pygame.init()
screen = pygame.display.set_mode((x_res * scale, y_res * scale))
clock = pygame.time.Clock()
running = True

player = player_context_t ()
game = init_game_context (player)

while running:
    # poll for events
    # pygame.QUIT event means the user clicked X to close your window
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    # RENDER YOUR GAME HERE
    draw_level (screen, game)

    # flip() the display to put your work on screen
    pygame.display.flip()

    clock.tick(60)  # limits FPS to 60

pygame.quit()
