// Check for user input to change the selected egg
var right = false;

if (keyboard_check_pressed(vk_right))
{
	right = true
}
if (keyboard_check_pressed(ord("D")))
{
	right = true
}
if (gamepad_button_check_pressed(0, 15))
{
	right = true
}

if (right) 
{
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

var left = false;

if (keyboard_check_pressed(vk_left))
{
	left = true
}
if (keyboard_check_pressed(ord("A")))
{
	left = true
}
if (gamepad_button_check_pressed(0, 14))
{
	left = true
}


if (left) 
{
	if egg_count != 1
	{
	    global.selected_egg -= 1;
		if global.selected_egg == -1
		{
			global.selected_egg = egg_count - 1;
		}
	}
}

var enter = false

if (keyboard_check_pressed(vk_enter))
{
	enter = true;
}
if (gamepad_button_check_pressed(0, 0))
{
	enter = true;
}


if (enter)
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
