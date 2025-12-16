/// @description F-014: Find and spawn plots on ALL cleared segments
/// Scans segment arrays to find all cleared (not wild, no building, no existing plot) segments
function SCR_Plots_Spawn()
{
    var total_segments = array_length(global.spawn_segments);
    var plots_spawned = 0;

    // Search for ALL cleared segments (state = -1) and spawn plots
    for (var seg_i = 0; seg_i < total_segments; seg_i++) {
        // Check if segment is cleared (-1 = empty plot state)
        if (global.segment_building[seg_i] == -1) {
            var seg_x = seg_i * global.plot_width + (global.plot_width / 2);

            // Check if plot already exists at this location
            var existing_plot = instance_place(seg_x, global.plot_y, OBJ_Plot);

            if (!existing_plot) {
                // Spawn plot on this cleared segment
                var new_plot = instance_create_layer(seg_x, global.plot_y, "Instances", OBJ_Plot);
                new_plot.segment_id = seg_i;

                show_debug_message("Spawned construction plot on cleared segment " + string(seg_i) + " at x: " + string(seg_x));
                plots_spawned++;
            }
        }
    }

    // Debug output
    if (plots_spawned == 0) {
        show_debug_message("No new plots spawned - either no cleared segments or plots already exist");
    } else {
        show_debug_message("Total plots spawned: " + string(plots_spawned));
    }

    SCR_Trees_Spawn()
}
