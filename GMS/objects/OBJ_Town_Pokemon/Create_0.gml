pokedex_id = global.pokemon_ID;
pokemon_name = global.Dex_Names[pokedex_id];
sprite_index = global.Dex_Sprites[pokedex_id];

depth = 20;  // In front of grass (60), items (30), and wild Pokemon (70)

// Movement Variables
pokemon_x = x;
pokemon_y = OBJ_Player.y;
last_direction = -1;
bounce = 3;
count = 0;
countmax = 10;
cycle = 0;
follow_distance = sprite_width + 80;

// Flashing Variables
flash_timer = 0;
flash_state = false; // Tracks if the Pokémon is currently flashing

// Sprite Scaling
scale_factor = 2;
image_yscale = scale_factor;
image_xscale = scale_factor;

show_debug_message("Tamed " + string(pokemon_name) + " Spawned")