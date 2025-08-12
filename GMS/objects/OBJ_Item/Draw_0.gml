if (item_id = 0) // special case for eggs
{
	var egg_colour = global.type_colors[egg_type]
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, egg_colour, image_alpha);
}

else
{
	draw_self();
}








