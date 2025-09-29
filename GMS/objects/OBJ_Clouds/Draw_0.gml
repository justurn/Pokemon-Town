// Get camera properties for parallax calculation
var cam_x = camera_get_view_x(view_camera[0]);

// Define parallax factor (higher values = slower movement, closer to background)
var parallax_factor = 0.5; 

// Calculate parallax movement
var parallax_x = cam_x * parallax_factor;

// Sprite dimensions
var spr_width = sprite_get_width(sprite_index);  // 350px
var origin_x = sprite_get_xoffset(sprite_index); // 175px (center)

// Calculate how many tiles needed to cover entire room + parallax movement
// Room width + maximum possible parallax offset in either direction
var max_parallax_offset = room_width * parallax_factor;
var total_coverage = room_width + (max_parallax_offset * 2);
var tiles_needed = ceil(total_coverage / spr_width) + 2; // +2 for safety buffer

// Start from the left edge accounting for maximum leftward parallax movement
var start_x = -max_parallax_offset + parallax_x;
// Find the leftmost tile position (align to sprite boundaries but maintain parallax offset)
var aligned_start = floor(start_x / spr_width) * spr_width;
var parallax_offset = start_x - aligned_start;  // Preserve the smooth parallax movement
start_x = aligned_start;

// Draw tiled sprites across the entire coverage area
for (var i = 0; i < tiles_needed; i++) {
    var draw_x = start_x + (i * spr_width) + parallax_offset + origin_x;
    draw_sprite(sprite_index, 0, draw_x, y);
}
