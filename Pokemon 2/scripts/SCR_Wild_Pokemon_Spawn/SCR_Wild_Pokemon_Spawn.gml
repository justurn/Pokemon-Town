function SCR_Wild_Pokemon_Spawn(pokemon_id, is_alpha)
{
	
	var pokemon_y = global.player_y;
	
	// Minimum distance pokemons must be away from the player and other pokemons
	var min_distance = 300;
	var side_buffer = 50;

	var pokemon_x;
	
	var valid_position = false;
	
	// Create event for OBJ_Wild_Pokemon
	var pokemon_sprite = global.Dex_Sprites[pokemon_id];
	var pokemon_name = global.Dex_Names[pokemon_id];
	
	// Find a valid position for the pokemon
	while (!valid_position)
	{
		// Generate a random x position within the room
		pokemon_x = random_range(side_buffer , room_width - side_buffer) div 1;
					
		// Check if the position is valid
		valid_position = true;

		// Check distance from the player
		if (abs(pokemon_x - OBJ_Player.x) < min_distance)
		{
			valid_position = false;
		}
	}
	
	if (is_alpha && global.wild_pokemon_a_x != -1)
	{
		pokemon_x = global.wild_pokemon_a_x
	}
	
	if (!is_alpha && global.wild_pokemon_b_x != -1)
	{
		pokemon_x = global.wild_pokemon_b_x
	}
	
	// Create the pokemon instance
	if (is_alpha)
	{
		var pokemon_instance = instance_create_layer(pokemon_x, pokemon_y, "Instances", OBJ_Town_Pokemon_Wild_A);
		pokemon_instance.is_alpha = is_alpha;
		pokemon_instance.wild_pokemon_id = pokemon_id;
	}
	else
	{
		var pokemon_instance = instance_create_layer(pokemon_x, pokemon_y, "Instances", OBJ_Town_Pokemon_Wild_B);
		pokemon_instance.is_alpha = is_alpha;
		pokemon_instance.wild_pokemon_id = pokemon_id;
	}

	show_debug_message("Wild " + string(pokemon_name) + " Spawned at Location: " + string(pokemon_x))
}        