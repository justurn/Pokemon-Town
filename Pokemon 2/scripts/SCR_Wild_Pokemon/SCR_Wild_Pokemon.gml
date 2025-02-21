function SCR_Wild_Pokemon()
{
	// Generate a shuffled array of valid wild pokemon to use
	global.valid_wild_pokemon = [];
	for (var i = 1; i < array_length(global.Dex_Names); i++)
	{
		var evolve_ready = (global.Dex_Evolve_Level[i] <= global.pokemon_level)
		var has_evolution = (global.Dex_Evolve_Level[i] != -1)
		var hatching = global.Dex_Hatching[i]
		
		if (hatching && !has_evolution) || (hatching && !evolve_ready)
		{
			array_push(global.valid_wild_pokemon, i)
		}
		else if (evolve_ready && has_evolution)
		{
			// add the evolution of the current pokemon index to the array
			array_push(global.valid_wild_pokemon, i+1)
			
			if (i == 133) // Special case for Eevee
			{
				array_push(global.valid_wild_pokemon, 134) // Vaporeon
				array_push(global.valid_wild_pokemon, 135) // Jolteon
				array_push(global.valid_wild_pokemon, 136) // Flareon
			}
		}	
	}
	SCR_Shuffle_Array(global.valid_wild_pokemon);
	global.wild_pokemon_level = global.pokemon_level - global.wild_pokemon_level_gap;
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
	
		 // Compare against strongest tamed Pokémon
	    var bst_diff = (tamed_bst - bst);
		
		// Parabolic spawn modifier: Penalizes too strong or too weak wild Pokémon
		var spawn_weight = max(1, round(30 / (1 + power(bst_diff/20, 2)))); // Quadratic penalty
		
		global.wild_spawn_weights[j] = spawn_weight;
		global.total_spawn_weight += spawn_weight;
		global.wild_spawn_diff[j] = bst_diff;
	}
}