/// @description F-014: Obstacle clearing logic with adjacency check

// Check if player is within bounds on X-axis (same as buildings/plots)
var player_in_range = (OBJ_Player.x >= obstacle_left && OBJ_Player.x <= obstacle_right);

// Check adjacency to town (town = has a building, including foundation ID 0)
var total_segments = array_length(global.spawn_segments);
var left_seg = segment_id - 1;
var right_seg = segment_id + 1;
var left_is_town = (segment_id > 0 && global.segment_building[left_seg] >= 0);
var right_is_town = (segment_id < total_segments - 1 && global.segment_building[right_seg] >= 0);
var is_adjacent_to_town = (left_is_town || right_is_town);

// Check if player has enough crates
var has_crates = (global.item_held[1] >= global.cost_clear_obstacle);

// F-014: Can only clear obstacles after lab is built (building_count > 1)
var lab_is_built = (global.building_count > 1);

// Flash red if: player in range AND has crates AND adjacent to town AND lab is built
flashing = (player_in_range && has_crates && is_adjacent_to_town && lab_is_built);

// Only allow clearing if adjacent to town segment
if (global.enter && player_in_range) {
	// Check if lab is built first
	if (!lab_is_built) {
		show_debug_message("Cannot clear: Must build lab first");
		exit;
	}

	if (!is_adjacent_to_town) {
		// TODO: Show message: "Must expand town from adjacent segments"
		show_debug_message("Cannot clear: Must expand from adjacent segments");
		exit;
	}

	if (global.item_held[1] >= global.cost_clear_obstacle) {  // Check crates
		global.item_held[1] -= global.cost_clear_obstacle;  // Deduct clearing cost
		global.segment_building[segment_id] = -1;  // Change from wild (-2) to empty plot (-1)

		// Remove all grass tiles from this segment
		with (OBJ_Grass) {
			if (segment_id == other.segment_id) {
				instance_destroy();
			}
		}

		// Create empty plot (dirt patch)
		var seg_x = segment_id * global.plot_width + (global.plot_width / 2);
		var empty_plot = instance_create_layer(seg_x, global.plot_y, "Instances", OBJ_Plot);
		empty_plot.segment_id = segment_id;

		show_debug_message("Cleared obstacle on segment " + string(segment_id) + " - now empty plot");

		instance_destroy();  // Remove obstacle
	} else {
		// TODO: Show message: "Need more crates"
		show_debug_message("Cannot clear: Need " + string(global.cost_clear_obstacle) + " crates");
	}
}