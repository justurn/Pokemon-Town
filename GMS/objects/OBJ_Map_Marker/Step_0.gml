// OBJ_Map_Marker Step Event
// Handle sprite changes and animation based on selection state

// Initialize variables if not set
if (!variable_instance_exists(id, "is_selected")) {
    is_selected = false;
}

if (!variable_instance_exists(id, "was_selected")) {
    was_selected = false;
}

// Check if selection state changed
if (is_selected != was_selected) {
    // Selection state changed - update sprite and reset animation
    if (is_selected) {
        sprite_index = SPR_Marker_Selected;
        image_index = 0; // Start animation from beginning
    } else {
        sprite_index = SPR_Marker;
        image_index = 0;
    }
    was_selected = is_selected;
}