SCR_Hatching_Pokemon()

if just_hatched = true
{
	global.pokemon_ID = pokedex_id
	x = egg_x + egg_width/2 - sprite_width/2
	y = egg_y + egg_height/2 - sprite_height/2
	just_hatched = false;
	
	var base_health = global.Dex_Health[pokedex_id];
	var base_speed = global.Dex_Speed[pokedex_id];
	var base_attack = global.Dex_Attack[pokedex_id];
	var base_SPattack = global.Dex_SPattack[pokedex_id];
	var base_SPdefence = global.Dex_SPdefence[pokedex_id];
	var base_defence = global.Dex_Defence[pokedex_id];
	
	global.pokemon_health_max = global.iv_health + base_health;
	global.pokemon_health = global.pokemon_health_max;
	global.pokemon_attack = global.iv_attack + base_attack;
	global.pokemon_SPattack = global.iv_SPattack + base_SPattack;
	global.pokemon_defence = global.iv_defence + base_defence;
	global.pokemon_SPdefence = global.iv_SPdefence + base_SPdefence;
	global.pokemon_speed = global.iv_speed + base_speed;
	
	// reset level and experience
	global.pokemon_level = global.pokemon_start_level;
	global.pokemon_experience = 0;
}