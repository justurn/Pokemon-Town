if (current_hp <= 0)
{
	var player_pokemon = instance_find(OBJ_Battle_Pokemon_Tame, 0)
    global.pokemon_health = player_pokemon.current_hp;
    global.wild_pokemon_id = 0;
    global.wild_pokemon_x = -1;
	var xp_increase = round(global.basic_xp_award * global.pokemon_xp_rate);
	global.pokemon_experience += xp_increase
    show_debug_message(string(global.Dex_Names[global.pokemon_ID]) + " wins the battle!");
	show_debug_message(string(global.Dex_Names[global.pokemon_ID]) + " Gains " + string(xp_increase) + " Experience");
    room_goto(RM_Treasure);
}