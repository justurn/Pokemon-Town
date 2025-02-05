if (room == RM_Factory)
{
	var gears_id = 3; // item ID for gears
	global.pokemon_health_max += global.item_held[gears_id]
	global.item_held[gears_id] = 0;
	room_goto(RM_Town)
}








