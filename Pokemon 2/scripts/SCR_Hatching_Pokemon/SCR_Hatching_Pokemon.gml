function SCR_Hatching_Pokemon()
{
    if (need_sprite == true)
    {
        var selected_type = global.types[global.chosen_egg_type]; // Get the egg's type
        show_debug_message("Selected Type is: " + string(selected_type))
        
        // Calculate probabilities for this egg type
        var prob_data = SCR_Calculate_Egg_Probabilities(selected_type);
        
        // Use weighted random selection from the pre-calculated probabilities
        var random_pick = irandom(prob_data.total_weight - 1);
        var cumulative_weight = 0;
        var selected_index = -1;

        for (var i = 0; i < prob_data.pokemon_count; i++) 
        {
            cumulative_weight += prob_data.pokemon_weights[i];
            if (random_pick < cumulative_weight) 
            {
                selected_index = i;
                break;
            }
        }

        // Set global variables for hatching display
        if (selected_index != -1) 
        {
            pokedex_id = prob_data.pokemon_ids[selected_index];
            pokemon_name = prob_data.pokemon_names[selected_index];
            sprite_index = global.Dex_Sprites[pokedex_id];
            
            var chance_hatch = prob_data.pokemon_percentages[selected_index];
            
            show_debug_message("Hatched Pokemon is: " + pokemon_name);
            show_debug_message("Chance of Hatching: " + string(chance_hatch) + "%");
        }
        else 
        {
            show_debug_message("ERROR: No Pokemon could be selected for hatching!");
        }
        
        need_sprite = false; // Mark sprite as assigned
    }
}