// Check for user input to change the selected egg
if (keyboard_check_pressed(vk_right)|| keyboard_check_pressed(ord("D"))) 
{
    // Move to the next egg, loop around to 0 if the last egg is selected
    selected_egg += 1;
	if selected_egg == global.item_hidden[0]
	{
		selected_egg = 0;
	}
}

if (keyboard_check_pressed(vk_left)|| keyboard_check_pressed(ord("A"))) 
{
    selected_egg -= 1;
	if selected_egg == -1
	{
		selected_egg = global.item_hidden[0] - 1;
	}
}

if (keyboard_check_pressed(vk_enter)) 
{
	global.chosen_egg_type = global.egg_types[selected_egg];
	global.item_held[0] = -1; // Reset the held status of eggs.
	room_goto(RM_Hatching)
}


// Update the lab master's position to be relative to the selected egg
lab_master_x = egg_x[selected_egg];
lab_master_y = egg_y - 250;

// Position the lab master (adjust according to your sprite size and desired offset)
x = lab_master_x;  
y = lab_master_y;
