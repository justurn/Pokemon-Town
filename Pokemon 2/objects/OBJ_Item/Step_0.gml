// Step Event of OBJ_Item
if (place_meeting(x, y, OBJ_Player))
{
	if (item_id = 0) // special case for eggs
	{
		var count = global.item_held[0];
		global.egg_types[count] = type_id;
	}
	
	global.item_held[item_id] += 1;
	show_debug_message(string(global.item_name[item_id]) + " Found:" + string(global.item_held[item_id]));
    // Destroy the egg after interaction
    instance_destroy();
}


	