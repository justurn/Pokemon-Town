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
	}

}
if room = RM_Menu
{
	room_goto(RM_Town)	
}









