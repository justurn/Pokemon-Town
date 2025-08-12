function SCR_Rival_Battle_Victory() {
    show_debug_message("Rival battle won!");
    
    // Mark this milestone as completed using array approach
    var current_level = global.pokemon_level;
    
    // Find which milestone this battle corresponds to
    for (var m = 0; m < array_length(global.rival_battle_milestones); m++) {
        var milestone_level = global.rival_battle_milestones[m];
        if (current_level >= milestone_level && 
            !array_contains(global.rival_completed_milestones, milestone_level)) {
            
            // Add this milestone to completed array
            array_push(global.rival_completed_milestones, milestone_level);
            show_debug_message("Milestone " + string(milestone_level) + " marked as completed");
            break;
        }
    }
    
    // Set treasure_limit for mega chest reward (5 items) before going to treasure room
    global.treasure_limit_override = 5;
    
    // Reset trainer battle flag
    global.is_trainer_battle = false;
    
    // Restore original wild Pokemon data that was stored before battle
    if (variable_global_exists("temp_wild_pokemon_a_id")) {
        global.wild_pokemon_a_id = global.temp_wild_pokemon_a_id;
        global.wild_pokemon_b_id = global.temp_wild_pokemon_b_id;
        show_debug_message("Restored wild Pokemon data after rival victory");
    }
    
    // Increase rival experience reward
    var bonus_xp = global.basic_xp_award * 2; // Double XP for rival battles
    global.pokemon_experience += bonus_xp;
    show_debug_message("Bonus rival XP awarded: " + string(bonus_xp));
    
    // Go to treasure room for mega chest reward, then return to town
    room_goto(RM_Treasure);
}