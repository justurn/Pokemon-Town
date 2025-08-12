global.pokemon_health = global.pokemon_health + 0.3;

if global.pokemon_health >= global.pokemon_health_max
{
	global.pokemon_health = global.pokemon_health_max
	room_goto(RM_Town)
}