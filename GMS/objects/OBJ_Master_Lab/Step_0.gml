delay++

// F-019: Only allow egg navigation in egg_selection mode
if (lab_mode == "egg_selection") {
	if (global.right && delay > delay_limit) 
	{
		delay = 0;
		if (egg_count > 1)
		{
		    // Move to the next egg, loop around to 0 if the last egg is selected
		    global.selected_egg += 1;
			if global.selected_egg >= egg_count
			{
				global.selected_egg = 0;
			}
			// Update panel when switching eggs
			SCR_Update_Panel_Content();
		}
	}

	if (global.left && delay > delay_limit) 
	{
		delay = 0;
		if (egg_count > 1)
		{
		    global.selected_egg -= 1;
			if global.selected_egg == -1
			{
				global.selected_egg = egg_count - 1;
			}
			// Update panel when switching eggs
			SCR_Update_Panel_Content();
		}
	}
}


// Mode switching with up/down arrows (for future F-005 compatibility)
if (global.up && delay > delay_limit)
{
	delay = 0;
	// Future: Switch between egg_selection and pokedex modes
	show_debug_message("Up pressed - mode switching not yet implemented");
}

if (global.down && delay > delay_limit)
{
	delay = 0;
	// Future: Switch between egg_selection and pokedex modes
	show_debug_message("Down pressed - mode switching not yet implemented");
}

if (global.enter && delay > delay_limit && egg_count > 0)
{
	delay = 0;
	// Ensure selected_egg is within bounds before using it
	if (global.selected_egg >= egg_count) {
		global.selected_egg = 0;
	}
	
	if (lab_mode == "egg_selection") {
		// F-019: Transition to hatching mode instead of changing rooms
		lab_mode = "hatching";
		hatching_timer = 0;
		global.chosen_egg_type = global.egg_types_found[global.selected_egg];
		global.item_held[0] = -1; // Reset the held status of eggs.
		
		// Enable background change to test (sparkles still disabled)
		var bg_id = layer_background_get_id(layer_get_id("Background"));
		layer_background_sprite(bg_id, BG_Black);
		
		// Destroy incubator during hatching (cleaner than hiding)
		with (OBJ_Incubator) {
			instance_destroy();
		}
		
		// Create sparkles across right side of room (512x574 area) - they render behind egg
		// Extend coverage: start 100px left of right side (x=412) and 100px higher (y=-50)
		// Place sparkles with 44x40 sprite size, spacing ~50-70px apart
		for (var sparkle_x = 440; sparkle_x <= 1250; sparkle_x += random_range(50, 70)) {
			for (var sparkle_y = -50; sparkle_y <= 600; sparkle_y += random_range(50, 70)) {
				var sparkle = instance_create_layer(sparkle_x + random_range(-20, 20), 
													sparkle_y + random_range(-20, 20), 
													"Instances_1", OBJ_Sparkle);
				// De-sync sparkle animations by setting random image_index
				with (sparkle) {
					image_index = random(image_number);
				}
			}
		}
		
		show_debug_message("F-019: Starting egg hatching in lab mode with sparkle effects");
	}
}

// F-019: Post-hatch auto-return to town
if (lab_mode == "post_hatch") {
	hatching_timer++;
	
	// Auto-return to town after 2 seconds (120 frames)
	if (hatching_timer >= 120) {
		show_debug_message("F-019: Auto-returning to town after hatching");
		room_goto(RM_Town);
	}
}

// F-019: Hatching mode logic
if (lab_mode == "hatching") {
	hatching_timer++;
	
	// Shake animation (matches RM_Hatching timing and intensity)
	shake_offset_x = random_range(-2, 2);
	shake_offset_y = random_range(-1, 1);
	
	// Sprite transition at 60 frames (1 second at 60fps)
	if (hatching_timer == 60) {
		// Change egg sprite to cracked
		with (OBJ_Lab_Egg) {
			sprite_index = SPR_Cracked_Egg;
		}
		show_debug_message("F-019: Egg cracking animation started");
	}
	
	// Check for cracked egg animation completion
	var hatching_complete = false;
	with (OBJ_Lab_Egg) {
		if (sprite_index == SPR_Cracked_Egg && image_index >= image_number - 1) {
			hatching_complete = true;
		}
	}
	
	if (hatching_complete) {
		// Calculate hatched Pokemon using existing function
		var selected_type = global.types[global.chosen_egg_type];
		var prob_data = SCR_Calculate_Egg_Probabilities(selected_type);
		
		// Use weighted random selection (same logic as SCR_Hatching_Pokemon)
		var random_pick = irandom(prob_data.total_weight - 1);
		var cumulative_weight = 0;
		var selected_index = -1;

		for (var i = 0; i < prob_data.pokemon_count; i++) {
			cumulative_weight += prob_data.pokemon_weights[i];
			if (random_pick < cumulative_weight) {
				selected_index = i;
				break;
			}
		}

		// Store hatched Pokemon result
		if (selected_index != -1) {
			hatched_pokemon_id = prob_data.pokemon_ids[selected_index];
			show_debug_message("F-019: Hatched Pokemon ID: " + string(hatched_pokemon_id) + " (" + prob_data.pokemon_names[selected_index] + ")");
		} else {
			hatched_pokemon_id = 1; // Fallback to Bulbasaur if something goes wrong
			show_debug_message("F-019: ERROR: No Pokemon hatched, defaulting to ID 1");
		}
		
		// Create hatched Pokemon at egg position and prepare for auto-return to town
		if (instance_exists(OBJ_Lab_Egg)) {
			with (OBJ_Lab_Egg) {
				var hatched_pokemon = instance_create_layer(x, y, "Instances", OBJ_Lab_Pokemon);
				// Set the Pokemon properties directly on the instance
				hatched_pokemon.pokedex_id = other.hatched_pokemon_id;
				hatched_pokemon.pokemon_name = global.Dex_Names[other.hatched_pokemon_id];
				hatched_pokemon.sprite_index = global.Dex_Sprites[other.hatched_pokemon_id];
				hatched_pokemon.need_sprite = false; // Mark sprite as assigned
				
				sprite_index = SPR_Blank; // Hide the egg
			}
		}
		
		// Set timer for auto-return to town (show result for 2 seconds)
		lab_mode = "post_hatch";
		hatching_timer = 0; // Reset timer for post-hatch delay
	}
	
	// Timeout after 300 frames (5 seconds) - force completion
	if (hatching_timer > 300) {
		show_debug_message("F-019: Hatching timeout reached, forcing completion");
		lab_mode = "post_hatch";
		if (hatched_pokemon_id == -1) {
			hatched_pokemon_id = 1; // Fallback
		}
	}
}
