// Room End Event - Clean up spawn segments when leaving town
// F-022: Clear all spawn segments to prevent stuck segments

show_debug_message("Room ending - clearing all spawn segments");
if (variable_global_exists("SCR_Clear_All_Spawn_Segments")) {
    global.SCR_Clear_All_Spawn_Segments();
} else {
    show_debug_message("SCR_Clear_All_Spawn_Segments not available - segments may not be cleared");
}