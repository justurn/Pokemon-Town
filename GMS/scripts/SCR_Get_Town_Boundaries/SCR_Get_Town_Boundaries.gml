/// @description Get the leftmost and rightmost segment indices that are in town
/// @return Array [min_segment_id, max_segment_id] or [-1, -1] if town is empty

function SCR_Get_Town_Boundaries() {
	var total_segments = array_length(global.spawn_segments);
	var min_seg = total_segments;  // Start with max possible value
	var max_seg = -1;               // Start with min possible value
	var has_town = false;

	// Scan all segments to find town boundaries
	for (var i = 0; i < total_segments; i++) {
		if (global.segment_building[i] >= 0) {  // Has building (including foundation) = is town
			min_seg = min(min_seg, i);
			max_seg = max(max_seg, i);
			has_town = true;
		}
	}

	// Return -1, -1 if no town exists
	if (!has_town) {
		return [-1, -1];
	}

	return [min_seg, max_seg];
}