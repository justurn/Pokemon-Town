if (current_hp <= 0)
{
	var player_pokemon = instance_find(OBJ_Battle_Pokemon_Tame, 0)
    global.pokemon_health = player_pokemon.current_hp;

	var base_stat = global.Dex_Attack[pokedex_id]
		+ global.Dex_SPattack[pokedex_id]
        + global.Dex_Defence[pokedex_id]
		+ global.Dex_SPdefence[pokedex_id]
        + global.Dex_Speed[pokedex_id]
		+ global.Dex_Health[pokedex_id];
	var base_exp = round(base_stat * 0.33);
	var xp_increase = floor(base_exp * global.wild_pokemon_level * global.pokemon_xp_rate / 7);
	global.pokemon_experience += xp_increase
	
	global.wild_pokemon_id = 0;
    global.wild_pokemon_x = -1;
	
    show_debug_message(string(global.Dex_Names[global.pokemon_ID]) + " wins the battle!");
	show_debug_message(string(global.Dex_Names[global.pokemon_ID]) + " gains " + string(xp_increase) + " Experience");
    room_goto(RM_Treasure);
}