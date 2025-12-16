if room == RM_Town
{
	// I-022/I-026 Fix: Reset all adventure and biome state when entering town
	// Centralizes state reset for victory, defeat, and normal town entry
	if (global.adventure_active) {
		show_debug_message("Adventure ended - resetting state");
		global.adventure_active = false;
		global.adventure_encounter = 0;
		global.adventure_habitat_queue = [];
		global.adventure_max_encounters = 0;
	}

	global.selected_biome_index = SCR_Get_Biome_Index("Town");
	global.selected_habitat_index = -1; // Will be set randomly by town spawning logic
	show_debug_message("Town Room Start - Reset to Town biome");

	room_width = global.town_size;
	//show_debug_message("Room Width is: " + string(room_width))
	instance_create_layer(0,0,"Instances",OBJ_Player)
	
	// F-022: Clear spawn segments when entering town room
	if (variable_global_exists("SCR_Clear_All_Spawn_Segments")) {
		global.SCR_Clear_All_Spawn_Segments();
	}
	
    if (need_plot_segments)
    {
		// F-014: First time setup - spawn initial plot and obstacles
		SCR_Town_Restore();  // This will spawn starter building, obstacles, and empty plot
		SCR_Trees_Spawn();   // Spawn segment-dividing trees
        need_plot_segments = false;
    }
	else
	{
		// F-014: Restore town from saved state
		SCR_Town_Restore();
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









