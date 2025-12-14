// OBJ_Master_Map Step Event
// Basic marker selection system for biome adventure selection

// Input delay system (similar to lab implementation)
delay++;

// Initialize variables if not set
if (!variable_global_exists("selected_marker")) {
    global.selected_marker = -1; // No marker selected initially
    global.markers_array = []; // Array to store marker instances
    
    // Find all map marker objects and store them
    var marker_count = 0;
    with (OBJ_Map_Marker) {
        array_push(global.markers_array, id);
        marker_count++;
    }
    
    // Sort markers by X position for consistent left/right navigation
    if (marker_count > 0) {
        // Simple bubble sort by X position
        for (var i = 0; i < marker_count - 1; i++) {
            for (var j = 0; j < marker_count - 1 - i; j++) {
                var marker1 = global.markers_array[j];
                var marker2 = global.markers_array[j + 1];
                
                if (marker1.x > marker2.x) {
                    // Swap markers
                    global.markers_array[j] = marker2;
                    global.markers_array[j + 1] = marker1;
                }
            }
        }
        
        // Set town marker as default selection
        global.selected_marker = 0; // Default fallback
        for (var i = 0; i < marker_count; i++) {
            var marker = global.markers_array[i];
            if (object_get_name(marker.object_index) == "OBJ_Map_Marker_Town") {
                global.selected_marker = i;
                break;
            }
        }
    }
    
    show_debug_message("Map system initialized with " + string(marker_count) + " markers");
}

// Handle input for marker navigation
if (array_length(global.markers_array) > 0) {
    
    // Left arrow - previous marker (with input delay)
    if (global.left && delay > delay_limit) {
        delay = 0;
        global.selected_marker--;
        if (global.selected_marker < 0) {
            global.selected_marker = array_length(global.markers_array) - 1; // Wrap to last marker
        }
        show_debug_message("Selected marker: " + string(global.selected_marker));
    }
    
    // Right arrow - next marker (with input delay)
    if (global.right && delay > delay_limit) {
        delay = 0;
        global.selected_marker++;
        if (global.selected_marker >= array_length(global.markers_array)) {
            global.selected_marker = 0; // Wrap to first marker
        }
        show_debug_message("Selected marker: " + string(global.selected_marker));
    }
    
    // Enter key - confirm selection (with input delay)
    if (global.enter && delay > delay_limit) {
        delay = 0;
        var selected_marker_obj = global.markers_array[global.selected_marker];

        // Get biome index from the selected marker
        var biome_index = selected_marker_obj.biome_index;
        var biome_name = global.Biome_Names[biome_index];

        // Check if Town was selected (return without starting adventure)
        if (biome_index == SCR_Get_Biome_Index("Town")) {
            // Return to town - refund Adventure Pass since adventure wasn't started
            global.selected_biome_index = biome_index;
            global.item_held[12] += 1;
            show_debug_message("Returning to town - Adventure Pass refunded");
            room_goto(RM_Town);
        } else {
            // Start adventure for selected biome
            global.selected_biome_index = biome_index;

            // Get all habitats for this biome
            var habitats = SCR_Get_Habitats_For_Biome(biome_index);

            if (array_length(habitats) > 0) {
                // Initialize adventure mode (Phase 4 - Player Choice)
                global.adventure_active = true;

                // Populate remaining habitats (player will choose order)
                global.adventure_remaining_habitats = [];
                for (var h = 0; h < array_length(habitats); h++) {
                    global.adventure_remaining_habitats[h] = habitats[h];
                }

                // Initialize selection and completed arrays
                global.adventure_selected_index = 0;
                global.adventure_completed_habitats = [];

                show_debug_message("=== STARTING " + biome_name + " ADVENTURE (Phase 4) ===");
                show_debug_message("Available habitats: " + string(array_length(global.adventure_remaining_habitats)));
                show_debug_message("Habitat options: ");
                for (var h = 0; h < array_length(global.adventure_remaining_habitats); h++) {
                    var hab_idx = global.adventure_remaining_habitats[h];
                    show_debug_message("  " + string(h + 1) + ". " + global.Habitat_Names[hab_idx]);
                }

                // Show adventure path before first battle
                room_goto(RM_Adventure_Path);
            } else {
                show_debug_message("ERROR: No habitats found for " + biome_name + " biome!");
                // Fallback to town if no habitats available
                global.selected_biome_index = SCR_Get_Biome_Index("Town");
                global.item_held[12] += 1;
                room_goto(RM_Town);
            }
        }
    }
}

// Update all markers with selection state
for (var i = 0; i < array_length(global.markers_array); i++) {
    var marker = global.markers_array[i];
    if (instance_exists(marker)) {
        // Set selected state for visual feedback
        marker.is_selected = (i == global.selected_marker);
    }
}