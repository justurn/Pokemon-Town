if (global.chosen_egg_type != -1)
{
	type_id = global.chosen_egg_type
}
else
{
	type_id = global.egg_types_found[global.selected_egg];	
}

// F-019: Apply shake offsets during lab hatching mode
var draw_x = x;
var draw_y = y;

if (room == RM_Lab && instance_exists(OBJ_Master_Lab)) {
    with (OBJ_Master_Lab) {
        if (lab_mode == "hatching") {
            draw_x = other.x + shake_offset_x;
            draw_y = other.y + shake_offset_y;
        }
    }
}

if (room = RM_Hatching)
{
	timer++;
   
	x += random_range(-2, 2); // Random horizontal shake
	y += random_range(-1, 1); // Slight vertical shake
	
	if sprite_index == SPR_Cracked_Egg && image_index >= image_number - 1 
	{
		// The cracked egg animation has finished
		instance_create_layer(x, y, "Instances", OBJ_Lab_Pokemon);
		sprite_index = SPR_Blank;
	}
     
	if (timer == 60)
	{
		// Switch sprite to the cracked egg or start hatching
		sprite_index = SPR_Cracked_Egg;
	} 
	
	else if (timer > 300)
	{
		room_goto(RM_Town); // Go back to the town
	}
}
	
var egg_colour = global.type_colors[type_id]

// F-019: Use calculated draw position (with shake offsets in lab mode)
draw_sprite_ext(sprite_index, image_index, draw_x, draw_y, image_xscale, image_yscale, image_angle, egg_colour, image_alpha);

