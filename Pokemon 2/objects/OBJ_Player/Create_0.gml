// Create Event
sprite_idle = SPR_Player;        // Default idle sprite
sprite_move_right = SPR_Player_Right; // Sprite for moving right
sprite_move_left = SPR_Player_Left;   // Sprite for moving left

scale_factor = 2;
image_yscale = scale_factor;
image_xscale = scale_factor;

x = global.player_x;
y = global.player_y;

// adjust the camera position
var cam_width = camera_get_view_width(view_camera[0]);
var cam_target = x - cam_width / 2;
var min_cam_x = 0;
var max_cam_x = room_width - cam_width;

cam_target = max(min(cam_target,max_cam_x),min_cam_x);

//show_debug_message("Camera Target: " + string(cam_target))

camera_set_view_pos(view_camera[0], cam_target, 0);

