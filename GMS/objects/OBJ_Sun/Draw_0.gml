// Get camera properties
var cam_x = camera_get_view_x(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);

// Define parallax factor (higher values = slower movement, closer to background)
var parallax_factor = 0.9; 

// Calculate parallax movement
var max_offset = (room_width - cam_width); 
var parallax_x = cam_x * parallax_factor; 

// Clamp the sun within the room
x = (room_width / 2) + parallax_x - (max_offset * parallax_factor / 2);

// Draw the sun
draw_self();
