function SCR_Wild_Pokemon()
{
	// Generate a shuffled array of valid wild pokemon to use
	global.valid_wild_pokemon = [];
	for (var i = 1; i < array_length(global.Dex_Names); i++)
	{
		var evolve_ready = (global.Dex_Evolve_Level[i] <= global.pokemon_level)
		var has_evolution = (global.Dex_Evolve_Level[i] != -1)
		var hatching = global.Dex_Hatching[i]
		
		if (hatching && !has_evolution)
		{
			array_push(global.valid_wild_pokemon, i)
		}
		else if (hatching && !evolve_ready)
		{
			array_push(global.valid_wild_pokemon, i)
		}		
		else if (evolve_ready && has_evolution)
		{
			// add the evolution of the current pokemon index to the array
			array_push(global.valid_wild_pokemon, i+1)
			
			if (i == 133) // Special case for Eevee
			array_push(global.valid_wild_pokemon, 134) // Vaporeon
			array_push(global.valid_wild_pokemon, 135) // Jolteon
			array_push(global.valid_wild_pokemon, 136) // Flareon
		}	
	}
	SCR_Shuffle_Array(global.valid_wild_pokemon);
	global.wild_pokemon_level = global.pokemon_level - global.wild_pokemon_level_gap;
}