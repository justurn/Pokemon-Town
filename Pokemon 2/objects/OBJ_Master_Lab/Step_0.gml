delay++

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

if (global.enter && egg_count > 0)
{
	// Ensure selected_egg is within bounds before using it
	if (global.selected_egg >= egg_count) {
		global.selected_egg = 0;
	}
	global.chosen_egg_type = global.egg_types_found[global.selected_egg];
	global.item_held[0] = -1; // Reset the held status of eggs.
	room_goto(RM_Hatching)
}
