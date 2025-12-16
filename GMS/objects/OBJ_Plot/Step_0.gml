// Check if the player is within bounds on the X-axis
if (OBJ_Player.x  >= plot_left && OBJ_Player.x  <= plot_right)
{
	// Get the next building type from the array
    var next_building = string(global.building_sprites[global.building_count]);

	// F-014: Use fixed foundation cost
	var has_enough_crates = (global.item_held[1] >= global.cost_build_foundation);

	if (global.build_allowed[global.building_count] = true && has_enough_crates)
	{
	    flashing = true;  // The plot should flash if the player is in bounds and has enough crates

	    if (global.enter)
	    {
			// F-014: Create foundation (building_id = 0) instead of final building
	        var new_foundation = instance_create_layer(x, y, "Instances", OBJ_Building);

			// Set building properties (Y adjustment handled automatically by Draw event via just_created flag)
			new_foundation.x = x;
			new_foundation.building_id = 0;  // Foundation
			new_foundation.just_built = true;  // Flag to prevent immediate upgrade

			// F-014: Charge fixed foundation cost
			global.item_held[1] -= global.cost_build_foundation;

			// F-014: Store foundation in segment
			var segment_id = floor(new_foundation.x / global.plot_width);
			global.segment_building[segment_id] = 0;  // Foundation

			show_debug_message("Built foundation on segment " + string(segment_id) + " for " + string(global.cost_build_foundation) + " crates (building " + string(global.building_count) + ")")

	        // Destroy the old plot
	        instance_destroy(self);
	    }
	}
	else
	{
	    flashing = false;  // No flashing when out of bounds
	}
}
else
{
	flashing = false;  // No flashing when out of bounds
}
