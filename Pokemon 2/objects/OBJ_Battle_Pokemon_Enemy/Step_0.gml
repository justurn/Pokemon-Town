var roll = irandom(1000);

if roll > 875
{
	pokmemon_health = pokmemon_health - 5;
}

if pokmemon_health = 0
{
	global.wild_pokemon_counter += 1;
	global.wild_pokemon_id = 0;
	global.pokemon_experience += 25;
	room_goto(RM_Treasure)
}







