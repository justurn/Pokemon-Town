var roll = irandom(1000);

if roll > 875
{
	pokemon_health = pokemon_health - 5;
}

if pokemon_health <= 0
{
	global.wild_pokemon_counter += 1;
	global.wild_pokemon_id = 0;
	global.pokemon_experience += 25;
	global.wild_pokemon_x = -1;
	room_goto(RM_Treasure)
}







