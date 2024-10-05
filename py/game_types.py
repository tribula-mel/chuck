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

class seed_state_t:
   def __init__ (self):
      self.tile_offset = None
      self.present     = False

class egg_state_t:
   def __init__ (self):
      self.tile_offset = None
      self.present     = False

class chuck_sprite_t (Enum):
   chuck_standing_one          = 0x1
   chuck_standing_two          = 0x2
   chuck_running_right_arm_one = 0x3
   chuck_standing_three        = 0x4
   chuck_running_right_arm_two = 0x5
   chuck_standing_four         = 0x6
   chuck_standing_five         = 0x7
   chuck_standing_six          = 0x8
   chuck_running_left_arm_one  = 0x9
   chuck_standing_seven        = 0xa
   chuck_running_left_arm_two  = 0xb
   chuck_standing_eight        = 0xc
   chuck_max                   = 0xc
   chuck_back_one              = 0xd
   chuck_back_left_arm         = 0xe
   chuck_back_two              = 0xf
   chuck_back_three            = 0x10
   chuck_back_right_arm        = 0x11
   chuck_back_four             = 0x12
   chuck_back_five             = 0x13
   chuck_back_max              = 0x13

class chuck_relative_x_tile_t (Enum):
   on_the_left_edge  = 0x0
   in_the_middle     = 0x3
   on_the_right_edge = 0x7

class chuck_relative_y_tile_t (Enum):
   on_the_bottom_edge = 0x0
   collect            = 0x2
   on_the_top_edge    = 0x6

class chuck_vertical_t (Enum):
   horizontal  = 0x0
   on_ladder   = 0x1
   in_jump     = 0x2
   falling     = 0x3
   on_elevator = 0x4

class exp_state_t (Enum):
   chuck_right       = 0x0
   # arm right legs spread
   chuck_right_ars   = 0x1
   # arm left legs spread
   chuck_right_als   = 0x2
   chuck_left        = 0x3
   chuck_left_als    = 0x4
   chuck_left_ars    = 0x5
   chuck_back        = 0x6
   # left arm down right arm up left leg straight right leg bent
   chuck_back_ladlls = 0x7
   # left arm up right arm down left leg bent right leg straight
   chuck_back_laullb = 0x8

class chuck_state_t:
   def __init__ (self):
      self.el               = None
      self.tile_rel_off_x   = 0
      self.tile_rel_off_y   = 0
      self.vertical_state   = 0
      self.vertical_counter = 0
      self.dvx              = 0
      self.dvy              = 0
      self.exp_state        = 0
      self.jump_dx          = 0
      self.offc             = 0
      self.dx               = 0
      self.dy               = 0

class flying_duck_state_t:
   def __init__ (self):
      self.el = None
      self.dx = 0
      self.dy = 0
