function SCR_Calculate_Egg_Probabilities(egg_type)
{
    var matching_pokemon_id = []; // Array to hold Pokémon matching the selected type
    var matching_pokemon_name = [];
    var matching_pokemon_weight = [];
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
        if ((global.Dex_Primary_Types[i] == egg_type || global.Dex_Secondary_Types[i] == egg_type) && global.Dex_Hatching[i] == true) 
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
        }
    }

    // Initialize weights array
    var matching_count = array_length(matching_pokemon_id);
    for (var j = 0; j < matching_count; j++) 
    {
        matching_pokemon_weight[j] = 0;
    }

    // 2. Find the lowest bucket index among candidates.
    var lowest_bucket = floor((matching_pokemon_bst[0] - 195) / bucket_size);
    for (var j = 1; j < matching_count; j++) 
    {
        var bucket = floor((matching_pokemon_bst[j] - 195) / bucket_size);
        if (bucket < lowest_bucket)
        {
            lowest_bucket = bucket;
        }
    }

    // 3. Look for BST appropriate pokemon and assign a weighting.
    var appropriate_candidate = false;
    var baseline = town_power + 200;
    
    for (var j = 0; j < matching_count; j++) 
    {
        // Calculate difference between pokemon BST and baseline.
        var diff = abs(matching_pokemon_bst[j] - baseline);
        
        if (diff <= bucket_size)
        {
            // Weighting decreases linearly from 100 (if diff is 0) to 1 (if diff is 100).
            var temp_weight = round(100 * (1 - diff / 100));
            if (temp_weight < 1) temp_weight = 1;
            matching_pokemon_weight[j] = temp_weight
            appropriate_candidate = true;
        }
    }
    
    // 4. Fall back to the weakest bucket pokemon if there are no BST appropriate options.
    if (appropriate_candidate == false)
    {
        for (var j = 0; j < matching_count; j++) 
        {
            var bucket = floor((matching_pokemon_bst[j] - 195) / bucket_size);
            // If candidate is in the lowest bucket, assign a strong weighting.
            if (bucket == lowest_bucket)
            {
                var bucket_min_bst = 195 + lowest_bucket * bucket_size
                var diff = abs(matching_pokemon_bst[j] - bucket_min_bst);
                // Weighting decreases linearly from 100 (if diff is 0) to 1 (if diff is 100).
                var temp_weight = round(100 * (1 - diff / 100));
                if (temp_weight < 1) temp_weight = 1;
                matching_pokemon_weight[j] = temp_weight
            } 
        }
    }

    // 5. Calculate total weight and percentages
    var total_weight = 0;
    for (var i = 0; i < matching_count; i++) 
    {
        total_weight += matching_pokemon_weight[i];
    }

    // Create arrays for sorted results
    var sorted_ids = [];
    var sorted_names = [];
    var sorted_weights = [];
    var sorted_percentages = [];

    // Sort by weight (highest first)
    for (var i = 0; i < matching_count; i++) 
    {
        var max_weight = -1;
        var max_index = -1;
        
        // Find highest weight not yet added
        for (var j = 0; j < matching_count; j++) 
        {
            var already_added = false;
            for (var k = 0; k < array_length(sorted_ids); k++) 
            {
                if (sorted_ids[k] == matching_pokemon_id[j]) 
                {
                    already_added = true;
                    break;
                }
            }
            
            if (!already_added && matching_pokemon_weight[j] > max_weight) 
            {
                max_weight = matching_pokemon_weight[j];
                max_index = j;
            }
        }
        
        if (max_index != -1) 
        {
            var percentage = round((matching_pokemon_weight[max_index] / total_weight) * 100);
            // Only add Pokemon with >0% chance
            if (percentage > 0) {
                var sorted_count = array_length(sorted_ids);
                sorted_ids[sorted_count] = matching_pokemon_id[max_index];
                sorted_names[sorted_count] = matching_pokemon_name[max_index];
                sorted_weights[sorted_count] = matching_pokemon_weight[max_index];
                sorted_percentages[sorted_count] = percentage;
            }
        }
    }

    // Debug output showing ALL Pokemon options
    show_debug_message("=== EGG PROBABILITY CALCULATION ===");
    show_debug_message("Egg Type: " + string(egg_type));
    show_debug_message("Town Power: " + string(town_power));
    show_debug_message("Baseline: " + string(baseline));
    show_debug_message("Total Candidates: " + string(matching_count));
    show_debug_message("--- ALL POKEMON OPTIONS ---");
    
    for (var i = 0; i < array_length(sorted_ids); i++) {
        var debug_msg = string(i+1) + ". " + sorted_names[i] + 
                       " (ID:" + string(sorted_ids[i]) + 
                       ") - " + string(sorted_percentages[i]) + "% chance";
        show_debug_message(debug_msg);
    }
    
    show_debug_message("===================================");

    // Return struct with sorted results
    return {
        pokemon_ids: sorted_ids,
        pokemon_names: sorted_names,
        pokemon_weights: sorted_weights,
        pokemon_percentages: sorted_percentages,
        total_weight: total_weight,
        pokemon_count: array_length(sorted_ids), // Use filtered count, not original matching_count
        town_power: town_power,
        baseline: baseline
    };
}