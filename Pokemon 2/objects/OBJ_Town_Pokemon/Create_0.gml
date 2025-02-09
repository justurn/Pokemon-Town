pokedex_id = global.pokemon_ID;	            
pokemon_name = global.Dex_Names[pokedex_id];
sprite_index = global.Dex_Sprites[pokedex_id];

// Movement Variables
pokemon_x = x;
pokemon_y = OBJ_Player.y;
last_direction = -1;
bounce = 3;
count = 0;
countmax = 10;
cycle = 0;
follow_distance = 90;

// Flashing Variables
flash_timer = 0;
flash_state = false; // Tracks if the Pokémon is currently flashing

// Sprite Scaling
scale_factor = 1.2;
image_yscale = scale_factor;
image_xscale = scale_factor;

show_debug_message("Tamed " + string(pokemon_name) + " Spawned")

if global.pokemon_experience >= 100
{

	global.pokemon_level += 1;
	global.pokemon_experience -= 100;
	show_debug_message(string(pokemon_name) + " has reached level: " + string(global.pokemon_level))
	
	// Evolution check
	var evolve_level = global.Dex_Evolve_Level[pokedex_id]
	if (evolve_level != -1 && global.pokemon_level >= evolve_level)
	{
		show_debug_message(string(pokemon_name) + " is evolving")
		room_goto(RM_Evolution)
	}
	else
	{
		instance_create_layer(x,y - 100,"Instances", OBJ_Level_Up);
	}

}