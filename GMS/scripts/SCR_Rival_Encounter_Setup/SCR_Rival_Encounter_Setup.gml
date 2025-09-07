function SCR_Rival_Encounter_Setup(milestone_level) {
    show_debug_message("Rival encounter triggered at level " + string(milestone_level));
    
    // Clear any existing wild Pokemon from town to prevent conflicts
    with (OBJ_Town_Pokemon_Wild_A) {
        instance_destroy();
    }
    with (OBJ_Town_Pokemon_Wild_B) {
        instance_destroy();
    }
    show_debug_message("Cleared existing wild Pokemon for rival encounter");
    
    // Initialize rival Pokemon if first encounter
    if (global.rival_pokemon_id == 0) {
        var starter_pool = [1, 4, 7, 152, 155, 158, 252, 255, 258]; // Bulbasaur, Charmander, Squirtle, Chikorita, Cyndaquil, Totodile, Treecko, Torchic, Mudkip
        global.rival_pokemon_id = starter_pool[irandom(array_length(starter_pool) - 1)];
        show_debug_message("Rival selected starter: " + string(global.rival_pokemon_id));
    }
    
    // Check for evolution
    var evolved_id = SCR_Check_Rival_Evolution(global.rival_pokemon_id, milestone_level);
    if (evolved_id != global.rival_pokemon_id) {
        show_debug_message("Rival Pokemon evolved from " + string(global.rival_pokemon_id) + " to " + string(evolved_id));
        global.rival_pokemon_id = evolved_id;
    }
    
    // Store milestone level for consistent rival battles
    global.rival_milestone_level = milestone_level;
    
    // Use proper spawn positioning logic like wild Pokemon
    var rival_spawn_x, rival_spawn_y;
    var valid_position = false;
    var min_distance_from_player = 500; // Minimum distance from player
    var min_distance_from_pokemon = 300; // Minimum distance from wild Pokemon
    var side_buffer = 500; // 500px exclusion zone from map boundaries
    
    rival_spawn_y = global.player_y; // Same Y position as player like wild Pokemon
    
    // Find a valid position for the rival
    var attempts = 0;
    while (!valid_position && attempts < 50) { // Safety limit to prevent infinite loops
        // Generate a random x position within the room with proper exclusion zones
        rival_spawn_x = random_range(side_buffer, room_width - side_buffer) div 1;
        
        // Check if the position is valid
        valid_position = true;
        
        // Check distance from the player - rivals should spawn further away
        if (abs(rival_spawn_x - OBJ_Player.x) < min_distance_from_player) {
            valid_position = false;
        }
        
        // Check distance from existing wild Pokemon A
        if (instance_exists(OBJ_Town_Pokemon_Wild_A)) {
            if (abs(rival_spawn_x - OBJ_Town_Pokemon_Wild_A.x) < min_distance_from_pokemon) {
                valid_position = false;
            }
        }
        
        // Check distance from existing wild Pokemon B
        if (instance_exists(OBJ_Town_Pokemon_Wild_B)) {
            if (abs(rival_spawn_x - OBJ_Town_Pokemon_Wild_B.x) < min_distance_from_pokemon) {
                valid_position = false;
            }
        }
        
        attempts++;
    }
    
    // Fallback if no valid position found - spawn at center with safe distance
    if (!valid_position) {
        rival_spawn_x = room_width / 2;
        if (abs(rival_spawn_x - OBJ_Player.x) < min_distance_from_player) {
            // Move to opposite side of map center
            if (OBJ_Player.x < room_width / 2) {
                rival_spawn_x = (room_width * 0.75); // 75% across the map
            } else {
                rival_spawn_x = (room_width * 0.25); // 25% across the map
            }
        }
        show_debug_message("Rival spawn fallback position used");
    }
    
    // F-022: Use segment system for rival spawning
    var rival_segment = global.SCR_Reserve_Spawn_Segment_Safe(global.SPAWN_RIVAL, true);
    if (rival_segment != -1) {
        // Use segment-based position
        rival_spawn_x = global.SCR_Get_Segment_Center(rival_segment);
        show_debug_message("Rival using segment " + string(rival_segment) + " at position " + string(rival_spawn_x));
    } else {
        show_debug_message("No segments available for rival, using fallback position");
    }
    
    // Create rival trainer
    var rival_instance = instance_create_layer(rival_spawn_x, rival_spawn_y, "Instances", OBJ_Rival_Trainer);
    
    // F-022: Configure segment-based patrol if using segments
    if (rival_segment != -1) {
        rival_instance.assigned_segment = rival_segment;
        var patrol_bounds = global.SCR_Get_Segment_Patrol_Bounds(rival_segment);
        rival_instance.patrol_left = patrol_bounds[0];
        rival_instance.patrol_right = patrol_bounds[1];
        global.spawn_segment_objects[rival_segment] = rival_instance;
    }
    
    show_debug_message("Rival spawned at " + string(rival_spawn_x) + ", " + string(rival_spawn_y) + " after " + string(attempts) + " attempts");
}