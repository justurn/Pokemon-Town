function SCR_Hatching_Pokemon()
{
    if need_sprite == true
    {
        var selected_type = global.types[global.chosen_egg_type]; // Get the egg's type
		show_debug_message("Selected Type is: " + string(selected_type))
        var matching_pokemon = []; // Array to hold Pokémon matching the selected type
		var matching_pokemon_names = [];
		var name_string = "";

        // Iterate through the Dex to find Pokémon with the matching type
        for (var i = 1; i < array_length(global.Dex_Primary_Types); i++) 
        {
            if (global.Dex_Primary_Types[i] == selected_type && global.Dex_Hatching[i] = true)
            {
                array_push(matching_pokemon, i); // Add Pokémon ID to the list
				name_string = global.Dex_Names[i];
				array_push(matching_pokemon_names, name_string); // Add Pokémon ID to the list
            }
        }
		
		show_debug_message("Valid Hatching Pokemon: " + string(matching_pokemon_names));

        // Select a random Pokémon from the matching list
        if (array_length(matching_pokemon) > 0)
        {
            var random_index = irandom(array_length(matching_pokemon) - 1);
            pokedex_id = matching_pokemon[random_index];
			            
            // Lookup sprite by Pokémon ID
            pokemon_name = global.Dex_Names[pokedex_id]; // Ensure this array contains Pokémon names by ID
            sprite_index = global.Dex_Sprites[pokedex_id]; // Sprite names should match "SPR_<PokemonName>"
       
			show_debug_message("Hatched Pokemon is: "+ pokemon_name)
	   }
        else
        {
            // Fallback in case no matching Pokémon is found
            sprite_index = SPR_X; // Replace with your default sprite
        }

        need_sprite = false; // Mark sprite as assigned
    }
}