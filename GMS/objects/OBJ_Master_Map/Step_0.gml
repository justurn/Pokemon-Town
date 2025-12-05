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
        
        // Check what type of marker was selected
        if (object_get_name(selected_marker_obj.object_index) == "OBJ_Map_Marker_Town") {
            // Return to town - refund Adventure Pass since adventure wasn't started
            global.selected_biome_index = SCR_Get_Biome_Index("Town");
            global.item_held[12] += 1;
            show_debug_message("Returning to town - Adventure Pass refunded");
            room_goto(RM_Town);
        } else if (object_get_name(selected_marker_obj.object_index) == "OBJ_Map_Marker_Forrest") {
            // Start forest adventure
            global.selected_biome_index = SCR_Get_Biome_Index("Forest");

            // Generate biome-appropriate Pokemon pool using SCR_Wild_Pokemon with biome filtering
            SCR_Wild_Pokemon();

            // Select random Pokemon from the filtered pool
            if (array_length(global.valid_wild_pokemon) > 0) {
                var random_index = irandom(array_length(global.valid_wild_pokemon) - 1);
                var forest_pokemon_id = global.valid_wild_pokemon[random_index];

                show_debug_message("Starting forest adventure! Selected Pokemon: " + global.Dex_Names[forest_pokemon_id]);

                // Set up battle with forest Pokemon (will expand to full adventure sequence)
                global.wild_pokemon_battle_id = forest_pokemon_id;
                global.wild_pokemon_level = global.pokemon_level; // Match player level

                // TODO: Implement full 6-encounter adventure sequence
                room_goto(RM_Battle);
            } else {
                show_debug_message("ERROR: No valid Pokemon found for Forest biome!");
                // Fallback to town if no Pokemon available
                global.selected_biome_index = SCR_Get_Biome_Index("Town");
                global.item_held[12] += 1;
                room_goto(RM_Town);
            }
        } else {
            // Generic biome selection - default to Town
            global.selected_biome_index = SCR_Get_Biome_Index("Town");
            show_debug_message("Selected unknown biome marker - defaulting to Town");
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