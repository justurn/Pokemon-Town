function SCR_Assign_Random_Moves(pokemon_instance)
{
    // F-018: FIXED - Single Move Database with Dynamic Type Filtering
    // Efficiently searches through parallel move arrays
    
    var pokemon_id = pokemon_instance.pokedex_id;
    var primary_type = global.Dex_Primary_Types[pokemon_id];
    var secondary_type = global.Dex_Secondary_Types[pokemon_id];

    // I-032 Fix: Validate primary_type before using it to prevent crashes
    if (primary_type == undefined || primary_type == "") {
        primary_type = "Normal"; // Safe default
        show_debug_message("ERROR: Pokemon ID " + string(pokemon_id) + " has undefined primary type, defaulting to Normal");
    }

    // Get type IDs using the fixed type mapping
    var primary_type_id = ds_map_find_value(global.type_name_to_id, string_lower(primary_type));
    var secondary_type_id = (secondary_type != "" && secondary_type != "None") ?
                           ds_map_find_value(global.type_name_to_id, string_lower(secondary_type)) : -1;
    
    // Initialize moves to 0 (no move)
    pokemon_instance.move_1 = 0;
    pokemon_instance.move_2 = 0;
    pokemon_instance.move_3 = 0;
    pokemon_instance.move_4 = 0;
    
    // Validate primary type was found
    if (primary_type_id == undefined) {
        primary_type_id = 0; // Default to Normal type
        show_debug_message("Warning: Unknown primary type '" + primary_type + "' for " + pokemon_instance.pokemon_name + ", defaulting to Normal");
    }
    
    // Build move pools by looping through single database - MUCH more efficient!
    var primary_physical_moves = [];
    var primary_special_moves = [];
    var secondary_physical_moves = [];
    var secondary_special_moves = [];
    
    // Single pass through move database to collect all matching moves
    
    for (var i = 1; i < array_length(global.move_name); i++) {
        // CRITICAL: Only consider moves with valid names (not undefined, empty, or "0")
        if (global.move_name[i] == undefined || global.move_name[i] == "" || string(global.move_name[i]) == "0") continue;
        
        // Check if move matches primary type
        if (global.move_type_id[i] == primary_type_id) {
            if (global.move_is_physical[i]) {
                array_push(primary_physical_moves, i);
            } else {
                array_push(primary_special_moves, i);
            }
        }
        
        // Check if move matches secondary type (if it exists)
        if (secondary_type_id != -1 && secondary_type_id != undefined && global.move_type_id[i] == secondary_type_id) {
            if (global.move_is_physical[i]) {
                array_push(secondary_physical_moves, i);
            } else {
                array_push(secondary_special_moves, i);
            }
        }
    }
    
    // Debug logging for move pool sizes
    show_debug_message("MOVE DEBUG: " + pokemon_instance.pokemon_name + " (" + primary_type + ") - Physical: " + string(array_length(primary_physical_moves)) + ", Special: " + string(array_length(primary_special_moves)));
    
    // Assign moves based on type structure
    if (secondary_type_id == -1 || secondary_type_id == undefined || secondary_type_id == primary_type_id) {
        // Mono-type: Assign available moves from primary type
        // Assign physical moves if available
        if (array_length(primary_physical_moves) > 0) {
            pokemon_instance.move_1 = primary_physical_moves[irandom(array_length(primary_physical_moves) - 1)];
            if (array_length(primary_physical_moves) > 1) {
                do {
                    pokemon_instance.move_2 = primary_physical_moves[irandom(array_length(primary_physical_moves) - 1)];
                } until (pokemon_instance.move_2 != pokemon_instance.move_1);
            }
        }
        
        // Assign special moves if available
        if (array_length(primary_special_moves) > 0) {
            var selected_id = irandom(array_length(primary_special_moves) - 1);
            pokemon_instance.move_3 = primary_special_moves[selected_id];
                if (array_length(primary_special_moves) > 1) {
                do {
                    var selected_id2 = irandom(array_length(primary_special_moves) - 1);
                    pokemon_instance.move_4 = primary_special_moves[selected_id2];
                } until (pokemon_instance.move_4 != pokemon_instance.move_3);
            }
        }
    } else {
        // Dual-type: 1 physical + 1 special from each type
        if (array_length(primary_physical_moves) > 0)
            pokemon_instance.move_1 = primary_physical_moves[irandom(array_length(primary_physical_moves) - 1)];
        if (array_length(primary_special_moves) > 0)
            pokemon_instance.move_2 = primary_special_moves[irandom(array_length(primary_special_moves) - 1)];
        if (array_length(secondary_physical_moves) > 0)
            pokemon_instance.move_3 = secondary_physical_moves[irandom(array_length(secondary_physical_moves) - 1)];
        if (array_length(secondary_special_moves) > 0)
            pokemon_instance.move_4 = secondary_special_moves[irandom(array_length(secondary_special_moves) - 1)];
    }
    
    // Fallback if any moves are still 0 - assign Normal type moves
    if (pokemon_instance.move_1 == 0 || pokemon_instance.move_2 == 0 || 
        pokemon_instance.move_3 == 0 || pokemon_instance.move_4 == 0) {
        
        show_debug_message("F-018: Some moves missing for " + pokemon_instance.pokemon_name + 
                          " (" + primary_type + "/" + secondary_type + "), filling with Normal moves");
        
        // Fill missing slots with Normal moves (physical: 1-10, special: 11-20)
        if (pokemon_instance.move_1 == 0) pokemon_instance.move_1 = 1;  // Tackle (physical)
        if (pokemon_instance.move_2 == 0) pokemon_instance.move_2 = 3;  // Quick Attack (physical)
        if (pokemon_instance.move_3 == 0) pokemon_instance.move_3 = 11; // Swift (special)
        if (pokemon_instance.move_4 == 0) pokemon_instance.move_4 = 12; // Hyper Voice (special)
    }
    
    // Final duplicate prevention across all 4 slots
    var move_slots = [pokemon_instance.move_1, pokemon_instance.move_2, 
                     pokemon_instance.move_3, pokemon_instance.move_4];
    
    // Check for duplicates and fix them
    for (var i = 0; i < 4; i++) {
        for (var j = i + 1; j < 4; j++) {
            if (move_slots[i] != 0 && move_slots[i] == move_slots[j]) {
                // Find replacement move from database
                var replacement_found = false;
                for (var k = 1; k < array_length(global.move_name) && !replacement_found; k++) {
                    // Check if this move ID is not already used
                    var is_used = false;
                    for (var m = 0; m < 4; m++) {
                        if (m != j && move_slots[m] == k) {
                            is_used = true;
                            break;
                        }
                    }
                    
                    if (!is_used) {
                        move_slots[j] = k;
                        replacement_found = true;
                    }
                }
                
                // If no replacement found, set to 0 (no move)
                if (!replacement_found) {
                    move_slots[j] = 0;
                }
            }
        }
    }
    
    // Apply fixed moves back to Pokemon
    pokemon_instance.move_1 = move_slots[0];
    pokemon_instance.move_2 = move_slots[1];
    pokemon_instance.move_3 = move_slots[2];
    pokemon_instance.move_4 = move_slots[3];
    
    // Debug logging
    if (global.log) {
        var moves_str = string(pokemon_instance.move_1) + ", " + string(pokemon_instance.move_2) + 
                       ", " + string(pokemon_instance.move_3) + ", " + string(pokemon_instance.move_4);
        show_debug_message("F-018: FIXED Assigned moves [" + moves_str + "] to " + 
                          pokemon_instance.pokemon_name + " (" + primary_type + "/" + secondary_type + ")");
    }
}