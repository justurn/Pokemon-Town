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
    pokedex_id += 1;  // Get new evolution ID
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
	
	var base_health = global.Dex_Health[pokedex_id];
	var base_speed = global.Dex_Speed[pokedex_id];
	var base_attack = global.Dex_Attack[pokedex_id];
	var base_SPattack = global.Dex_SPattack[pokedex_id];
	var base_SPdefence = global.Dex_SPdefence[pokedex_id];
	var base_defence = global.Dex_Defence[pokedex_id];
	
	global.pokemon_health_max = global.iv_health + base_health;
	global.pokemon_health = global.pokemon_health_max;
	global.pokemon_attack = global.iv_attack + base_attack;
	global.pokemon_SPattack = global.iv_SPattack + base_SPattack;
	global.pokemon_defence = global.iv_defence + base_defence;
	global.pokemon_SPdefence = global.iv_SPdefence + base_SPdefence;
	global.pokemon_speed = global.iv_speed + base_speed;
	
    room_goto(RM_Town);   // Return to previous room
}
