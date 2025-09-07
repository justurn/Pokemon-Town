if (current_hp <= 0)
{
    // Only trigger faint logic once - check if we're already in PLAYER_FAINT state
    if (instance_exists(OBJ_Master_Battle) && OBJ_Master_Battle.battle_state != "PLAYER_FAINT") {
        global.pokemon_health = current_hp;
        show_debug_message("Wild " + string(global.Dex_Names[global.wild_pokemon_a_id]) + " wins the battle!");
        
        // Transition to PLAYER_FAINT state - cleanup logic moved to battle controller
        with (OBJ_Master_Battle) {
            battle_state = "PLAYER_FAINT";
            player_faint_timer = 0;
            show_debug_message("Player Pokemon fainted - transitioning to PLAYER_FAINT state");
        }
    } else if (!instance_exists(OBJ_Master_Battle)) {
        // Fallback if no battle controller exists
        global.pokemon_health = current_hp;
        room_goto(RM_Town);
    }
}