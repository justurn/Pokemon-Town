if room == RM_Town
{
	// Run the game sequence.
	SCR_Sequencing();
}


 // Check for any button press and print the ID
for (var i = 0; i < 16; i++) {
    if (gamepad_button_check_pressed(0, i)) {
        show_debug_message("GameSir Button Pressed: " + string(i));
    }
}





