// Check if the player is within bounds on the X-axis
if (OBJ_Player.x  >= wild_left && OBJ_Player.x  <= wild_right && global.pokemon_health > 0)
{
	room_goto(RM_Battle);
}







