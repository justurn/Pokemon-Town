SCR_Hatching_Pokemon()

if just_hatched = true
{
	global.pokemon_ID = pokedex_id
	
	// RIVAL RESET: New Pokemon hatched, reset rival progress
	if (global.rival_pokemon_id != 0) {
		show_debug_message("Rival progress reset - new Pokemon hatched");
		global.rival_pokemon_id = 0;
		global.rival_completed_milestones = []; // Clear completed milestones
	}
	
	just_hatched = false;
	
	// reset level and experience
	global.pokemon_level = global.pokemon_start_level;
	global.pokemon_experience = power(global.pokemon_level - 1,3);
	
	// recalculate pokemon stats and reset health
	SCR_Pokemon_Stats();
	global.pokemon_health = global.pokemon_health_max;
	
	// Run the script to determine valid wild pokemon after a pokemon switch
	SCR_Wild_Pokemon();
	

}