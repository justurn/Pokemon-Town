SCR_Hatching_Pokemon()

if just_hatched = true
{
	global.pokemon_ID = pokedex_id
	just_hatched = false;
	
	// reset level and experience
	global.pokemon_level = global.pokemon_start_level;
	global.pokemon_experience = 0;
	
	
	// recalculate pokemon stats and reset health
	SCR_Pokemon_Stats();
	global.pokemon_health = global.pokemon_health_max;
	
	// Run the script to determine valid wild pokemon after a pokemon switch
	SCR_Wild_Pokemon();
	

}