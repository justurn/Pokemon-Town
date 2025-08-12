// Assign the sprite and adjust the Y position after creation.
if (just_created)
{
	sprite_index = global.building_sprites[building_id]
	image_xscale = (global.plot_width / sprite_width) * 0.9
	y = y - sprite_height/2;
	just_created = false;
	build_left = x - sprite_width/2;    // Left edge of the building
	build_right = x + sprite_width/2;   // Right edge of the building
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