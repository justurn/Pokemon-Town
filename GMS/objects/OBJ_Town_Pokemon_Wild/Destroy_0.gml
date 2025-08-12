// Destroy Event - Clean up segment when wild Pokemon is destroyed
// F-022: Release the assigned segment when wild Pokemon is destroyed

if (variable_instance_exists(id, "assigned_segment")) {
    global.SCR_Release_Spawn_Segment(assigned_segment);
    show_debug_message("Wild Pokemon destroyed - released segment: " + string(assigned_segment));
}