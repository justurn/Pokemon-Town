function SCR_Create_Sparkle_Effect(start_x, end_x, start_y, end_y) {
    // Create sparkles across specified area with consistent spacing and randomization
    // Used for both lab hatching and battle evolution
    
    var sparkle_list = [];
    
    for (var sparkle_x = start_x; sparkle_x <= end_x; sparkle_x += random_range(50, 70)) {
        for (var sparkle_y = start_y; sparkle_y <= end_y; sparkle_y += random_range(50, 70)) {
            var sparkle = instance_create_depth(sparkle_x + random_range(-20, 20), 
                                               sparkle_y + random_range(-20, 20), 
                                               -1000, OBJ_Sparkle);
            // De-sync sparkle animations by setting random image_index
            with (sparkle) {
                image_index = random(image_number);
            }
            array_push(sparkle_list, sparkle);
        }
    }
    
    return sparkle_list;
}