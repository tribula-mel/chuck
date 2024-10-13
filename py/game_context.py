from gfx_classic_levels import *
from game_types import *
from player_context import *

def adjust_n_ducks (n_ducks, level):
   if (level >= 8) and (level <= 15):
      return 0
   if level >= 24:
      return 5
   return n_ducks

def adjust_duck_speed (level, speed):
   if level >= 32:
      return 5
   return speed

# every finished 16 levels time drops by 100
def calc_level_time (level):
   time = 900 - 100 * int (level / 16)
   # limit to 100
   if time <= 0:
      time = 100

   return time

def calc_level_bonus (level):
   if level >= 8:
      bonus = 9000
   else:
      bonus = 1000 + 1000 * level

   return bonus

def init_duck_state (game):
   player = game.get_player_context ()
   level = player.get_current_level ()

   ducks_state = ducks_state_t ()
   n_ducks = adjust_n_ducks (game.levels[level % 8].n_ducks, level)
   ducks_state.n_ducks = n_ducks

   for i in range (0, n_ducks):
      el = element_state_t ()
      x, y = game.levels[level % 8].duck_offsets[i]
      el.tile_offset = [x, y]
      el.gfx_offset = [8 * x, 8 * y + 0x14]
      el.direction = direction_t.right.value
      el.sprite_state = 0
      ducks_state.element.append (el)
   ducks_state.duck_to_move = adjust_duck_speed (level, 8)
   game.ducks_state = ducks_state

def init_flying_duck_state (game):
   flying_duck = flying_duck_state_t ()
   element = element_state_t ()
   element.gfx_offset = [0x04, 0x9e]
   element.direction = direction_t.right.value
   element.sprite_state = 0
   flying_duck.dx = 0
   flying_duck.dy = 0
   flying_duck.el = element
   game.flying_duck_state = flying_duck

def init_elevator_state (game):
   level = game.get_player_context ().get_current_level ()
   if game.levels[level % 8].elevator_offset == None:
      return
   game.elevator_state = []
   for i in range (0, 2):
      x, y = game.levels[level % 8].elevator_offset[i]
      game.elevator_state.append ([x, y])

def init_seed_state (game):
   level = game.player_context.current_level
   game.seed_state.clear ()
   for i in range (0, game.levels[level % 8].n_seeds):
      seed_state = seed_state_t ()
      seed_state.tile_offset = game.levels[level % 8].seed_offsets[i]
      seed_state.present = True
      game.seed_state.append (seed_state)

def init_egg_state (game):
   level = game.player_context.current_level
   game.egg_state.clear ()
   for i in range (0, game.levels[level % 8].n_eggs):
      egg_state = egg_state_t ()
      egg_state.tile_offset = game.levels[level % 8].egg_offsets[i]
      egg_state.present = True
      game.egg_state.append (egg_state)

def init_chuck_state (game):
   el = element_state_t ()
   el.gfx_offset = [0x3c, 0x18]
   el.tile_offset = [0x7, 0x1]
   el.direction = direction_t.right.value
   el.sprite_state = 0
   cs = chuck_state_t ()
   cs.el = el
   game.chuck_state = cs

def init_game_context (player):
   game = game_context_t (player)
   game.add_level (level_classic_one)
   game.add_level (level_classic_two)
   game.add_level (level_classic_three)
   game.add_level (level_classic_four)
   game.add_level (level_classic_five)
   game.add_level (level_classic_six)
   game.add_level (level_classic_seven)
   game.add_level (level_classic_eight)
   return game

def init_game_play (game):
   player = game.get_player_context ()
   level = player.get_current_level ()

   init_duck_state (game)
   init_flying_duck_state (game)
   init_elevator_state (game)
   init_seed_state (game)
   init_egg_state (game)
   init_chuck_state (game)
   game.set_random ()

   # clear the sandbox

   # init game status
   player.set_score (0)
   player.set_bonus (calc_level_bonus (level))
   player.set_time (calc_level_time (level))
   #player.set_current_level (level)
   #set_back_to_title (game, False)

def init_game_next_level (game):
   player = game.player_context
   level = player.current_level

   init_duck_state (game)
   init_flying_duck_state (game)
   init_elevator_state (game)
   init_seed_state (game)
   init_egg_state (game)
   init_chuck_state (game)
   init_random_number_state (game)

   set_back_to_title (game, false)
   set_next_level (game, false)
   set_restart_level (game, false)
   set_life_lost (game, false)
   set_time_off (game, 0)

   # init player status
   set_bonus (player, calc_level_bonus (level))
   set_time (player, calc_level_time (level))
   set_n_eggs (player, 0)
   # clear the sandbox
   memset (player.sandbox, 0, OFFSET_X_MAX * OFFSET_Y_MAX)

def init_game_restart_level (game):
   player = game.player_context
   level = player.current_level

   init_duck_state (game)
   init_flying_duck_state (game)
   init_elevator_state (game)
   init_chuck_state (game)
   init_random_number_state (game)

   set_back_to_title (game, false)
   set_next_level (game, false)
   set_restart_level (game, false)
   set_life_lost (game, false)
   set_time_off (game, 0)

   # init player status
   set_time (player, calc_level_time (level))

class game_context_t:
   def __init__ (self, player_context):
      self.back_to_title = False
      self.next_level = False
      self.restart_level = False
      self.life_lost = False
      self.number_of_players = 1
      self.current_player = 1
      self.player_context = player_context
      self.levels = []
      self.chuck_state = None
      self.ducks_state = None
      self.flying_duck_state = None;
      self.elevator_state = None
      self.seed_state = []
      self.egg_state = []
      self.random = None
      self.time_off_ticks = None
      self.font = None
      self.queue = None
      self.timer = None
      self.display = None

   def get_chuck_gfx_off (self):
      return self.chuck_state.el.gfx_offset

   def get_chuck_tile_rel_off (self):
      return self.chuck_state.tile_rel_off

   def set_chuck_tile_off (self, off):
      tile_off = self.chuck_state.el.tile_offset
      self.chuck_state.el.tile_offset = off
      return tile_off == off
   def get_chuck_tile_off (self):
      return self.chuck_state.el.tile_offset

   def set_chuck_dv (self, off):
      self.chuck_state.dv = off
   def get_chuck_dv (self):
      return self.chuck_state.dv

   def deinit_game_context (self):
      al_destroy_timer (get_game_timer (self))
      al_destroy_event_queue (get_game_queue (self))

   def set_random (self):
      self.random = [0x76, 0x76, 0x76, 0x76]

   def add_level (self, level):
      self.levels.append (level)

   def set_time_off (self, ticks):
      self.time_off_ticks = ticks
   def get_time_off (self):
      return self.time_off_ticks

   def set_game_font (self, font):
      self.font = font
   def get_game_font (self):
      return self.font

   def set_game_queue (self, queue):
      self.queue = queue
   def get_game_queue (self):
      return self.queue

   def set_game_timer (self, timer):
      self.timer = timer
   def get_game_timer (self):
      return self.timer

   def set_game_display (self, display):
      self.display = display
   def get_game_display (self):
      return self.display

   def set_back_to_title (self, value):
      self.back_to_title = value
   def get_back_to_title (self):
      return self.back_to_title

   def set_next_level (self, value):
      self.next_level = value
   def get_next_level (self):
      return self.next_level

   def set_restart_level (self, value):
      self.restart_level = value
   def get_restart_level (self):
      return self.restart_level

   def set_life_lost (self, value):
      self.life_lost = value
   def get_life_lost (self):
      return self.life_lost

   def set_player_context (self, value):
      self.player_context = value
   def get_player_context (self):
      return self.player_context
