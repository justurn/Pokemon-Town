// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SCR_Inputs()
{
	// Check if inputs are disabled for camera sequences
	if (global.inputs_disabled) {
		// Safety check - if no camera controller exists, re-enable inputs
		if (!instance_exists(OBJ_Camera_Controller)) {
			show_debug_message("Input lock detected but no camera controller found - re-enabling inputs");
			global.inputs_disabled = false;
			global.camera_sequence_active = false;
		} else {
			global.left = false;
			global.right = false;
			global.up = false;
			global.down = false;
			global.enter = false;
			global.shift = false;
			return; // Exit early, don't process any inputs
		}
	}
	
	global.left = false;
	global.right = false;
	global.up = false;
	global.down = false;
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
	
	// Simple cheat: Give crates to build Adventure Building (key "C")
	if (keyboard_check_pressed(ord("C")))
	{
		if (global.pokemon_ID != 0) {
			global.item_held[1] = 10; // Give enough crates
			global.item_held[12] = 1; // Give Adventure Map scroll
			show_debug_message("CHEAT: Crates and Adventure Map given!");
		} else {
			show_debug_message("CHEAT: Get a Pokemon first before building!");
		}
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
	
	// Use gamepad axis for up/down instead of buttons to avoid conflicts
	var axis_y = gamepad_axis_value(0, gp_axislv); // Left Stick Y-Axis
	if (axis_y < -axis_min)
	{ // Negative value means pushing up
		global.up = true
	}
	if (axis_y > axis_min)
	{ // Positive value means pushing down
		global.down = true
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

	
	// Up checks (keyboard and D-PAD)
	if (keyboard_check(vk_up))
	{
		global.up = true
	}
	if (keyboard_check(ord("W")))
	{
		global.up = true
	}
	if (gamepad_button_check(0, 12))
	{
		global.up = true
	}

	
	// Down checks (keyboard and D-PAD)  
	if (keyboard_check(vk_down))
	{
		global.down = true
	}
	if (keyboard_check(ord("S")))
	{
		global.down = true
	}
	if (gamepad_button_check(0, 13))
	{
		global.down = true
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
	if (gamepad_button_check_pressed(0, 0)) //A
	{
		global.enter = true;
	}
	if (gamepad_button_check_pressed(0, 10)) // left stick in
	{
		global.enter = true;
	}	
	
	// Shift checks (keyboard and controller)
	if (keyboard_check(vk_lshift))
	{
		global.shift = true;
	}
	if (gamepad_button_check(0, 1)) // B
	{
		global.shift = true
	}
	//if (gamepad_button_check_pressed(0, 0))
	//{
	//	global.shift = true;
	//}
	
}