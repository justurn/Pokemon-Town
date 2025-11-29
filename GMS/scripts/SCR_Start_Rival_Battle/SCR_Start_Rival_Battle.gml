function SCR_Start_Rival_Battle() {
    show_debug_message("Starting rival battle!");
    
    // Store rival Pokemon data separately without overriding wild Pokemon system
    global.rival_battle_pokemon_id = global.rival_pokemon_id;
    // Use stored milestone level instead of random calculation
    global.rival_battle_level = global.rival_milestone_level;
    
    // Temporarily store current wild Pokemon data to restore later
    global.temp_wild_pokemon_a_id = global.wild_pokemon_a_id;
    global.temp_wild_pokemon_b_id = global.wild_pokemon_b_id;
    
    // Set battle system to use rival data
    global.wild_pokemon_battle_id = global.rival_battle_pokemon_id;
    global.wild_pokemon_level = global.rival_battle_level;
    
    // Mark this as a trainer battle (for any special handling)
    global.is_trainer_battle = true;
    
    // Clear the encounter active flag and saved position data since battle is starting
    global.rival_encounter_active = false;
    global.rival_saved_x = -1;
    global.rival_saved_patrol_left = -1;
    global.rival_saved_patrol_right = -1;
    
    // Destroy rival trainer object
    with (OBJ_Rival_Trainer) {
        instance_destroy();
    }
    
    // Start battle (reuse existing battle system)
    room_goto(RM_Battle);
}