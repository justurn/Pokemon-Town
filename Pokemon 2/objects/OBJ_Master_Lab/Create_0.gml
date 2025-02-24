lab_master_x = 0;
lab_master_y = 0;

global.chosen_egg_type = -1; 
global.wild_pokemon_id = 0;
global.wild_pokemon_x = -1;

egg_y = 440
egg_count = array_length(global.egg_types_found)
var x_segments = room_width / egg_count
var x_padding = x_segments / 2

// Loop through the array to create instances of OBJ_Egg
for (var i = 0; i < egg_count ; i++) // Loop starting from 0
{
	egg_x[i] = x_segments * i + x_padding
    // Create an instance of OBJ_Egg at the x, y coordinates from the arrays
    var instance_egg = instance_create_layer(egg_x[i], egg_y, "Instances", OBJ_Lab_Egg);
    instance_egg.type_id = global.egg_types_found[i];
    instance_egg.image_xscale = 2.5;
    instance_egg.image_yscale = 2.5;
	
	//create an instance of OBJ_Incubator
	instance_create_layer(egg_x[i], egg_y, "Instances_1", OBJ_Incubator);
}
    
selected_egg = 1;  // Start with the first egg (index 1)




