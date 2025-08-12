function SCR_Wild_Pokemon(banned_ids = [])
{
	// Calculate minimum possible wild Pokemon level for filtering (worst case scenario)
	var min_wild_level = global.pokemon_level - global.wild_pokemon_level_gap;
	
	// Convert banned_ids to array if it's a single value
	if (!is_array(banned_ids)) {
		banned_ids = [banned_ids];
	}
	
	// Debug logging for banned Pokemon
	if (array_length(banned_ids) > 0) {
		var banned_names = "";
		for (var d = 0; d < array_length(banned_ids); d++) {
			if (d > 0) banned_names += ", ";
			banned_names += global.Dex_Names[banned_ids[d]];
		}
		show_debug_message("SCR_Wild_Pokemon: Banned Pokemon - " + banned_names);
	} else {
		show_debug_message("SCR_Wild_Pokemon: No banned Pokemon (general pool generation)");
	}
	
	// Generate a shuffled array of valid wild pokemon to use
	global.valid_wild_pokemon = [];
	for (var i = 1; i < array_length(global.Dex_Names); i++)
	{
		var evolve_ready = (global.Dex_Evolve_Level[i] <= min_wild_level)
		var has_evolution = (global.Dex_Evolve_Level[i] != -1)
		var hatching = global.Dex_Hatching[i]
		
		// Skip banned Pokemon IDs
		var is_banned = false;
		for (var b = 0; b < array_length(banned_ids); b++) {
			if (i == banned_ids[b]) {
				is_banned = true;
				break;
			}
		}
		if (is_banned) continue;
		
		if (hatching && !has_evolution) || (hatching && !evolve_ready)
		{
			array_push(global.valid_wild_pokemon, i)
		}
		else if (evolve_ready && has_evolution)
		{
			// Check if evolution is banned
			var evolution_banned = false;
			for (var b = 0; b < array_length(banned_ids); b++) {
				if ((i+1) == banned_ids[b]) {
					evolution_banned = true;
					break;
				}
			}
			
			if (!evolution_banned) {
				// add the evolution of the current pokemon index to the array
				array_push(global.valid_wild_pokemon, i+1)
			}
			
			if (i == 133) // Special case for Eevee
			{
				// Check each Eevee evolution individually for bans
				var eevee_evolutions = [134, 135, 136]; // Vaporeon, Jolteon, Flareon
				for (var e = 0; e < array_length(eevee_evolutions); e++) {
					var evo_banned = false;
					for (var b = 0; b < array_length(banned_ids); b++) {
						if (eevee_evolutions[e] == banned_ids[b]) {
							evo_banned = true;
							break;
						}
					}
					if (!evo_banned) {
						array_push(global.valid_wild_pokemon, eevee_evolutions[e]);
					}
				}
			}
		}	
	}
	global.total_spawn_weight = 0;
	global.wild_spawn_weights = [];
	global.wild_spawn_diff = [];
	
	
	var tamed_id = global.pokemon_ID
		
	var tamed_bst = global.Dex_Attack[tamed_id] 
        + global.Dex_SPattack[tamed_id] 
        + global.Dex_Defence[tamed_id] 
        + global.Dex_SPdefence[tamed_id] 
        + global.Dex_Speed[tamed_id] 
        + global.Dex_Health[tamed_id]
		+ global.iv_SPattack
		+ global.iv_SPdefence
		+ global.iv_attack
		+ global.iv_defence
		+ global.iv_health
		+ global.iv_speed;
		
	show_debug_message("Wild Encounter Weightings")
	
	for (var j = 0; j < array_length(global.valid_wild_pokemon); j++)
    {
        var poke_id = global.valid_wild_pokemon[j];

        // Calculate BST
        var bst = global.Dex_Attack[poke_id] 
                + global.Dex_SPattack[poke_id] 
                + global.Dex_Defence[poke_id] 
                + global.Dex_SPdefence[poke_id] 
                + global.Dex_Speed[poke_id] 
                + global.Dex_Health[poke_id];
	
		var bst_diff = tamed_bst - bst; 
		var scale = max(30, tamed_bst * 0.1); 
		var spawn_weight = max(1, round(100 / (1 + power(bst_diff / scale, 2))));
		var poke_name = global.Dex_Names[poke_id]
		
		//show_debug_message(poke_name + " Encounter Weighting is: " + string(spawn_weight))
		
		global.wild_spawn_weights[j] = spawn_weight;
		global.total_spawn_weight += spawn_weight;
		global.wild_spawn_diff[j] = bst_diff;
	}
}