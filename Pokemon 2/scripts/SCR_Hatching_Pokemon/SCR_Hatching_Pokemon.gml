function SCR_Hatching_Pokemon()
{
    if need_sprite == true
    {
        var selected_type = global.types[global.chosen_egg_type]; // Get the egg's type
		show_debug_message("Selected Type is: " + string(selected_type))
        var matching_pokemon_id = []; // Array to hold Pokémon matching the selected type
		var matching_pokemon_name = [];
		var matching_pokemon_weight = [];
		var matching_pokemon_bucket = [];
		var matching_pokemon_bst = [];
		var bucket_size = 100;
		
		// Calculate Town Power
		var town_power = global.iv_health 
		               + global.iv_attack 
		               + global.iv_SPattack 
		               + global.iv_defence 
		               + global.iv_SPdefence 
		               + global.iv_speed 
		               + global.iv_crit 
		               + global.building_count * 5;

		// 1. Find all valid Pokémon for the egg type.
		for (var i = 1; i < array_length(global.Dex_Primary_Types); i++) 
		{
			// Check if Pokémon has the selected type and is marked for hatching.
			if ((global.Dex_Primary_Types[i] == selected_type || global.Dex_Secondary_Types[i] == selected_type) && global.Dex_Hatching[i] == true) 
			{
				var matching_count = array_length(matching_pokemon_id)              
		        matching_pokemon_id[matching_count] = i;
				matching_pokemon_name[matching_count] = global.Dex_Names[i];
				// Compute total base stats (BST)
		        matching_pokemon_bst[matching_count] = global.Dex_Attack[i]
		                + global.Dex_SPattack[i]
		                + global.Dex_Defence[i]
		                + global.Dex_SPdefence[i]
		                + global.Dex_Speed[i]
		                + global.Dex_Health[i];
				matching_pokemon_bucket[matching_count] = floor((matching_pokemon_bst[matching_count] - 195) / bucket_size);
			}
		}


		// 2. Find the lowest bucket index among candidates.
		var lowest_bucket = matching_pokemon_bucket[0];
		for (var j = 0; j < array_length(matching_pokemon_bucket); j++) 
		{
		    if (matching_pokemon_bucket[j] < lowest_bucket)
			{
		        lowest_bucket = matching_pokemon_bucket[j];
		    }
		}

		// 3. Look for BST appropriate pokemon and assign a weighting.
		var appropriate_candidate = false;
		var matching_count = array_length(matching_pokemon_id)
		
		for (var j = 0; j < matching_count; j++) 
		{
		    matching_pokemon_weight[j] = 0;
			// Baseline is based on town power plus an offset (200).
			var baseline = town_power + 200;
			// Calculate difference between bucket midpoint and baseline.
			var diff = abs(matching_pokemon_bst[j] - baseline);
			
			if (diff <= bucket_size)
			{
				// Weighting decreases linearly from 100 (if diff is 0) to 1 (if diff is 100).
		        var temp_weight = round(100 * (1 - diff / 100));
		        if (temp_weight < 1) temp_weight = 1;
				matching_pokemon_weight[j] = temp_weight
				appropriate_candidate = true;
				
				show_debug_message(matching_pokemon_name[j]
					+ " is an appropriate hatching candidate, Weighting: "
					+ string(matching_pokemon_weight[j]));
			}
		}
		
		// 4. Fall back to the weakest bucket pokemon if there are no BST appropriate options.
		if ( appropriate_candidate == false)
		{
			for (var j = 0; j < matching_count; j++) 
			{
				// If candidate is in the lowest bucket, assign a strong weighting.
			    if (matching_pokemon_bucket[j] == lowest_bucket)
				{
					var bucket_min_bst = 195 + lowest_bucket * bucket_size
					var diff = abs(matching_pokemon_bst[j] - bucket_min_bst);
			        // Weighting decreases linearly from 100 (if diff is 0) to 1 (if diff is 100).
			        var temp_weight = round(100 * (1 - diff / 100));
			        if (temp_weight < 1) temp_weight = 1;
					matching_pokemon_weight[j] = temp_weight
					show_debug_message(matching_pokemon_name[j]
						+ " is a fallback hatching candidate, Weighting: "
						+ string(matching_pokemon_weight[j]));
			    } 
			}
		}


        // 5. Select a random Pokémon from the matching list
		var total_weight = 0;
		
		for (var i = 0; i < matching_count; i++) 
		{
		    total_weight += matching_pokemon_weight[i];
		}

		var random_pick = irandom(total_weight - 1);
		var cumulative_weight = 0;

		for (var i = 0; i < matching_count; i++) 
		{
		    cumulative_weight += matching_pokemon_weight[i];
		    if (random_pick < cumulative_weight) 
			{
				var chance_hatch = SCR_Round_N(matching_pokemon_weight[i] / total_weight * 100,2)
		        pokedex_id = matching_pokemon_id[i]; // Return the selected Pokémon ID
				break;
		    }
		}
			            

        pokemon_name = matching_pokemon_name[i];
        sprite_index = global.Dex_Sprites[pokedex_id]; 
       
		show_debug_message("Hatched Pokemon is: "+ matching_pokemon_name[i]);
		show_debug_message("Chance of Hatching: " + string(chance_hatch) + "%");
		need_sprite = false; // Mark sprite as assigned
	}
}