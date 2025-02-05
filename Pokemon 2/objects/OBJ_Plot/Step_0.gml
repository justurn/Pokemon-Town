// Check if the player is within bounds on the X-axis
if (OBJ_Player.x  >= plot_left && OBJ_Player.x  <= plot_right)
{
	// Get the next building type from the array
    var next_building = string(global.building_sprites[global.building_count]);

	if (global.build_allowed[global.building_count] = true)
	{
	    flashing = true;  // The plot should flash if the player is in bounds

	    // Check if the player presses enter while within bounds
	    if (keyboard_check_pressed(vk_enter)) 
	    {
			//show_debug_message("New Building:" + string(next_building));
			
	        // Create the selected building
	        var new_building = instance_create_layer(x, y, "Instances", OBJ_Building);
			
			// Move the new building into the correct y position
			new_building.y = y + sprite_height/2;
			new_building.x = x;
			new_building.building_id = global.building_count;
		
			global.buildings_x[global.building_count] = new_building.x;
			global.buildings_y[global.building_count] = new_building.y;
		
			show_debug_message("Building X:" + string(global.buildings_x[global.building_count]))

			if (global.building_count < array_length(global.building_sprites) - 1)
			{
				global.more_buildings = true
		        // Create a new plot at a valid position
		        SCR_Plots_Spawn();
			}
			else
			{
				global.more_buildings = false
				show_debug_message("No more buildings left, skipping new plot")
			}
		
			// Increment index for next plot
	        global.building_count += 1;

	        // Destroy the old plot
	        instance_destroy(self);
	    }
	}
	else
	{
	    flashing = false;  // No flashing when out of bounds
	}
}
else
{
	flashing = false;  // No flashing when out of bounds
}
