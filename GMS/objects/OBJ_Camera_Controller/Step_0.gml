sequence_timer++;

switch (sequence_stage) {
    case "PAN_TO_RIVAL":
        // Initialize camera position if first frame
        if (current_cam_x == 0 && current_cam_y == 0) {
            current_cam_x = original_cam_x;
            current_cam_y = original_cam_y;
            show_debug_message("Camera sequence starting - from " + string(current_cam_x) + "," + string(current_cam_y) + " to rival at " + string(target_x) + "," + string(target_y));
        }
        
        // Calculate target camera position (center camera on rival spawn point)
        var cam_width = camera_get_view_width(view_camera[0]);
        var cam_height = camera_get_view_height(view_camera[0]);
        var target_cam_x = target_x - cam_width / 2;
        var target_cam_y = target_y - cam_height / 2;
        
        // Constrain camera within room bounds
        target_cam_x = max(0, min(target_cam_x, room_width - cam_width));
        target_cam_y = max(0, min(target_cam_y, room_height - cam_height));
        
        // Move camera towards rival spawn point
        var lerp_speed = pan_speed / room_speed;
        current_cam_x = lerp(current_cam_x, target_cam_x, lerp_speed);
        current_cam_y = lerp(current_cam_y, target_cam_y, lerp_speed);
        
        // Apply camera position directly
        camera_set_view_pos(view_camera[0], current_cam_x, current_cam_y);
        
        show_debug_message("Camera panning: " + string(current_cam_x) + "," + string(current_cam_y) + " -> " + string(target_cam_x) + "," + string(target_cam_y));
        
        // When close enough to target, spawn rival
        if (abs(current_cam_x - target_cam_x) < 10 && abs(current_cam_y - target_cam_y) < 10) {
            // Spawn rival trainer
            instance_create_layer(target_x, target_y, "Instances", OBJ_Rival_Trainer);
            global.tip_string = "Battle Rival";
            sequence_stage = "SHOW_RIVAL";
            sequence_timer = 0;
            show_debug_message("Rival spawned, switching to SHOW_RIVAL stage");
        }
        break;
        
    case "SHOW_RIVAL":
        // Hold on rival for dramatic effect
        if (sequence_timer > room_speed * 1.5) { // 1.5 seconds - reduced for better pacing
            sequence_stage = "RETURN_TO_PLAYER";
            sequence_timer = 0;
            show_debug_message("Switching to RETURN_TO_PLAYER stage");
        }
        break;
        
    case "RETURN_TO_PLAYER":
        // Pan back to original camera position
        var lerp_speed = pan_speed / room_speed;
        current_cam_x = lerp(current_cam_x, original_cam_x, lerp_speed);
        current_cam_y = lerp(current_cam_y, original_cam_y, lerp_speed);
        
        // Apply camera position directly
        camera_set_view_pos(view_camera[0], current_cam_x, current_cam_y);
        
        show_debug_message("Camera returning: " + string(current_cam_x) + "," + string(current_cam_y) + " -> " + string(original_cam_x) + "," + string(original_cam_y));
        
        // When back at original position, end sequence
        if (abs(current_cam_x - original_cam_x) < 10 && abs(current_cam_y - original_cam_y) < 10) {
            // Restore original camera position exactly
            camera_set_view_pos(view_camera[0], original_cam_x, original_cam_y);
            
            // Re-enable inputs
            global.inputs_disabled = false;
            global.camera_sequence_active = false;
            
            show_debug_message("Camera sequence complete - inputs re-enabled, camera restored");
            
            // Destroy this controller
            instance_destroy();
        }
        break;
}

// Safety check - if sequence runs too long (10 seconds), force end
if (sequence_timer > room_speed * 10) {
    show_debug_message("Camera sequence timeout - forcing end");
    
    // Restore original camera position
    camera_set_view_pos(view_camera[0], original_cam_x, original_cam_y);
    
    // Re-enable inputs
    global.inputs_disabled = false;
    global.camera_sequence_active = false;
    
    // Destroy this controller
    instance_destroy();
}