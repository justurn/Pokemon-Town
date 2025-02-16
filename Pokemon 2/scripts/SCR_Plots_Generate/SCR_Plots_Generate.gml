function SCR_Plots_Generate() 
{  
    var num_segments = array_length(global.building_name);
	var segment_size = room_width / num_segments;
	var segment_offset = segment_size / 2
	
	global.plot_width = segment_size;
    global.plot_segments = array_create(num_segments);
    
    // Populate the array with X positions of each segment
    for (var i = 0; i < num_segments; i++) 
    {
        global.plot_segments[i] = (i * segment_size) + segment_offset;
    }
    
    // Shuffle the array manually
    SCR_Shuffle_Array(global.plot_segments);   
	show_debug_message("Plot Segments: " + string(global.plot_segments));
}
