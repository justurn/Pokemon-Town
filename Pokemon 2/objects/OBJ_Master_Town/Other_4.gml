if room == RM_Town
{
	room_width = global.town_size;
	//show_debug_message("Room Width is: " + string(room_width))
	instance_create_layer(0,0,"Instances",OBJ_Player)
    if (need_plot_segments)
    {
		SCR_Plots_Spawn();
        need_plot_segments = false;
    }
	else
	{
		// Rebuild any buildings from stored data
		SCR_Buildings_Restore();
		// Rebuild Trees
		SCR_Trees_Spawn();
		// Respawn uncollected items.
		var item_limit = global.item_counter
		for (var i = 0; i < item_limit; i ++)
		{
			if (global.item_info_found[i] == false)
			{ 
				var item_id = global.item_info_id[i]
				var item_y = global.player_y;
				var item_name = global.item_name[item_id];
				var item_x = global.item_info_positionx[i];
				
				// Create the item instance
				var item_instance = instance_create_layer(item_x, item_y, "Instances", OBJ_Item);
				item_instance.item_counter = i;
				show_debug_message("Spawned " + string(item_name) + " at : " + string(item_x));
				
			}
		}
	}
}
if room = RM_Menu
{
	room_goto(RM_Town)	
}









