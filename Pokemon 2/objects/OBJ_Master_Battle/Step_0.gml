/// OBJ_Master_Battle

// PLAYER TURN LOGIC
if (battle_state == "PLAYER_TURN") 
{
    show_debug_message(battle_state);
     
    // Reset timer bar
    player_turn_timer = turn_max;
    
    SCR_Attack(player_pokemon, wild_pokemon);

    battle_state = "WAIT_WILD"; 
    alarm[0] = player_turn_timer; 

}

// WILD TURN LOGIC
if (battle_state == "WILD_TURN") 
{
    show_debug_message(battle_state);
    
	// Reset timer bar
    wild_turn_timer = turn_max;
    
    SCR_Attack(wild_pokemon, player_pokemon);

    battle_state = "WAIT_PLAYER"; 
    alarm[0] = wild_turn_timer;
   
}
