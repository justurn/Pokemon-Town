// initialising elements after create event...
if (needs_sprite)
{
	sprite_index = global.Dex_Sprites[wild_pokemon_id];
	
	if (is_alpha)
	{
		global.wild_pokemon_a_x = x;
	}
	else
	{
		global.wild_pokemon_b_x = x;
	}

	// Sprite Scaling
	scale_factor = 2;
	image_yscale = scale_factor;
	image_xscale = scale_factor;

	wild_left = x - sprite_width/2;    // Left edge of the sprite
	wild_right = x + sprite_width/2;   // Right edge of the sprite
	
	needs_sprite = false
}

// Check if the player is within bounds on the X-axis
if (OBJ_Player.x  >= wild_left && OBJ_Player.x  <= wild_right && global.pokemon_health > 0)
{
	global.wild_pokemon_battle_id = wild_pokemon_id
	room_goto(RM_Battle);
}







