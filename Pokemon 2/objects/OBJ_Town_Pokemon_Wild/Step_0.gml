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

// F-022: Dynamic patrol movement (after sprite initialization, before collision detection)
if (!needs_sprite && variable_instance_exists(id, "move_speed")) {
    // Patrol movement within assigned segment boundaries
    x += move_direction * move_speed;
    
    // Boundary detection and direction reversal
    if (x <= patrol_left && move_direction == -1) {
        move_direction = 1; // Turn right
    } else if (x >= patrol_right && move_direction == 1) {
        move_direction = -1; // Turn left  
    }
    
    // F-022: Mirror sprite based on movement direction
    // Most Pokemon sprites face left by default, so mirror when moving right
    if (move_direction == 1) {
        image_xscale = -scale_factor; // Mirror horizontally when moving right
    } else {
        image_xscale = scale_factor;  // Normal orientation when moving left
    }
    
    // F-022: Add bounce effect while moving (from OBJ_Town_Pokemon)
    if (count >= countmax) {
        y += bounce; // Move vertically by bounce amount
        count = 0;
        
        // Alternate bounce direction based on the cycle
        switch (cycle) {
            case 0:
            case 2:
                bounce = -bounce;
                break;
        }
        
        // Update the cycle (loop through 0 to 3)
        cycle = (cycle + 1) mod 4;
    }
    
    count += 1; // Increment the bounce counter
    
    // Update collision bounds for moving Pokemon (replaces static bounds)
    // Use abs() for sprite width since it might be negative when mirrored
    var actual_sprite_width = abs(sprite_width * scale_factor) / 2;
    wild_left = x - actual_sprite_width;
    wild_right = x + actual_sprite_width;
}

// Check if the player is within bounds on the X-axis
if (OBJ_Player.x  >= wild_left && OBJ_Player.x  <= wild_right && global.pokemon_health > 0)
{
	global.wild_pokemon_battle_id = wild_pokemon_id
	room_goto(RM_Battle);
}







