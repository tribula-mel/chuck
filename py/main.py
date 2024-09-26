import pygame

from game_types import sprite_t
from game_types import colour_t
from gfx_sprites import *

scale = 3

DOTS_PER_PIXEL_X = 4
DOTS_PER_PIXEL_Y = 2

# original game on cpc464 ran in mode 0
x_res = DOTS_PER_PIXEL_X * 160
y_res = DOTS_PER_PIXEL_Y * 200

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

def draw_level (screen):
   '''
   # draw game status at the top
   draw_game_status ()

   # draw platforms first
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

   # next draw ladders
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
'''
   # next draw cage
   x = x_convert_to_pygame (0x00)
   y = y_convert_to_pygame (0xae)
   draw_element (screen, cage, x, y, set_colour (cage.colour))

# pygame setup
pygame.init()
screen = pygame.display.set_mode((x_res * scale, y_res * scale))
clock = pygame.time.Clock()
running = True

while running:
    # poll for events
    # pygame.QUIT event means the user clicked X to close your window
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    # RENDER YOUR GAME HERE
    draw_level (screen)

    # flip() the display to put your work on screen
    pygame.display.flip()

    clock.tick(60)  # limits FPS to 60

pygame.quit()
