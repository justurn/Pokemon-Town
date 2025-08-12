// Patrol back and forth movement
x += move_direction * move_speed;

// Check if we've hit patrol boundaries and need to turn around
if (x <= patrol_left && move_direction == -1) {
    move_direction = 1; // Turn right
    show_debug_message("Rival reached left boundary, turning right");
} else if (x >= patrol_right && move_direction == 1) {
    move_direction = -1; // Turn left
    show_debug_message("Rival reached right boundary, turning left");
}

// Set appropriate walking sprite based on direction
if (move_direction == -1) {
    sprite_index = walking_left_sprite;
} else {
    sprite_index = walking_right_sprite;
}

// Collision detection with player - check health like wild Pokemon do
if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, OBJ_Player, false, false) && global.pokemon_health > 0) {
    show_debug_message("Rival collision detected - rival Pokemon ID: " + string(global.rival_pokemon_id) + ", current battle ID: " + string(global.wild_pokemon_battle_id));
    // Start rival battle
    SCR_Start_Rival_Battle();
}