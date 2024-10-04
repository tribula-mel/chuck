class player_context_t:
   def __init__ (self):
      # player number 1 .. 4
      self.player_number = 1
      self.current_level = 0
      self.gfx_current_level = []
      # score 0 .. 999990 inclusive
      self.score = 0
      self.gfx_score = [0, 0, 0, 0, 0, 0]
      # time 0 .. 900 inclusive
      self.time = 1000
      self.gfx_time = []
      # bonus 0 .. 9000
      self.bonus = 900
      self.gfx_bonus = []
      # lives new life every 10000 score points max 255
      self.lives = 5
      # movement context
      self.sandbox = {}
      # collected eggs
      self.n_of_eggs = 0

   def get_player_number (self):
      return self.player_number
   def set_player_number (self, num):
      self.player_number = num

   def get_current_level (self):
      return self.current_level
   def set_current_level (self, num):
      if num > 255:
         num = 0
      self.current_level = num
      self.set_current_level_gfx ()
   def get_current_level_gfx (self):
      return self.gfx_current_level
   def set_current_level_gfx (self):
      self.gfx_current_level = convert_num_to_gfx (self.current_level + 1, 100, 3)

   def get_score (self):
      return self.score
   def set_score (self, num):
      self.score = num
      self.set_score_gfx ()
   def get_score_gfx (self):
      return self.gfx_score
   def set_score_gfx (self):
      prior = self.gfx_score[1]
      self.gfx_score = convert_num_to_gfx (self.score, 100000, 6)
      # new life every 10000 points
      if (prior != self.gfx_score[1]):
         # max is 255 lives
         if (get_lives (self) < 0xff):
            set_lives (self, get_lives (self) + 1)

   def get_time (self):
      return self.time
   def set_time (self, num):
      self.time = num
      self.set_time_gfx ()
   def get_time_gfx (self):
      return self.gfx_time
   def set_time_gfx (self):
      self.gfx_time = convert_num_to_gfx (self.time, 100, 3)

   def get_bonus (self):
      return (self.bonus)
   def set_bonus (self, num):
      self.bonus = num
      self.set_bonus_gfx ()
   def get_bonus_gfx (self):
      return self.gfx_bonus
   def set_bonus_gfx (self):
      self.gfx_bonus = convert_num_to_gfx (self.bonus, 1000, 4)

   def get_lives (self):
      return self.lives
   def set_lives (self, num):
      self.lives = num

   def get_sandbox (self, x, y):
      if (x,y) in self.sandbox:
         return self.sandbox[(x, y)]
      else:
         return 0
   def set_sandbox (self, x, y, content):
      self.sandbox[(x, y)] = content

   def get_n_eggs (self):
      return (self.n_of_eggs)
   def set_n_eggs (self, num):
      self.n_of_eggs = num

def convert_num_to_gfx (num, base, level):
   gfx = []
   for i in range (0, level):
      gfx.append (int (num / base))
      num -= gfx[i] * base
      base /= 10
   return gfx
