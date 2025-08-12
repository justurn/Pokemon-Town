if (current_hp <= 0)
{
    global.pokemon_health = current_hp;
    show_debug_message("Wild " + string(global.Dex_Names[global.wild_pokemon_a_id]) + " wins the battle!");
    
    // Clean up trainer battle flags and treasure override if this was a rival battle
    if (variable_global_exists("is_trainer_battle") && global.is_trainer_battle) {
        // Mark this milestone as completed (even though lost) to prevent re-encounter
        if (variable_global_exists("rival_milestone_level") && global.rival_milestone_level > 0) {
            if (!array_contains(global.rival_completed_milestones, global.rival_milestone_level)) {
                array_push(global.rival_completed_milestones, global.rival_milestone_level);
                show_debug_message("Rival battle lost - marked milestone " + string(global.rival_milestone_level) + " as completed to prevent re-encounter");
            }
        }
        
        global.is_trainer_battle = false;
        global.treasure_limit_override = -1; // Clear any pending treasure override
        show_debug_message("Rival battle lost - cleaned up trainer battle flags and treasure override");
        
        // Restore original wild Pokemon data that was stored before battle
        if (variable_global_exists("temp_wild_pokemon_a_id")) {
            global.wild_pokemon_a_id = global.temp_wild_pokemon_a_id;
            global.wild_pokemon_b_id = global.temp_wild_pokemon_b_id;
            show_debug_message("Restored wild Pokemon data after rival defeat");
        }
    }
    
    room_goto(RM_Town);
}