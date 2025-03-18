delay++

if (global.right && delay > delay_limit) 
{
	delay = 0;
	if egg_count != 1
	{
	    // Move to the next egg, loop around to 0 if the last egg is selected
	    global.selected_egg += 1;
		if global.selected_egg >= egg_count
		{
			global.selected_egg = 0;
		}
	}
}

if (global.left && delay > delay_limit) 
{
	delay = 0;
	if egg_count != 1
	{
	    global.selected_egg -= 1;
		if global.selected_egg == -1
		{
			global.selected_egg = egg_count - 1;
		}
	}
}


if (global.enter)
{
	global.chosen_egg_type = global.egg_types_found[global.selected_egg];
	global.item_held[0] = -1; // Reset the held status of eggs.
	room_goto(RM_Hatching)
}


// Update the lab master's position to be relative to the selected egg
//lab_master_x = egg_x[global.selected_egg];
lab_master_x = egg_x[0];
lab_master_y = egg_y - 250;

// Position the lab master (adjust according to your sprite size and desired offset)
x = lab_master_x;  
y = lab_master_y;
