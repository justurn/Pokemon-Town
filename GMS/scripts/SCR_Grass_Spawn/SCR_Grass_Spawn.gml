// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SCR_Grass_Spawn(){
	/// @description Spawn tall grass tiles in wild segments
	/// Tiles the 80px grass sprite across 600px wild segments at player Y level

	// Destroy any existing grass instances first to prevent duplicates
	with (OBJ_Grass) {
		instance_destroy();
	}

	var grass_y = global.player_y;  // Same Y as player (440)
	var grass_sprite_width = 80;    // SPR_Tall_Grass is 80px wide
	var tiles_per_segment = ceil(global.plot_width / grass_sprite_width);  // ~8 tiles per 600px segment

	var total_segments = array_length(global.spawn_segments);

	// Loop through all segments and spawn grass only on wild segments
	for (var seg_id = 0; seg_id < total_segments; seg_id++) {
		var state = global.segment_building[seg_id];

		// Only spawn grass on wild segments (state = -2)
		if (state == -2) {
			var seg_left = seg_id * global.plot_width;

			// Tile grass sprites across the segment width
			for (var tile_i = 0; tile_i < tiles_per_segment; tile_i++) {
				var grass_x = seg_left + (tile_i * grass_sprite_width) + (grass_sprite_width / 2);
				var grass_instance = instance_create_layer(grass_x, grass_y, "Instances", OBJ_Grass);
				grass_instance.segment_id = seg_id;  // Track which segment this grass belongs to
				grass_instance.depth = 60;  // Behind items (30) but in front of wild Pokemon (70)
			}
		}
	}

	show_debug_message("Grass spawned on all wild segments");
}