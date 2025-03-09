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

battle_background[0] = BG_Arena_Battle;
battle_background[1] = BG_Summer_Battle;
battle_background[2] = BG_Field_Battle;
battle_background[3] = BG_Rock_Battle;
battle_background[4] = BG_Snow_Battle;
battle_background[5] = BG_Desert_Battle;
battle_background[6] = BG_Woods_Battle;
battle_background[7] = BG_Autumn_Battle;
battle_background[8] = BG_Desert_Town_Battle;
battle_background[9] = BG_Dungeon_Battle;

// Pick a random background
random_background = battle_background[irandom(9)];
sprite_index = random_background;

x = 0
y = 0


