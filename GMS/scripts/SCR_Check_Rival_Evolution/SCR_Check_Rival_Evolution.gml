function SCR_Check_Rival_Evolution(current_id, encounter_level) {
    var pokemon_id = current_id;
    
    // Keep evolving until we reach the appropriate form for the encounter level
    while (true) {
        var evolve_level = global.Dex_Evolve_Level[pokemon_id];
        
        // If this Pokemon doesn't evolve (-1) or evolves at higher level, stop
        if (evolve_level == -1 || evolve_level > encounter_level) {
            break;
        }
        
        // Find the next evolution (pokemon_id + 1 for most starter lines)
        pokemon_id += 1;
        
        // Safety check to prevent infinite loops
        if (pokemon_id > 251) break;
    }
    
    return pokemon_id;
}