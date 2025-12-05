// OBJ_Map_Marker Draw Event
// Draw marker with selection state

// Initialize variables if not set
if (!variable_instance_exists(id, "is_selected")) {
    is_selected = false;
}

// Just use draw_self() - sprite_index is set in Step event
draw_self();

// Optional: Draw biome name below marker for debugging
if (is_selected) {
    var biome_name = "Unknown";
    
    // Get biome name based on object type
    if (object_index == OBJ_Map_Marker_Town) {
        biome_name = "Town";
    } else if (object_index == OBJ_Map_Marker_Forrest) {
        biome_name = "Forest";
    }
    
    // Draw text below marker
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(x, y + 32, biome_name);
    draw_set_halign(fa_left); // Reset alignment
}