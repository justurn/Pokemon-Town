// Step Event of OBJ_Item
if (place_meeting(x, y, OBJ_Player))
{
	global.item_info_found[item_counter] = true;
	global.item_held[item_id] += 1;
	
	if (item_id = 0) // special case for eggs
	{
		var eggs_found = array_length(global.egg_types_found)
		global.egg_types_found[eggs_found] = egg_type;
	}
	
	show_debug_message(string(global.item_name[item_id]) + " Found:" + string(global.item_held[item_id]));
    // Destroy the egg after interaction
    instance_destroy();
}

if (loaded_item_info == false) 
{
	item_id = global.item_info_id[item_counter];
	sprite_index = global.item_sprite[item_id];
	
	if (item_id == 0) // special case for eggs
	{
		egg_type = global.item_info_egg_type[item_counter];
	}
	
	loaded_item_info = true;
}


	