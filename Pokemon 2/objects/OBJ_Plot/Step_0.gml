// Check if the player is within bounds on the X-axis
if (OBJ_Player.x  >= plot_left && OBJ_Player.x  <= plot_right)
{
	// Get the next building type from the array
    var next_building = string(global.building_sprites[global.building_count]);

	if (global.build_allowed[global.building_count] = true)
	{
	    flashing = true;  // The plot should flash if the player is in bounds

	    if (global.enter) 
	    {
			//show_debug_message("New Building:" + string(next_building));
			
	        // Create the selected building
	        var new_building = instance_create_layer(x, y, "Instances", OBJ_Building);
			
			// Move the new building into the correct y position
			new_building.y = y + sprite_height/2;
			new_building.x = x;
			new_building.building_id = global.building_count;
			
			// Subtract the cost of bulding crates
			global.item_held[1] -= global.building_cost[global.building_count]
		
			global.buildings_x[global.building_count] = new_building.x;
			global.buildings_y[global.building_count] = new_building.y;
		
			var building_name = global.building_name[global.building_count]
		
			show_debug_message("Built " + string(building_name) + " at X: " + string(global.buildings_x[global.building_count]))

			if (global.building_count < array_length(global.building_sprites) - 1)
			{
				global.more_buildings = true
		        // Create a new plot at a valid position
		        SCR_Plots_Spawn();
			}
			else
			{
				global.more_buildings = false;
				show_debug_message("No more buildings left, skipping new plot");
				global.item_held[1] = -1; // disable crates, there are no more buildings
				show_debug_message("Attempted to remove crates");
			}
		
			// Increment index for next plot
	        global.building_count += 1;
			
			// Spawn an egg
			SCR_Items_Spawn(0,1);

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
