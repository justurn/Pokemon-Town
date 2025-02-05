function SCR_Lab_Eggs()
{
    // Define the egg positions (Starting from 1 to match your indexing)
    egg_x[0] = 360;
    egg_y[0] = 768;
    
    egg_x[1] = 712;
    egg_y[1] = 765;
    
    egg_x[2] = 1024;
    egg_y[2] = 768;
    
    // Loop through the array to create instances of OBJ_Egg
    for (var i = 0; i < global.item_hidden[0] ; i++) // Loop starting from 0
    {
        // Create an instance of OBJ_Egg at the x, y coordinates from the arrays
        var instance_egg = instance_create_layer(egg_x[i], egg_y[i], "Instances", OBJ_Lab_Egg);
        instance_egg.type_id = global.egg_types[i];
        instance_egg.image_xscale = 3;
        instance_egg.image_yscale = 3;
    }
    
    selected_egg = 1;  // Start with the first egg (index 1)
}
