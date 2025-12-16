// Assign the sprite after creation (all sprites use center origin, no Y adjustment needed)
if (just_created)
{
	sprite_index = global.building_sprites[building_id]
	image_index = irandom(2);  // Randomly choose one of 3 foundation frames (0, 1, or 2)
	image_speed = 0;  // Freeze animation on the chosen frame
	image_xscale = (global.plot_width / sprite_width) * 0.9
	just_created = false;
	build_left = x - sprite_width/2;    // Left edge of the building
	build_right = x + sprite_width/2;   // Right edge of the building
}

// F-014: Check if sprite needs updating (e.g., foundation upgraded to building)
if (sprite_index != global.building_sprites[building_id]) {
	sprite_index = global.building_sprites[building_id];
	image_xscale = (global.plot_width / sprite_width) * 0.9;
	// Recalculate bounds
	build_left = x - sprite_width/2;
	build_right = x + sprite_width/2;
}

// Set color based on whether the plot is flashing or not
if (flashing) 
{
    draw_set_color(flash_color); // Flash color
} else 
{
    draw_set_color(normal_color); // Normal color
}



// Draw the plot sprite with the selected color
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, draw_get_color(), image_alpha);