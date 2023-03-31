#include "game_context.h"
#include "gfx_classic_levels.h"
#include "common_defines.h"

extern uint8_t adjust_duck_speed (uint8_t level, uint8_t speed);
extern void set_chuck_tile_rel_off_x (game_context_t *game, uint8_t off);
extern void set_chuck_tile_rel_off_y (game_context_t *game, uint8_t off);
extern uint8_t adjust_n_ducks (uint8_t n_ducks, uint8_t level);
extern void must_init(bool test, const char *description);

// every finished 16 levels time drops by 100
static uint16_t calc_level_time (uint8_t level)
{
   int16_t time;

   time = 900 - 100 * (level / 16);
   // limit to 100
   if (time <= 0)
      time = 100;

   return time;
}

static uint16_t calc_level_bonus (uint8_t level)
{
   int16_t bonus;

   if (level >= 8)
      bonus = 9000;
   else
      bonus = 1000 + 1000 * level;

   return bonus;
}

static void init_duck_state (game_context_t *game)
{
   player_context_t *player = game->player_context;
   uint8_t n_ducks = 0;
   uint8_t level = player->current_level;

   n_ducks = adjust_n_ducks (game->levels[level % 8].n_ducks, level);
   game->ducks_state.n_ducks = n_ducks;

   for (int i = 0; i < n_ducks; i++)
   {
      game->ducks_state.ducks_state[i].tile_offset.x = game->levels[level % 8].duck_offsets[i].x;
      game->ducks_state.ducks_state[i].tile_offset.y = game->levels[level % 8].duck_offsets[i].y;
      game->ducks_state.ducks_state[i].gfx_offset.x = 8 * game->ducks_state.ducks_state[i].tile_offset.x;
      game->ducks_state.ducks_state[i].gfx_offset.y = 8 * game->ducks_state.ducks_state[i].tile_offset.y + 0x14;
      game->ducks_state.ducks_state[i].direction = right;
      game->ducks_state.ducks_state[i].sprite_state = 0;
   }
   game->ducks_state.duck_to_move = adjust_duck_speed (level, 8);
}

static void init_flying_duck_state (game_context_t *game)
{
   game->flying_duck_state.el.gfx_offset.x = 0x04;
   game->flying_duck_state.el.gfx_offset.y = 0x9e;
   game->flying_duck_state.el.direction = right;
   game->flying_duck_state.el.sprite_state = 0;
   game->flying_duck_state.dx = 0;
   game->flying_duck_state.dy = 0;
}

static void init_elevator_state (game_context_t *game)
{
   uint8_t level = game->player_context->current_level;

   for (int i = 0; i < N_PADDLES; i++)
   {
      game->elevator_state[i].gfx_offset.x = game->levels[level % 8].elevator_offset[i].x;
      game->elevator_state[i].gfx_offset.y = game->levels[level % 8].elevator_offset[i].y;
   }
}

static void init_seed_state (game_context_t *game)
{
   uint8_t level = game->player_context->current_level;

   for (int i = 0; i < game->levels[level % 8].n_seeds; i++)
   {
      game->seed_state[i].tile_offset.x = game->levels[level % 8].seed_offsets[i].x;
      game->seed_state[i].tile_offset.y = game->levels[level % 8].seed_offsets[i].y;
      game->seed_state[i].present = true;
   }
}

static void init_egg_state (game_context_t *game)
{
   uint8_t level = game->player_context->current_level;

   for (int i = 0; i < game->levels[level % 8].n_eggs; i++)
   {
      game->egg_state[i].tile_offset.x = game->levels[level % 8].egg_offsets[i].x;
      game->egg_state[i].tile_offset.y = game->levels[level % 8].egg_offsets[i].y;
      game->egg_state[i].present = true;
   }
}

static void init_chuck_state (game_context_t *game)
{
   game->chuck_state.el.gfx_offset.x = 0x3c;
   game->chuck_state.el.gfx_offset.y = 0x18;
   game->chuck_state.el.tile_offset.x = 0x7;
   game->chuck_state.el.tile_offset.y = 0x1;
   game->chuck_state.el.direction = right;
   game->chuck_state.el.sprite_state = chuck_standing_one;
   set_chuck_tile_rel_off_x (game, on_the_right_edge);
   set_chuck_tile_rel_off_y (game, on_the_bottom_edge);
   game->chuck_state.vertical_state = 0;
   game->chuck_state.vertical_counter = 0;
}

static void init_random_number_state (game_context_t *game)
{
   game->random.number = 0x76767676;
}

void init_game_context (game_context_t *game, player_context_t *player)
{
   ALLEGRO_TIMER *timer;
   ALLEGRO_EVENT_QUEUE *queue;
   ALLEGRO_DISPLAY* disp;
   int width = x_res * scale, height = y_res * scale;

   memset (game, 0, sizeof (game_context_t));

   game->number_of_players = 1;
   game->player_context = player;
   game->levels[0] = level_classic_one;
   game->levels[1] = level_classic_two;
   game->levels[2] = level_classic_three;
   game->levels[3] = level_classic_four;
   game->levels[4] = level_classic_five;
   game->levels[5] = level_classic_six;
   game->levels[6] = level_classic_seven;
   game->levels[7] = level_classic_eight;

   disp = al_create_display (width, height);
   must_init (disp, "display");

   timer = al_create_timer (1.0 / 30.0);
   must_init (timer, "game timer");

   queue = al_create_event_queue ();
   must_init (queue, "game queue");

   al_register_event_source (queue, al_get_display_event_source (disp));
   al_register_event_source (queue, al_get_timer_event_source (timer));

   set_game_queue (game, queue);
   set_game_timer (game, timer);
}

void init_game_play (game_context_t *game)
{
   uint8_t level = game->player_context->current_level;

   init_duck_state (game);
   init_flying_duck_state (game);
   init_elevator_state (game);
   init_seed_state (game);
   init_egg_state (game);
   init_chuck_state (game);
   init_random_number_state (game);

   // clear the sandbox
   memset (game->player_context->sandbox, 0, OFFSET_X_MAX * OFFSET_Y_MAX);

   // init game status
   set_score (game->player_context, 0);
   set_bonus (game->player_context, 1000);
   set_time (game->player_context, 900);
   set_current_level (game->player_context, level);
   set_back_to_title (game, false);
}

void init_game_next_level (game_context_t *game)
{
   player_context_t *player = game->player_context;
   uint8_t level = player->current_level;

   init_duck_state (game);
   init_flying_duck_state (game);
   init_elevator_state (game);
   init_seed_state (game);
   init_egg_state (game);
   init_chuck_state (game);
   init_random_number_state (game);

   set_back_to_title (game, false);
   set_next_level (game, false);
   set_restart_level (game, false);
   set_life_lost (game, false);
   set_time_off (game, 0);

   // init player status
   set_bonus (player, calc_level_bonus (level));
   set_time (player, calc_level_time (level));
   set_n_eggs (player, 0);
   // clear the sandbox
   memset (player->sandbox, 0, OFFSET_X_MAX * OFFSET_Y_MAX);
}

void init_game_restart_level (game_context_t *game)
{
   player_context_t *player = game->player_context;
   uint8_t level = player->current_level;

   init_duck_state (game);
   init_flying_duck_state (game);
   init_elevator_state (game);
   init_chuck_state (game);
   init_random_number_state (game);

   set_back_to_title (game, false);
   set_next_level (game, false);
   set_restart_level (game, false);
   set_life_lost (game, false);
   set_time_off (game, 0);

   // init player status
   set_time (player, calc_level_time (level));
}

void deinit_game_context (game_context_t *game)
{
   al_destroy_timer (get_game_timer (game));
   al_destroy_event_queue (get_game_queue (game));
}

void set_time_off (game_context_t *game, uint8_t ticks)
{
   game->time_off_ticks = ticks;
}

uint8_t get_time_off (game_context_t *game)
{
   return (game->time_off_ticks);
}

void set_game_font (game_context_t *game, ALLEGRO_FONT *font)
{
   game->font = font;
}

ALLEGRO_FONT *get_game_font (game_context_t *game)
{
   return (game->font);
}

void set_game_queue (game_context_t *game, ALLEGRO_EVENT_QUEUE *queue)
{
   game->queue = queue;
}

ALLEGRO_EVENT_QUEUE *get_game_queue (game_context_t *game)
{
   return (game->queue);
}

void set_game_timer (game_context_t *game, ALLEGRO_TIMER *timer)
{
   game->timer = timer;
}

ALLEGRO_TIMER *get_game_timer (game_context_t *game)
{
   return (game->timer);
}

void set_back_to_title (game_context_t *game, bool value)
{
   game->back_to_title = value;
}

bool get_back_to_title (game_context_t *game)
{
   return (game->back_to_title);
}

void set_next_level (game_context_t *game, bool value)
{
   game->next_level = value;
}

bool get_next_level (game_context_t *game)
{
   return (game->next_level);
}

void set_restart_level (game_context_t *game, bool value)
{
   game->restart_level = value;
}

bool get_restart_level (game_context_t *game)
{
   return (game->restart_level);
}

void set_life_lost (game_context_t *game, bool value)
{
   game->life_lost = value;
}

bool get_life_lost (game_context_t *game)
{
   return (game->life_lost);
}
