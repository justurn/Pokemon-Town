// Step Event for Menu
for (var i = 0; i < button_count; i++) {
    var button_y = start_y_position + (i * vertical_spacing);  // Calculate Y position for each button
    var min_y = button_y - sprite_height/2
	var max_y = button_y + sprite_height/2
	// Check if the mouse click occurs within the button's area
    if (mouse_check_button_pressed(mb_left) && mouse_x > min_x && mouse_x < max_x + sprite_width && mouse_y > min_y && mouse_y < max_y) 
	{
        switch (buttons[i]) 
		{
            case "New Game":
                // Start a new game (e.g., load new room or reset variables)
                room_goto(RM_Town);
                break;
            case "Load Game":
                // Load a saved game (e.g., load saved data or a room)
                room_goto(RM_Town);
                break;
            case "Quit Game":
                // Quit the game
                game_end();
                break;
        }
    }
}
