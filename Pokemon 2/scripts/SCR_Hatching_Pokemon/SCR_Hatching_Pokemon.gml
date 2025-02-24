function SCR_Hatching_Pokemon()
{
    if need_sprite == true
    {
        var selected_type = global.types[global.chosen_egg_type]; // Get the egg's type
		show_debug_message("Selected Type is: " + string(selected_type))
        var matching_pokemon = []; // Array to hold Pokémon matching the selected type
		var matching_pokemon_names = [];
		var matching_pokemon_weights = [];
		var name_string = "";
		var weight = 0;
		var bst = 0;
		
		// Calculate Town Power
		var town_power = global.iv_health 
		               + global.iv_attack 
		               + global.iv_SPattack 
		               + global.iv_defence 
		               + global.iv_SPdefence 
		               + global.iv_speed 
		               + global.iv_crit 
		               + global.building_count * 5;

		show_debug_message("Valid Hatching Pokemon:");
        // Iterate through the Dex to find Pokémon with the matching type
        for (var i = 1; i < array_length(global.Dex_Primary_Types); i++) 
        {
            if (global.Dex_Primary_Types[i] == selected_type && global.Dex_Hatching[i] = true)
            {
                array_push(matching_pokemon, i); // Add Pokémon ID to the list
				name_string = global.Dex_Names[i];
				array_push(matching_pokemon_names, name_string); // Add Pokémon ID to the list
				
				// **Weight Calculation**
                bst = global.Dex_Attack[i]
					+ global.Dex_SPattack[i]
					+ global.Dex_Defence[i] 
					+ global.Dex_SPdefence[i]
					+ global.Dex_Speed[i]
					+ global.Dex_Health[i];


				var bst_diff = abs(bst - (town_power + 200)); 
				var scale_a = 754
				var scale_b = 21
				var weight = max(1, round(scale_a - scale_b * power(ln(bst_diff),2)));

                array_push(matching_pokemon_weights, weight);

				show_debug_message(name_string + " Hatch Weigthing: " + string(weight));
            }
        }
		

        // Select a random Pokémon from the matching list
        if (array_length(matching_pokemon) > 0)
        {
			var total_weight = 0;
		    for (var i = 0; i < array_length(matching_pokemon_weights); i++) 
			{
		        total_weight += matching_pokemon_weights[i];
		    }

		    var random_pick = irandom(total_weight - 1);
		    var cumulative_weight = 0;

		    for (var i = 0; i < array_length(matching_pokemon); i++) 
			{
				
		        cumulative_weight += matching_pokemon_weights[i];
		        if (random_pick < cumulative_weight) 
				{
					var chance_hatch = SCR_Round_N(matching_pokemon_weights[i] / total_weight * 100,2)
		            pokedex_id = matching_pokemon[i]; // Return the selected Pokémon ID
					break;
		        }
		    }
			            
            // Lookup sprite by Pokémon ID
            pokemon_name = global.Dex_Names[pokedex_id]; // Ensure this array contains Pokémon names by ID
            sprite_index = global.Dex_Sprites[pokedex_id]; // Sprite names should match "SPR_<PokemonName>"
       
			show_debug_message("Hatched Pokemon is: "+ pokemon_name)
			show_debug_message("Chance of Hatching: " + string(chance_hatch) + "%")
	   }
        else
        {
            // Fallback in case no matching Pokémon is found
            sprite_index = SPR_X; // Replace with your default sprite
        }

        need_sprite = false; // Mark sprite as assigned
    }
}