var roll = irandom(1000);

if roll > 970
{
	global.pokemon_health = global.pokemon_health - 5;
}

if global.pokemon_health <= 0
{
	global.wild_pokemon_counter += 1;
	global.wild_pokemon_id = 0;
	room_goto(RM_Town)
}