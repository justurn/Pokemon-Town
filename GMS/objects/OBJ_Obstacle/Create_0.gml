/// @description F-014: Obstacle (boulder or tree) on segment
// Segment assignment
segment_id = -1;  // Set by spawner

// Obstacle type (0 = boulder, 1 = tree)
obstacle_type = choose(0, 1);  // Randomly choose boulder or tree

// Visual
depth = 50;  // Between buildings (40) and ground (100)
image_xscale = 1.5;  // Scale up 1.5x
image_yscale = 1.5;

// Bounds for player interaction (set after sprite is assigned)
obstacle_left = x;
obstacle_right = x;

// Flashing indicator for clearable obstacles
flashing = false;
flash_color = c_red;
normal_color = c_white;
