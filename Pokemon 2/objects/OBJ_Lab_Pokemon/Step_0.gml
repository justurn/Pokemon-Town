SCR_Hatching_Pokemon()

if just_hatched = true
{
	global.pokemon_ID = pokedex_id
	x = egg_x + egg_width/2 - sprite_width/2
	y = egg_y + egg_height/2 - sprite_height/2
	just_hatched = false;
}