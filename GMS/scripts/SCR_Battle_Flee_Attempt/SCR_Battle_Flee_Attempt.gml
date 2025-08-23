function SCR_Execute_Player_Flee() {
    // Calculate flee chance based on Pokemon speed
    var speed_ratio = player_pokemon.speedstat / wild_pokemon.speedstat;
    var flee_chance = min(100, 50 + (speed_ratio * 25));
    var flee_roll = irandom(100);
    
    show_debug_message("Player flee attempt: speed_ratio=" + string(speed_ratio) + ", chance=" + string(flee_chance) + ", roll=" + string(flee_roll));
    
    if (flee_roll < flee_chance) {
        // Flee successful
        global.pokemon_health = player_pokemon.current_hp;
        array_push(battle_log, "Got away safely!");
        if (array_length(battle_log) > max_log_messages) {
            array_delete(battle_log, 0, 1);
        }
        
        // Start flee animation immediately
        flee_animation_active = true;
        flee_animation_timer = 0;
        flee_target_x = room_width + 100;
        flee_who = "player";
        show_debug_message("Player flee successful - starting animation");
        SCR_Battle_Flee_Cleanup();
        return true;
    } else {
        // Flee failed
        array_push(battle_log, "Can't escape!");
        if (array_length(battle_log) > max_log_messages) {
            array_delete(battle_log, 0, 1);
        }
        show_debug_message("Player flee failed");
        return false;
    }
}

function SCR_Battle_Flee_Cleanup() {
    // Common flee cleanup logic
    show_debug_message("Executing flee cleanup");
    
    // Reset wild Pokemon positions
    global.wild_pokemon_a_id = 0;
    global.wild_pokemon_a_x = -1;
    global.wild_pokemon_b_id = 0;
    global.wild_pokemon_b_x = -1;
    
    // Reset trainer battle flags when fleeing
    if (variable_global_exists("is_trainer_battle") && global.is_trainer_battle) {
        // Mark rival milestone as completed even when fleeing to prevent re-encounter
        if (variable_global_exists("rival_milestone_level") && global.rival_milestone_level > 0) {
            if (!array_contains(global.rival_completed_milestones, global.rival_milestone_level)) {
                array_push(global.rival_completed_milestones, global.rival_milestone_level);
                show_debug_message("Rival battle fled - marked milestone " + string(global.rival_milestone_level) + " as completed to prevent re-encounter");
            }
        }
        
        global.is_trainer_battle = false;
        global.treasure_limit_override = -1;
        show_debug_message("Reset trainer battle flags after fleeing");
    }
}