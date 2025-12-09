// OBJ_Map_Marker Draw Event
// Draw marker with selection state

// Initialize variables if not set
if (!variable_instance_exists(id, "is_selected")) {
    is_selected = false;
}

// Just use draw_self() - sprite_index is set in Step event
draw_self();

// Optional: Draw biome name below marker for debugging
if (is_selected && variable_instance_exists(id, "biome_index")) {
    // Get biome name from array using child's biome_index
    var biome_name = global.Biome_Names[biome_index];

    // Draw text below marker
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(x, y + 32, biome_name);
    draw_set_halign(fa_left); // Reset alignment
}