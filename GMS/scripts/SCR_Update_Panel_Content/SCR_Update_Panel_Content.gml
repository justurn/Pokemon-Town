function SCR_Update_Panel_Content()
{
    // F-019: Update panel content for all interactive modes to maintain probability display
    if (array_length(global.egg_types_found) > 0 && (lab_mode == "egg_selection" || lab_mode == "hatching" || lab_mode == "post_hatch")) 
    {
        // Ensure selected_egg is within bounds
        if (global.selected_egg >= array_length(global.egg_types_found)) {
            global.selected_egg = 0;
        }
        var current_egg_type = global.egg_types_found[global.selected_egg];
        var selected_type_string = global.types[current_egg_type];
        
        // Calculate probabilities for current egg
        panel_prob_data = SCR_Calculate_Egg_Probabilities(selected_type_string);
        
        // Determine how many Pokemon to display (max 5)
        display_pokemon_count = min(5, panel_prob_data.pokemon_count);
        
        show_debug_message("Panel updated for " + selected_type_string + " egg - " + string(panel_prob_data.pokemon_count) + " Pokemon possible");
    }
    else 
    {
        panel_prob_data = undefined;
        display_pokemon_count = 0;
    }
}