// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SCR_Pokemon_Stats()
{
	var pokedex_id = global.pokemon_ID
	var level = global.pokemon_level
	var base_health = global.Dex_Health[pokedex_id];
	var base_speed = global.Dex_Speed[pokedex_id];
	var base_attack = global.Dex_Attack[pokedex_id];
	var base_SPattack = global.Dex_SPattack[pokedex_id];
	var base_SPdefence = global.Dex_SPdefence[pokedex_id];
	var base_defence = global.Dex_Defence[pokedex_id];
	
	// Calculate Stats
	global.pokemon_attack = floor(((2 * base_attack * level) / 100) + 5) + global.iv_attack;
	global.pokemon_SPattack = floor(((2 * base_SPattack * level) / 100) + 5) + global.iv_SPattack;
	global.pokemon_defence = floor(((2 * base_defence * level) / 100) + 5) + global.iv_defence;
	global.pokemon_SPdefence = floor(((2 * base_SPdefence * level) / 100) + 5) + global.iv_SPdefence;
	global.pokemon_speed = floor(((2 * base_speed * level) / 100) + 5) + global.iv_speed;
	global.pokemon_health_max = floor(((2 * base_health * level) / 100) + level + 10) + global.iv_health;
}