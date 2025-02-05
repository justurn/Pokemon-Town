function SCR_Buildings_Restore()
{
    if (global.building_count > 0)
    {
        for (var i = 0; i < global.building_count; i++)
        {
            var build_x = global.buildings_x[i];
            var build_y = global.buildings_y[i];

            // Recreate the building
            var building = instance_create_layer(build_x, build_y, "Instances", OBJ_Building);
			building.building_id = i;
        }
    }
	if (global.plot_count <= array_length(global.plot_segments) && global.more_buildings) 
    {
        var plot_x = global.plot_segments[global.plot_count - 1];
        instance_create_layer(plot_x, global.plot_y, "Instances", OBJ_Plot);
		show_debug_message("Plot #" + string(global.plot_count) + " placed at: " + string(plot_x));
    }	
	
	SCR_Trees_Spawn();
}

	
