// Destroy Event - Clean up segment when item is collected
// F-022: Release the assigned segment when item is destroyed

if (variable_instance_exists(id, "assigned_segment")) {
    global.SCR_Release_Spawn_Segment(assigned_segment);
    show_debug_message("Item destroyed - released segment: " + string(assigned_segment));
}