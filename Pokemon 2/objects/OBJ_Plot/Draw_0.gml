// Draw Event of OBJ_Plot

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
