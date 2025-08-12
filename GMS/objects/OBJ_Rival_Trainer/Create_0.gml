// Set rival Pokemon stats
rival_pokemon_id = global.rival_pokemon_id;
rival_level = global.pokemon_level + irandom_range(1, 2);

// Movement and sprite setup
sprite_index = SPR_Trainer; // Forward facing sprite
walking_left_sprite = SPR_Trainer_Left;
walking_right_sprite = SPR_Trainer_Right;

// Match player scaling
scale_factor = 2;
image_yscale = scale_factor;
image_xscale = scale_factor;

// Patrol movement setup
patrol_area = 600; // 600px patrol area (doubled from 300px)
move_speed = 2; // 2px/step (doubled from 1px/step)
move_direction = choose(-1, 1); // Randomly start moving left or right

// Set patrol boundaries around spawn position
spawn_x = x;
patrol_left = spawn_x - (patrol_area / 2);
patrol_right = spawn_x + (patrol_area / 2);

// Make sure patrol area stays within room bounds
patrol_left = max(patrol_left, 50); // Minimum 50px from left edge
patrol_right = min(patrol_right, room_width - 50); // Minimum 50px from right edge

// If patrol area was constrained, adjust the opposite boundary
if (patrol_left == 50) {
    patrol_right = min(patrol_left + patrol_area, room_width - 50);
} else if (patrol_right == room_width - 50) {
    patrol_left = max(patrol_right - patrol_area, 50);
}

show_debug_message("Rival patrol area: " + string(patrol_left) + " to " + string(patrol_right));