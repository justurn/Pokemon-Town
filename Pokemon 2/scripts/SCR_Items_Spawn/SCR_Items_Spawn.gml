function SCR_Items_Spawn(item_id,quantity)
{
	
	// Number of items to spawn
	var i = item_id
	var item_count = quantity
	var item_y = global.player_y;
	var item_name = global.item_name[i];
	
	// Minimum distance items must be away from the player and other items
	var min_distance = 300;
	var side_buffer = 50;

	// Array to track spawned items
	var item_positions = [];
		
	var item_x
	
	// Spawn items
	for (var j = 0; j < item_count; j++) 
	{
		var valid_position = false;

		// Find a valid position for the item
		while (!valid_position)
		{
			// Generate a random x position within the room
			item_x = random_range(side_buffer , room_width - side_buffer) div 1;
					
			// Check if the position is valid
			valid_position = true;

			// Check distance from the player
			if (abs(item_x - OBJ_Player.x) < min_distance)
			{
			    valid_position = false;
			    continue;
			}

			// Check distance from other items
			for (var k = 0; k < array_length(item_positions); k++)
			{
			    var other_item_x = item_positions[k];
			    if (abs(item_x - other_item_x) < min_distance)
				{
			        valid_position = false;
			        break;
			    }
			}
		}

		// Create the item instance
		var item_instance = instance_create_layer(item_x, item_y, "Instances", OBJ_Item);
		item_instance.item_counter = global.item_counter;
		
		global.item_info_positionx[global.item_counter] = item_x
		global.item_info_id[global.item_counter] = i;
		global.item_info_found[global.item_counter] = false;

		if (item_id == 0) // special case for eggs.
		{ 
			global.item_info_egg_type[global.item_counter] = global.shuffled_types[global.egg_counter]
			global.egg_counter ++;
		}
		
		global.item_counter ++;
		
		// Store the position of the new item
		array_push(item_positions, item_x);
	}
			
	show_debug_message("Spawned " + string(item_name) + " at : " + string(item_positions));
}
