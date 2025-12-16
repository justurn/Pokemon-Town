/// @description F-014: Restore town state from segment data
/// Restores buildings, obstacles, plots based on persistent segment state
/// Does NOT modify state arrays - they already persist across rooms

function SCR_Town_Restore() {
	var total_segments = array_length(global.spawn_segments);

	show_debug_message("=== SCR_Town_Restore: Restoring town visuals ===");

	// Loop through all segments and spawn appropriate objects based on segment_building value
	for (var seg_id = 0; seg_id < total_segments; seg_id++) {
		var seg_x = seg_id * global.plot_width + (global.plot_width / 2);
		var state = global.segment_building[seg_id];

		// Spawn based on state value
		if (state >= 0) {
			// === BUILDING (0 = foundation, 1+ = actual buildings) ===
			var building = instance_create_layer(seg_x, global.plot_y, "Instances", OBJ_Building);
			building.building_id = state;
			building.just_created = true;  // Ensure Y position gets adjusted in Draw event
			show_debug_message("  Restored building " + string(state) + " on segment " + string(seg_id));

		} else if (state == -1) {
			// === EMPTY PLOT (cleared, ready for construction) ===
			var plot = instance_create_layer(seg_x, global.plot_y, "Instances", OBJ_Plot);
			plot.segment_id = seg_id;
			show_debug_message("  Spawned empty plot on segment " + string(seg_id));

		} else if (state == -2) {
			// === WILD (has obstacle, spawns Pokemon) ===
			var obstacle = instance_create_layer(seg_x, global.plot_y, "Instances", OBJ_Obstacle);
			obstacle.segment_id = seg_id;
			show_debug_message("  Spawned obstacle on wild segment " + string(seg_id));
		}
	}

	// F-014: Plots are now managed by SCR_Plots_Spawn() - no legacy plot_count system

	// Count town segments for debug
	var town_count = 0;
	var wild_count = 0;
	var plot_count = 0;
	for (var i = 0; i < total_segments; i++) {
		var state = global.segment_building[i];
		if (state >= 0) town_count++;       // Building or foundation
		else if (state == -1) plot_count++;  // Empty plot
		else if (state == -2) wild_count++;  // Wild
	}

	show_debug_message("=== Town restored: " + string(town_count) + " buildings, " + string(plot_count) + " plots, " + string(wild_count) + " wild ===");

	// Spawn grass tiles in wild segments
	SCR_Grass_Spawn();
}
