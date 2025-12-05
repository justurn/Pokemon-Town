/*
 * SCR_Get_Biome_Pokemon.gml
 * 
 * BIOME POKEMON QUERY SYSTEM
 * 
 * This script provides functions to query Pokemon by biome for F-001 Adventure System.
 * Returns arrays of Pokemon IDs that can spawn in specific biomes.
 * 
 * MAIN FUNCTION:
 * - SCR_Get_Biome_Pokemon(biome_id) - Returns array of Pokemon IDs for biome
 * 
 * BIOME IDs:
 * 0 = Forest, 1 = Fields, 2 = Ice, 3 = Mountains, 4 = Water, 5 = Town
 * 
 * CREATED: December 2025 for F-001 Phase 1.2
 */

function SCR_Get_Biome_Pokemon(biome_id) {
    var pokemon_list = [];
    
    // Validate biome_id
    if (biome_id < 0 || biome_id > 5) {
        show_debug_message("Invalid biome_id: " + string(biome_id));
        return pokemon_list; // Return empty array
    }
    
    // Search through all Gen 1 Pokemon (expanded to 151 with real data)
    for (var pokemon_id = 1; pokemon_id <= 151; pokemon_id++) {
        // Check if this Pokemon has habitats assigned
        if (array_length(global.Dex_Habitats[pokemon_id]) > 0) {
            
            // Check each habitat of this Pokemon
            for (var h = 0; h < array_length(global.Dex_Habitats[pokemon_id]); h++) {
                var habitat_id = global.Dex_Habitats[pokemon_id][h];
                
                // Check if this habitat maps to the requested biome
                if (global.habitat_biome[habitat_id] == biome_id) {
                    array_push(pokemon_list, pokemon_id);
                    break; // Don't add the same Pokemon twice
                }
            }
        }
    }
    
    show_debug_message("Biome " + string(biome_id) + " (" + global.biome_names[biome_id] + ") has " + string(array_length(pokemon_list)) + " Pokemon: " + string(pokemon_list));
    
    return pokemon_list;
}

// Helper function: Get random Pokemon from biome
function SCR_Get_Random_Biome_Pokemon(biome_id) {
    var pokemon_list = SCR_Get_Biome_Pokemon(biome_id);
    
    if (array_length(pokemon_list) == 0) {
        show_debug_message("No Pokemon found for biome " + string(biome_id) + ", returning Bulbasaur as fallback");
        return 1; // Fallback to Bulbasaur
    }
    
    var random_index = irandom(array_length(pokemon_list) - 1);
    var selected_pokemon = pokemon_list[random_index];
    
    show_debug_message("Selected " + global.Dex_Names[selected_pokemon] + " (ID: " + string(selected_pokemon) + ") from " + global.biome_names[biome_id] + " biome");
    
    return selected_pokemon;
}