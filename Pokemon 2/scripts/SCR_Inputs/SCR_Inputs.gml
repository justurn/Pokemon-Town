// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SCR_Inputs()
{
	global.left = false;
	global.right = false;
	global.enter = false;
	global.shift = false;
	
	// log gamepad inputs
	var gamepad_logging = true;
	if gamepad_logging
	{
		 // Check for any button press and print the ID
		for (var i = 0; i < 16; i++) 
		{
		    if (gamepad_button_check_pressed(0, i)) 
			{
		        show_debug_message("GameSir Button Pressed: " + string(i));
		    }
		}
	}
	
	// toggle logs
	var log_old = global.log
	if (keyboard_check_pressed(ord("L")))
	{
		global.log = !global.log;
	}
	if (gamepad_button_check_pressed(0, 4))
	{
		global.log = !global.log;	
	}
	if (gamepad_button_check_pressed(0, 8))
	{
		global.log = !global.log;	
	}
	show_debug_log(global.log);
	
	if (global.log && log_old != global.log)
	{
		show_debug_overlay(global.log,true,2,0.5)
	}
	
	// Gamepad joystick input (Left stick movement)
	var axis_x = gamepad_axis_value(0, gp_axislh); // Left Stick X-Axis
	var axis_min = 0.15;
	if (axis_x < -axis_min)
	{ // Negative value means pushing left
	    global.left = true;
	}
	if (axis_x > axis_min)
	{ // Adjust threshold to ignore small joystick drifts
	    global.right = true;
	}


	// Right checks (keyboard and D-PAD)
	if (keyboard_check(vk_right))
	{
		global.right = true
	}
	if (keyboard_check(ord("D")))
	{
		global.right = true
	}
	if (gamepad_button_check(0, 15))
	{
		global.right = true
	}
	
	// Left checks (keyboard and D-PAD)
	if (keyboard_check(vk_left))
	{
		global.left = true
	}
	if (keyboard_check(ord("A")))
	{
		global.left = true
	}
	if (gamepad_button_check(0, 14))
	{
		global.left = true
	}
	
	// Enter checks (keyboard and controller)
	if (keyboard_check_pressed(vk_enter))
	{
		global.enter = true;
	}
	if (keyboard_check_pressed(vk_space))
	{
		global.enter = true;
	}
	if (gamepad_button_check_pressed(0, 0))
	{
		global.enter = true;
	}
	if (gamepad_button_check_pressed(0, 12))
	{
		global.enter = true
	}
	
	// Shift checks (keyboard and controller)
	if (keyboard_check(vk_lshift))
	{
		global.shift = true;
	}
	if (gamepad_button_check(0, 13))
	{
		global.shift = true
	}
	//if (gamepad_button_check_pressed(0, 0))
	//{
	//	global.shift = true;
	//}
	
}