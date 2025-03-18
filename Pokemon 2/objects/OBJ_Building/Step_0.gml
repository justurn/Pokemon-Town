// Step Event of OBJ_Building

// Check if the player is within bounds on the X-axis
if (OBJ_Player.x >= build_left && OBJ_Player.x <= build_right && global.entry_allowed[building_id] = true)
{
	flashing = true;  // The plot should flash if the player is in bounds
    // Check if the player presses enter while within bounds
	var enter = false;
		
	if (global.enter) 
	{
		if (building_id != 1) // Check for Lab
		{
			global.item_held[building_id] += -1;
		}
		room_goto(global.building_room[building_id]);
    } 
}
else
{
    flashing = false;  // No flashing when out of bounds
}
