// Step Event of OBJ_Building

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
