/*
 * SCR_Get_Habitat_Index.gml
 *
 * HABITAT STRING TO INDEX CONVERTER
 *
 * Converts human-readable habitat name strings to efficient array indices.
 * This allows setting habitats with readable strings but storing/using as integers.
 *
 * USAGE:
 * var habitat_idx = SCR_Get_Habitat_Index("Forest"); // Returns 0
 * global.Dex_Habitats[1] = [SCR_Get_Habitat_Index("Grassland")]; // Bulbasaur
 *
 * HABITAT MAPPING (from SCR_Biome_Habitats):
 * 0 = Forest
 * 1 = Grassland
 * 2 = Mountain
 * 3 = Sea
 * 4 = Urban
 * 5 = Cave
 * 6 = Waters-Edge
 * ... (expandable)
 *
 * PARAMETERS:
 * habitat_name (string) - The habitat name to convert (e.g., "Forest", "Sea")
 *
 * RETURNS:
 * integer - The habitat index (0+), or 0 (Forest) if not found
 *
 * CREATED: December 2025 for F-001 Habitat-Background Architecture
 */

function SCR_Get_Habitat_Index(habitat_name) {
    // Search through habitat names array
    for (var i = 0; i < array_length(global.Habitat_Names); i++) {
        if (global.Habitat_Names[i] == habitat_name) {
            return i;
        }
    }

    // Habitat not found - default to first habitat (Forest)
    show_debug_message("SCR_Get_Habitat_Index: Unknown habitat '" + habitat_name + "' - defaulting to Forest (0)");
    return 0;
}
