if room == RM_Town
{
    if (need_plot_segments)
    {
        SCR_Plots_Generate();
		SCR_Plots_Spawn();
        need_plot_segments = false;
    }
	else
	{
		// Rebuild any buildings from stored data
		SCR_Buildings_Restore();
	}
	
	global.wild_pokemon_id = 0;
}
if room = RM_Menu
{
	room_goto(RM_Town)	
}









