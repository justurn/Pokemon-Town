/*
 * SCR_Get_Habitats_For_Biome.gml
 *
 * BIOME TO HABITATS QUERY
 *
 * Returns all habitat indices that belong to a specific biome.
 * Used for random habitat selection during battle initialization.
 *
 * USAGE:
 * var forest_habitats = SCR_Get_Habitats_For_Biome(0); // Returns [0, 1, 2] (Forest, Grove, Jungle)
 * var random_habitat = forest_habitats[irandom(array_length(forest_habitats) - 1)];
 *
 * PARAMETERS:
 * biome_index (integer) - The biome index (0-5)
 *
 * RETURNS:
 * array - Array of habitat indices belonging to this biome
 *
 * CREATED: December 2025 for F-001 Habitat-Background Architecture
 */

function SCR_Get_Habitats_For_Biome(biome_index) {
    var habitat_list = [];

    // Search through all habitats and find those belonging to this biome
    for (var i = 0; i < array_length(global.Habitat_Names); i++) {
        if (global.Habitat_Biome[i] == biome_index) {
            array_push(habitat_list, i);
        }
    }

    // Debug logging
    if (array_length(habitat_list) > 0) {
        var biome_name = global.Biome_Names[biome_index];
        show_debug_message("SCR_Get_Habitats_For_Biome: Biome '" + biome_name + "' (index " + string(biome_index) + ") has " + string(array_length(habitat_list)) + " habitats");
    } else {
        show_debug_message("SCR_Get_Habitats_For_Biome: WARNING - No habitats found for biome index " + string(biome_index));
    }

    return habitat_list;
}
