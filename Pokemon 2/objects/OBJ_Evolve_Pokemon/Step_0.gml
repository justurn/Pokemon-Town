evolution_timer += 1;
flash_timer += 1;

// 1. Flashing Effect (Toggle visibility every `flash_interval`)
if (flash_timer >= flash_interval) 
{
    flashing = !flashing;
    flash_timer = 0;
}

// 2. Scaling Effect (Subtle pulsing)
image_xscale = scale_factor + 0.1 * sin(evolution_timer * 0.1);
image_yscale = scale_factor + 0.1 * sin(evolution_timer * 0.1);

// 3. Transition to New Pokémon Sprite (After X frames)
if (evolution_timer == 90) 
{
	if (pokedex_id == 133) // special case for Eevee evolutions
	{
		pokedex_id = choose(134,135,136)
	}
	else
	{
		pokedex_id += 1;  // Get new evolution ID
	}
    sprite_index = global.Dex_Sprites[pokedex_id];  // Change sprite
}

// 4. Fade Out & Transition
if (evolution_timer > 120) 
{
    alpha_value -= 0.02;  // Gradually disappear
    if (alpha_value <= 0) 
	{
        evolution_complete = true;
    }
}

// 5. Move to New Room After Evolution
if (evolution_complete) 
{
    global.pokemon_ID = pokedex_id;  // Update Pokémon ID
	
	SCR_Pokemon_Stats();
	
	global.pokemon_health = global.pokemon_health_max;
	
    room_goto(RM_Town);   // Return to previous room
}
