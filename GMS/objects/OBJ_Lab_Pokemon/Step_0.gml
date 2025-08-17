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
	
	// F-018: Assign random moves to newly hatched Pokemon
	var temp_pokemon = {
		pokedex_id: global.pokemon_ID,
		pokemon_name: global.Dex_Names[global.pokemon_ID],
		move_1: 0,
		move_2: 0,
		move_3: 0,
		move_4: 0
	};
	SCR_Assign_Random_Moves(temp_pokemon);
	
	// Store moves in global variables for battle system
	global.player_move_1 = temp_pokemon.move_1;
	global.player_move_2 = temp_pokemon.move_2;
	global.player_move_3 = temp_pokemon.move_3;
	global.player_move_4 = temp_pokemon.move_4;
	
	// Run the script to determine valid wild pokemon after a pokemon switch
	SCR_Wild_Pokemon([]);
	

}