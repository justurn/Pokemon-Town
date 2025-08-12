function SCR_Wild_Pokemon_Spawn(pokemon_id, is_alpha)
{
    // F-022: Segment-based wild Pokemon spawning with integrated patrol setup
    // Reserve segment for this Pokemon, avoiding player's adjacent segments and town edges
    var object_type = is_alpha ? global.SPAWN_POKEMON_A : global.SPAWN_POKEMON_B;
    var segment_id = global.SCR_Reserve_Spawn_Segment_Safe(object_type, true);
    
    // Check if segment reservation failed
    if (segment_id == -1) {
        show_debug_message("Failed to spawn " + (is_alpha ? "Alpha" : "Beta") + " Pokemon - no segments available");
        // Debug what's going on with segments
        global.SCR_Debug_Spawn_Segments();
        return;
    }
    
    // Get segment position 
    var pokemon_x = global.SCR_Get_Segment_Center(segment_id);
    var pokemon_y = global.player_y;
    
    // Handle existing position override system (backward compatibility)
    if (is_alpha && global.wild_pokemon_a_x != -1) {
        pokemon_x = global.wild_pokemon_a_x;
        show_debug_message("Using stored position for Alpha Pokemon: " + string(pokemon_x));
        
        // F-022: Reserve the segment that contains this stored position
        global.spawn_segment_occupancy[segment_id] = global.SPAWN_EMPTY; // Release the randomly assigned one
        array_push(global.available_spawn_segments, segment_id); // Put it back
        
        // Find which segment contains the stored position
        for (var seg_i = 0; seg_i < array_length(global.spawn_segments); seg_i++) {
            var seg_center = global.SCR_Get_Segment_Center(seg_i);
            var seg_left = seg_center - (global.plot_width / 2);
            var seg_right = seg_center + (global.plot_width / 2);
            
            if (pokemon_x >= seg_left && pokemon_x <= seg_right) {
                segment_id = seg_i;
                global.spawn_segment_occupancy[segment_id] = object_type;
                // Remove from available segments if it's there
                for (var av_i = 0; av_i < array_length(global.available_spawn_segments); av_i++) {
                    if (global.available_spawn_segments[av_i] == segment_id) {
                        array_delete(global.available_spawn_segments, av_i, 1);
                        break;
                    }
                }
                break;
            }
        }
    } else if (!is_alpha && global.wild_pokemon_b_x != -1) {
        pokemon_x = global.wild_pokemon_b_x;
        show_debug_message("Using stored position for Beta Pokemon: " + string(pokemon_x));
        
        // F-022: Reserve the segment that contains this stored position
        global.spawn_segment_occupancy[segment_id] = global.SPAWN_EMPTY; // Release the randomly assigned one
        array_push(global.available_spawn_segments, segment_id); // Put it back
        
        // Find which segment contains the stored position
        for (var seg_i = 0; seg_i < array_length(global.spawn_segments); seg_i++) {
            var seg_center = global.SCR_Get_Segment_Center(seg_i);
            var seg_left = seg_center - (global.plot_width / 2);
            var seg_right = seg_center + (global.plot_width / 2);
            
            if (pokemon_x >= seg_left && pokemon_x <= seg_right) {
                segment_id = seg_i;
                global.spawn_segment_occupancy[segment_id] = object_type;
                // Remove from available segments if it's there
                for (var av_i = 0; av_i < array_length(global.available_spawn_segments); av_i++) {
                    if (global.available_spawn_segments[av_i] == segment_id) {
                        array_delete(global.available_spawn_segments, av_i, 1);
                        break;
                    }
                }
                break;
            }
        }
    }
    
    // Get sprite info for debugging
    var pokemon_sprite = global.Dex_Sprites[pokemon_id];
    var pokemon_name = global.Dex_Names[pokemon_id];
    
    // Create Pokemon instance with patrol setup
    var pokemon_instance;
    if (is_alpha) {
        pokemon_instance = instance_create_layer(pokemon_x, pokemon_y, "Instances", OBJ_Town_Pokemon_Wild_A);
    } else {
        pokemon_instance = instance_create_layer(pokemon_x, pokemon_y, "Instances", OBJ_Town_Pokemon_Wild_B);
    }
    
    // Configure Pokemon properties (preserve existing system)
    pokemon_instance.is_alpha = is_alpha;
    pokemon_instance.wild_pokemon_id = pokemon_id;
    
    // F-022: Configure integrated patrol system
    pokemon_instance.assigned_segment = segment_id;
    var patrol_bounds = global.SCR_Get_Segment_Patrol_Bounds(segment_id);
    pokemon_instance.patrol_left = patrol_bounds[0];
    pokemon_instance.patrol_right = patrol_bounds[1];
    pokemon_instance.move_speed = 1; // 1px/step movement (slower than rival's 2px/step)
    pokemon_instance.move_direction = choose(-1, 1); // Random initial direction
    pokemon_instance.base_y = pokemon_y; // Set base Y position for bounce effect
    
    // Update segment tracking
    global.spawn_segment_objects[segment_id] = pokemon_instance;
    
    // Debug logging
    show_debug_message("Spawned " + (is_alpha ? "Alpha" : "Beta") + " " + string(pokemon_name) + 
                      " at segment " + string(segment_id) + " (" + string(pokemon_x) + ") with patrol: " + 
                      string(pokemon_instance.patrol_left) + " to " + string(pokemon_instance.patrol_right));
}        