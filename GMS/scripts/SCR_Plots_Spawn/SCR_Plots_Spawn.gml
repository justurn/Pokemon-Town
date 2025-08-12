function SCR_Plots_Spawn() 
{
    // Ensure we have available segments
    if (global.plot_count >= array_length(global.plot_segments)) 
    {
        show_debug_message("No more plot segments available!");
        return;
    }

    // Get the next available segment
    var plot_x = global.plot_segments[global.plot_count];
	
    global.plot_count += 1; // Move to the next segment
	
    instance_create_layer(plot_x, global.plot_y, "Instances", OBJ_Plot);
	show_debug_message("Plot #" + string(global.plot_count) + " placed at: " + string(plot_x));
	
	SCR_Trees_Spawn()

}
