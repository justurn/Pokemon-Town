// Destroy Event - Clean up segment when rival trainer is destroyed
// F-022: Release the assigned segment when rival trainer is destroyed

// Save position data for room transitions (only if not starting a battle)
if (global.rival_encounter_active) {
    global.rival_saved_x = x;
    global.rival_saved_patrol_left = patrol_left;
    global.rival_saved_patrol_right = patrol_right;
    show_debug_message("Rival position saved: x=" + string(x) + ", patrol=" + string(patrol_left) + "-" + string(patrol_right));
}

if (variable_instance_exists(id, "assigned_segment")) {
    global.SCR_Release_Spawn_Segment(assigned_segment);
    show_debug_message("Rival trainer destroyed - released segment: " + string(assigned_segment));
}