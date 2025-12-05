/*
 * SCR_Get_Biome_Index.gml
 *
 * BIOME STRING TO INDEX CONVERTER
 *
 * Converts human-readable biome name strings to efficient array indices.
 * This allows setting biomes with readable strings but storing/using as integers.
 *
 * USAGE:
 * var biome_idx = SCR_Get_Biome_Index("Forest"); // Returns 0
 * global.selected_biome_index = SCR_Get_Biome_Index("Mountains"); // Sets to 3
 *
 * BIOME MAPPING (from SCR_Biome_Habitats):
 * 0 = Forest
 * 1 = Fields
 * 2 = Ice
 * 3 = Mountains
 * 4 = Water
 * 5 = Town
 *
 * PARAMETERS:
 * biome_name (string) - The biome name to convert (e.g., "Forest", "Water")
 *
 * RETURNS:
 * integer - The biome index (0-5), or 5 (Town) if not found
 *
 * CREATED: December 2025 for F-001 Phase 1.2
 */

function SCR_Get_Biome_Index(biome_name) {
    // Search through biome names array
    for (var i = 0; i < array_length(global.Biome_Names); i++) {
        if (global.Biome_Names[i] == biome_name) {
            show_debug_message("SCR_Get_Biome_Index: '" + biome_name + "' → index " + string(i));
            return i;
        }
    }

    // Biome not found - default to Town
    show_debug_message("SCR_Get_Biome_Index: Unknown biome '" + biome_name + "' - defaulting to Town (5)");
    return 5; // Town is index 5
}
