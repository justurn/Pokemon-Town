pokemon_a_x = 319
pokemon_a_y = 425

pokemon_b_x = 694
pokemon_b_y = 268

player_pokemon = instance_create_layer(pokemon_a_x, pokemon_a_y, "Instances", OBJ_Battle_Pokemon_Tame);
wild_pokemon = instance_create_layer(pokemon_b_x, pokemon_b_y, "Instances", OBJ_Battle_Pokemon_Wild);

// Determine who attacks first
if (player_pokemon.speedstat > wild_pokemon.speedstat)
{
    battle_state = "PLAYER_TURN";
	show_debug_message("Player is Faster")
} 
else if (player_pokemon.speedstat < wild_pokemon.speedstat)
{
    battle_state = "WILD_TURN";
	show_debug_message("Wild is Faster")
}
else
{
    battle_state = choose("WILD_TURN", "PLAYER_TURN");
	show_debug_message("Same speeds")
}

player_turn_timer = room_speed;
wild_turn_timer = player_turn_timer;
turn_max = player_turn_timer;



