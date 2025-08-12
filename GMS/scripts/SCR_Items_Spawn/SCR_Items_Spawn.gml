function SCR_Items_Spawn(item_id,quantity)
{
    // F-022: Segment-based item spawning system
    var i = item_id;
    var item_count = quantity;
    var item_y = global.player_y;
    var item_name = global.item_name[i];
    
    var spawned_positions = [];
    var successfully_spawned = 0;
    
    show_debug_message("Attempting to spawn " + string(item_count) + " " + string(item_name) + "(s)");
    
    // Spawn each item in the requested quantity
    for (var j = 0; j < item_count; j++) {
        // Reserve segment for this item, avoiding player's adjacent segments and town edges
        var segment_id = global.SCR_Reserve_Spawn_Segment_Safe(global.SPAWN_ITEM, true);
        
        // Check if segment reservation failed
        if (segment_id == -1) {
            show_debug_message("Failed to spawn " + string(item_name) + 
                             " #" + string(j+1) + " - no segments available");
            continue; // Skip this item but continue with others
        }
        
        // Get segment position (no more random positioning or distance checking!)
        var item_x = global.SCR_Get_Segment_Center(segment_id);
        
        // Create the item instance
        var item_instance = instance_create_layer(item_x, item_y, "Instances", OBJ_Item);
        item_instance.item_counter = global.item_counter;
        
        // Configure item properties (preserve existing system)
        global.item_info_positionx[global.item_counter] = item_x;
        global.item_info_id[global.item_counter] = i;
        global.item_info_found[global.item_counter] = false;
        
        // Handle special case for eggs (preserve existing logic)
        if (item_id == 0) {
            global.item_info_egg_type[global.item_counter] = global.shuffled_types[global.egg_counter];
            global.egg_counter++;
        }
        
        // F-022: Update segment tracking and add segment info to item
        global.spawn_segment_objects[segment_id] = item_instance;
        item_instance.assigned_segment = segment_id; // Store segment ID for cleanup
        
        global.item_counter++;
        array_push(spawned_positions, item_x);
        successfully_spawned++;
        
        show_debug_message("Spawned " + string(item_name) + " #" + string(j+1) + 
                          " at segment " + string(segment_id) + " (" + string(item_x) + ")");
    }
    
    // Summary logging
    if (successfully_spawned < item_count) {
        show_debug_message("WARNING: Only spawned " + string(successfully_spawned) + "/" + 
                          string(item_count) + " " + string(item_name) + "(s) due to segment availability");
    } else {
        show_debug_message("Successfully spawned all " + string(successfully_spawned) + " " + 
                          string(item_name) + "(s)");
    }
    
    show_debug_message("Spawned " + string(item_name) + " at positions: " + string(spawned_positions));
}
