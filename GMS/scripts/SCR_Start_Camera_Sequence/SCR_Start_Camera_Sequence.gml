function SCR_Start_Camera_Sequence() {
    global.inputs_disabled = true;
    global.camera_sequence_active = true;
    
    // Create camera controller object
    var camera_controller = instance_create_layer(OBJ_Player.x, OBJ_Player.y, "Instances", OBJ_Camera_Controller);
    
    // Determine which side of town is furthest from player
    var player_x = OBJ_Player.x;
    var town_left_edge = 0;
    var town_right_edge = global.town_size;
    
    var distance_to_left = abs(player_x - town_left_edge);
    var distance_to_right = abs(player_x - town_right_edge);
    
    // Spawn rival on the side furthest from player
    var rival_spawn_x, rival_spawn_y;
    if (distance_to_left > distance_to_right) {
        // Spawn on left edge
        rival_spawn_x = town_left_edge + 50; // 50 pixels from edge
        show_debug_message("Rival spawning on left edge at " + string(rival_spawn_x));
    } else {
        // Spawn on right edge  
        rival_spawn_x = town_right_edge - 50; // 50 pixels from edge
        show_debug_message("Rival spawning on right edge at " + string(rival_spawn_x));
    }
    rival_spawn_y = OBJ_Player.y;
    
    // Store target position in camera controller
    camera_controller.target_x = rival_spawn_x;
    camera_controller.target_y = rival_spawn_y;
    camera_controller.original_x = OBJ_Player.x;
    camera_controller.original_y = OBJ_Player.y;
    
    // Switch viewport to follow camera controller - use direct positioning
    // Store original camera position
    camera_controller.original_cam_x = camera_get_view_x(view_camera[0]);
    camera_controller.original_cam_y = camera_get_view_y(view_camera[0]);
    
    show_debug_message("Camera sequence started - rival at " + string(rival_spawn_x) + ", player at " + string(player_x));
}