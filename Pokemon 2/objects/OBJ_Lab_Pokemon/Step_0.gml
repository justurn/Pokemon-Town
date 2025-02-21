SCR_Hatching_Pokemon()

if just_hatched = true
{
	global.pokemon_ID = pokedex_id
	just_hatched = false;
	
	SCR_Pokemon_Stats();
	
	// reset level and experience
	global.pokemon_level = global.pokemon_start_level;
	global.pokemon_experience = 0;
	
	// Run the script to determine valid wild pokemon after a pokemon switch
	SCR_Wild_Pokemon();
	
	global.pokemon_health = global.pokemon_health_max;
}