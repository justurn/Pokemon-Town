// Set sprite based on obstacle type
if (obstacle_type == 0) {
    sprite_index = SPR_Tree_2;  // or use array: global.boulder_sprites[variant]
} else {
    sprite_index = SPR_Tree_1;     // or use array: global.tree_sprites[variant]
}

// Calculate bounds for player interaction (like buildings/plots do)
obstacle_left = x - sprite_width/2;
obstacle_right = x + sprite_width/2;

// Set color based on whether the obstacle is clearable (flashing)
if (flashing) {
    draw_set_color(flash_color); // Flash red when clearable
} else {
    draw_set_color(normal_color); // Normal color
}

// Draw the obstacle sprite with the selected color
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, draw_get_color(), image_alpha);