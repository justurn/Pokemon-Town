// ALARM[0] EVENT
if (battle_state == "WAIT_WILD") 
{
    battle_state = "WILD_TURN"; 
}

// ALARM[0] EVENT (Handling the Player's Turn Start)
if (battle_state == "WAIT_PLAYER") 
{
    battle_state = "PLAYER_TURN"; 
}



