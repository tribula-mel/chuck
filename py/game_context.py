from gfx_classic_levels import *

# every finished 16 levels time drops by 100
def calc_level_time (level):
   time = 900 - 100 * (level / 16)
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
   player = game.player_context
   n_ducks = 0
   level = player.current_level

   n_ducks = adjust_n_ducks (game.levels[level % 8].n_ducks, level)
   game.ducks_state.n_ducks = n_ducks

   for i in range (0, n_ducks):
      game.ducks_state.ducks_state[i].tile_offset.x = game.levels[level % 8].duck_offsets[i].x
      game.ducks_state.ducks_state[i].tile_offset.y = game.levels[level % 8].duck_offsets[i].y
      game.ducks_state.ducks_state[i].gfx_offset.x = 8 * game.ducks_state.ducks_state[i].tile_offset.x
      game.ducks_state.ducks_state[i].gfx_offset.y = 8 * game.ducks_state.ducks_state[i].tile_offset.y + 0x14
      game.ducks_state.ducks_state[i].direction = right
      game.ducks_state.ducks_state[i].sprite_state = 0
   game.ducks_state.duck_to_move = adjust_duck_speed (level, 8)

def init_flying_duck_state (game):
   game.flying_duck_state.el.gfx_offset.x = 0x04
   game.flying_duck_state.el.gfx_offset.y = 0x9e
   game.flying_duck_state.el.direction = right
   game.flying_duck_state.el.sprite_state = 0
   game.flying_duck_state.dx = 0
   game.flying_duck_state.dy = 0

def init_elevator_state (game):
   level = game.player_context.current_level

   for i in range (0, N_PADDLES):
      game.elevator_state[i].gfx_offset.x = game.levels[level % 8].elevator_offset[i].x
      game.elevator_state[i].gfx_offset.y = game.levels[level % 8].elevator_offset[i].y

def init_seed_state (game):
   level = game.player_context.current_level

   for i in range (0, game.levels[level % 8].n_seeds):
      game.seed_state[i].tile_offset.x = game.levels[level % 8].seed_offsets[i].x
      game.seed_state[i].tile_offset.y = game.levels[level % 8].seed_offsets[i].y
      game.seed_state[i].present = true

def init_egg_state (game):
   level = game.player_context.current_level

   for i in range (0, game.levels[level % 8].n_eggs):
      game.egg_state[i].tile_offset.x = game.levels[level % 8].egg_offsets[i].x
      game.egg_state[i].tile_offset.y = game.levels[level % 8].egg_offsets[i].y
      game.egg_state[i].present = true

def init_chuck_state (game):
   game.chuck_state.el.gfx_offset.x = 0x3c
   game.chuck_state.el.gfx_offset.y = 0x18
   game.chuck_state.el.tile_offset.x = 0x7
   game.chuck_state.el.tile_offset.y = 0x1
   game.chuck_state.el.direction = right
   game.chuck_state.el.sprite_state = chuck_standing_one
   set_chuck_tile_rel_off_x (game, on_the_right_edge)
   set_chuck_tile_rel_off_y (game, on_the_bottom_edge)
   game.chuck_state.vertical_state = 0
   game.chuck_state.vertical_counter = 0

def init_random_number_state (game):
   game.random.number = 0x76767676

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
   level = game.player_context.current_level

   init_duck_state (game)
   init_flying_duck_state (game)
   init_elevator_state (game)
   init_seed_state (game)
   init_egg_state (game)
   init_chuck_state (game)
   init_random_number_state (game)

   # clear the sandbox
   memset (game.player_context.sandbox, 0, OFFSET_X_MAX * OFFSET_Y_MAX)

   # init game status
   set_score (game.player_context, 0)
   set_bonus (game.player_context, 1000)
   set_time (game.player_context, 900)
   set_current_level (game.player_context, level)
   set_back_to_title (game, false)

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
      self.seed_state = None
      self.egg_state = None
      self.random = None
      self.time_off_ticks = None
      self.font = None
      self.queue = None
      self.timer = None
      self.display = None

   def deinit_game_context (self):
      al_destroy_timer (get_game_timer (self))
      al_destroy_event_queue (get_game_queue (self))

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
