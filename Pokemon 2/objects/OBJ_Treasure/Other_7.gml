if no_treasure
{
	var item_spacing = room_width / treasure_limit 
	var x_adj = item_spacing / 2;

	var valid_items = []; 
	var item_limit =  array_length(global.item_name)
	var building_limit = array_length(global.building_name);

	for (var i = 1; i <item_limit; i++)
	{
		if (global.item_held[i] != -1)
		{
			if (i != 1) // crates
			{
				array_push(valid_items, i)
			}
			else if (global.building_count < building_limit)
			{
				array_push(valid_items, i) // only drop crates if they are needed
			}
		}
	}

	show_debug_message("Valid Treasure Items: " + string(valid_items))

	for (var j = 0; j < treasure_limit; j++)
	{
		var random_item_index = irandom(array_length(valid_items)-1);
		show_debug_message("Treasure Index: " + string(random_item_index))
		var random_item = valid_items[random_item_index];
		show_debug_message("Treasure ID: " + string(random_item))
		var item_instance = instance_create_layer(item_spacing * j + x_adj, y - 150, "Instances", OBJ_Item)	
		global.item_info_id[global.item_counter] = random_item;
		global.item_info_found[global.item_counter] = true;
		item_instance.item_counter = global.item_counter;
		
		global.item_counter ++
		global.item_held[random_item] += 1;
	}

	image_speed = 0;
	image_index = image_number - 1;
	timer++;
	no_treasure = false;
}



