lab_master_x = 0;
lab_master_y = 0;

global.chosen_egg_type = -1; 
global.wild_pokemon_a_id = 0;
global.wild_pokemon_b_id = 0;
global.wild_pokemon_a_x = -1;
global.wild_pokemon_b_x = -1;

delay_limit = room_speed / 5;
delay = 0;
egg_y = 440
egg_count = array_length(global.egg_types_found)
var wall_gap = max(sprite_width / 2);
var egg_padding_factor = 0.25
var egg_segment = (room_width - 2 * wall_gap) / (egg_count)
var egg_offset = egg_segment / 2;
var egg_padding = egg_segment * egg_padding_factor;
var egg_segment_adj = egg_segment * (1 - egg_padding_factor)
var incubator_scale = 1 //min(egg_segment_adj / 180, 1) // scale of incubator sprite
var egg_scale = incubator_scale * 2.5


// Loop through the array to create instances of OBJ_Egg
for (var i = 0; i < min(1,egg_count) ; i++) // Loop starting from 0
{
	
	egg_x[i] = i * (egg_segment) + egg_offset + wall_gap;
	egg_x[0] = room_width / 2
    // Create an instance of OBJ_Egg at the x, y coordinates from the arrays
    var instance_egg = instance_create_layer(egg_x[i], egg_y, "Instances", OBJ_Lab_Egg);
    instance_egg.type_id = global.egg_types_found[i];
    instance_egg.image_xscale = egg_scale;
    instance_egg.image_yscale = egg_scale;
	
	//create an instance of OBJ_Incubator
	var incubator = instance_create_layer(egg_x[i], egg_y, "Instances_1", OBJ_Incubator);
	incubator.image_xscale = incubator_scale;
	incubator.image_yscale = incubator_scale;
}

global.selected_egg = 0;  // Start with the first egg (index 0)