// Step Event of OBJ_Building

// F-014: Foundation upgrade logic (building_id == 0)
if (building_id == 0) {
	// Clear just_built flag after first frame
	if (variable_instance_exists(id, "just_built") && just_built) {
		just_built = false;
		flashing = false;
		return;  // Skip interaction on first frame
	}

	// Foundation upgrades to next building in sequence (uses global.building_count)
	// F-014: Check if player has enough crates for upgrade
	var has_upgrade_crates = (global.item_held[1] >= global.cost_finish_building);

	if (global.build_allowed[global.building_count] && has_upgrade_crates) {
		if (OBJ_Player.x >= build_left && OBJ_Player.x <= build_right) {
			flashing = true;

			if (global.enter) {
				// F-014: Charge fixed building finish cost
				global.item_held[1] -= global.cost_finish_building;

				// Upgrade foundation to the next building
				building_id = global.building_count;  // Transform to actual building

				// Update segment
				var segment_id = floor(x / global.plot_width);
				global.segment_building[segment_id] = global.building_count;

				var building_name = global.building_name[global.building_count];
				show_debug_message("Foundation upgraded to " + string(building_name) + " (ID:" + string(global.building_count) + ") on segment " + string(segment_id));

				// Check if more buildings available
				if (global.building_count < array_length(global.building_sprites) - 1) {
					global.more_buildings = true;
					SCR_Plots_Spawn();  // Spawn new plots on cleared segments
				} else {
					global.more_buildings = false;
					show_debug_message("No more buildings left");
					global.item_held[1] = -1; // disable crates
				}

				// Increment building count for next building
				global.building_count += 1;

				// Spawn an egg
				SCR_Items_Spawn(0, 1);
			}
		} else {
			flashing = false;
		}
	} else {
		flashing = false;
	}
	return;  // Skip normal building entry logic
}

// Check if the player is within bounds on the X-axis
if (OBJ_Player.x >= build_left && OBJ_Player.x <= build_right && global.entry_allowed[building_id] = true)
{
	// Check if this is Adventure Building and Pokemon has no HP - don't flash
	if (building_id == 2 && global.pokemon_health <= 0) {
		flashing = false;
		return; // Exit without allowing any interaction
	}
	
	flashing = true;  // The plot should flash if the player is in bounds
    // Check if the player presses enter while within bounds
	var enter = false;
		
	if (global.enter) 
	{
		
		if (building_id != 1) // Check for Lab
		{
			// Use the correct item ID mapped to this building
			var item_id = global.building_item_id[building_id];
			if (item_id != -1) {
				global.item_held[item_id] += -1;
			}
		}
		room_goto(global.building_room[building_id]);
    } 
}
else
{
    flashing = false;  // No flashing when out of bounds
}
