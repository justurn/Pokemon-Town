function SCR_Start_Rival_Battle() {
    show_debug_message("Starting rival battle!");
    
    // Store rival Pokemon data separately without overriding wild Pokemon system
    global.rival_battle_pokemon_id = global.rival_pokemon_id;

    // Temporarily store current wild Pokemon data to restore later
    global.temp_wild_pokemon_a_id = global.wild_pokemon_a_id;
    global.temp_wild_pokemon_b_id = global.wild_pokemon_b_id;

    // Set battle system to use rival data
    global.wild_pokemon_battle_id = global.rival_battle_pokemon_id;

    // I-028 Fix: Mark as trainer battle - level calculated by OBJ_Battle_Pokemon_Wild
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