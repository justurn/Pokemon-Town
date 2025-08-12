// Destroy Event - Clean up segment when rival trainer is destroyed
// F-022: Release the assigned segment when rival trainer is destroyed

if (variable_instance_exists(id, "assigned_segment")) {
    global.SCR_Release_Spawn_Segment(assigned_segment);
    show_debug_message("Rival trainer destroyed - released segment: " + string(assigned_segment));
}