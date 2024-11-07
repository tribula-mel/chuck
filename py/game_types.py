from enum import Enum

class colour_t (Enum):
   pastel_yellow  = 0x02
   bright_magenta = 0x08
   bright_cyan    = 0x20
   green          = 0x80
   bright_white   = 0x88
   bright_red     = 0xa0
   pastel_blue    = 0xa1

# tile based offsets for tiles 8x8
# these include platforms, ladders, eggs, and seeds

class level_t:
   def __init__ (self, n_platforms, n_ladders, n_eggs, n_seeds, n_ducks,
                 platform_offsets, ladder_offsets, elevator_offset,
                 egg_offsets, seed_offsets, duck_offsets):
      self.n_platforms      = n_platforms
      self.n_ladders        = n_ladders
      self.n_eggs           = n_eggs
      self.n_seeds          = n_seeds
      self.n_ducks          = n_ducks
      self.platform_offsets = platform_offsets
      self.ladder_offsets   = ladder_offsets
      self.elevator_offset  = elevator_offset
      self.egg_offsets      = egg_offsets
      self.seed_offsets     = seed_offsets
      self.duck_offsets     = duck_offsets

class sprite_t:
   def __init__ (self, width, height, colour, sprite):
      self.width  = width
      self.height = height
      self.colour = colour
      self.sprite = sprite

class direction_t (Enum):
   left  = 0x1
   right = 0x2
   up    = 0x4
   down  = 0x8
   jump  = 0x10

class element_state_t:
   def __init__ (self):
      self.tile_offset  = 0
      self.gfx_offset   = 0
      self.direction    = None
      self.sprite_state = None

class duck_stoop_t (Enum):
   duck_half_stoop_start = 0x4
   duck_stoop            = 0x8
   duck_half_stoop_end   = 0x10

class ducks_state_t:
   def __init__ (self):
      self.element = []
      self.duck_to_move = 0
      self.n_ducks      = 0

class chuck_state_t:
   def __init__ (self):
      self.el               = None
      # rel_x_right_edge=0x7 rel_y_bottom_edge=0x0
      self.tile_rel_off     = [0x7, 0x0]
      self.vertical_state   = 0
      self.vertical_counter = 0
      self.offa             = 0
      self.offb             = 0
      self.offc             = 1
      self.dx               = 0
      self.dy               = 0
      self.jump_key         = 0

class flying_duck_state_t:
   def __init__ (self):
      self.el = None
      self.dx = 0
      self.dy = 0
