target_x = 0;
target_y = 0;
original_x = 0;
original_y = 0;
original_cam_x = 0;
original_cam_y = 0;
current_cam_x = 0;
current_cam_y = 0;
pan_speed = 15; // Increased from 8 for faster, more noticeable camera movement
sequence_timer = 0;
sequence_stage = "PAN_TO_RIVAL";

show_debug_message("Camera Controller created - pan_speed: " + string(pan_speed));