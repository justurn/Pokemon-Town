if room == RM_Town
{
	// Run the game sequence.
	SCR_Sequencing();
}

var gamepad_logging = false;

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

if (keyboard_check_pressed(ord("L")))
{
	global.log = !global.log;
}
if (gamepad_button_check_pressed(0, 4))
{
	global.log = !global.log;	
}

show_debug_log(global.log);
show_debug_overlay(global.log,true,2,0.5)


