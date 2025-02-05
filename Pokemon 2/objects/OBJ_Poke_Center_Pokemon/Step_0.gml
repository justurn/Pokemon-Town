var roll = irandom(1000);

if roll > 900
{
	global.pokemon_health = global.pokemon_health + 5;
}

if global.pokemon_health >= 100
{
	room_goto(RM_Town)
}