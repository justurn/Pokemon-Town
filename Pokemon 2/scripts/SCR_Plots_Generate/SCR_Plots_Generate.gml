function SCR_Plots_Generate() 
{
	var segment_offset = 150;
    var segment_size = 300;
    var num_segments = (room_width - 2 * segment_offset) div segment_size;
    
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
