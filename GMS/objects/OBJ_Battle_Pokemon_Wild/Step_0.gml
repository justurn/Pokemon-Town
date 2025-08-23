// Only trigger victory if we're still in active battle and not already in victory sequence
if (current_hp <= 0 && instance_exists(OBJ_Master_Battle) && 
    (OBJ_Master_Battle.battle_state == "WAIT_WILD" || OBJ_Master_Battle.battle_state == "WAIT_PLAYER" || 
     OBJ_Master_Battle.battle_state == "PLAYER_TURN" || OBJ_Master_Battle.battle_state == "WILD_TURN" ||
     OBJ_Master_Battle.battle_state == "PLAYER_CHOICE"))
{
	var player_pokemon = instance_find(OBJ_Battle_Pokemon_Tame, 0)
    global.pokemon_health = player_pokemon.current_hp;

	var base_stat = global.Dex_Attack[pokedex_id]
		+ global.Dex_SPattack[pokedex_id]
        + global.Dex_Defence[pokedex_id]
		+ global.Dex_SPdefence[pokedex_id]
        + global.Dex_Speed[pokedex_id]
		+ global.Dex_Health[pokedex_id];
	var base_exp = round(base_stat * 0.33);
	
	// Apply evolution/legendary multiplier for non-hatchable Pokemon
	var evolution_multiplier = 1.0;
	if (global.Dex_Hatching[pokedex_id] == "False") {
		evolution_multiplier = 1.5; // 50% bonus XP for evolved/legendary Pokemon
		show_debug_message("Non-hatchable Pokemon defeated - applying 1.5x XP multiplier");
	}
	
	// Apply rival battle multiplier
	var rival_multiplier = 1.0;
	var is_trainer_battle = variable_global_exists("is_trainer_battle") && global.is_trainer_battle;
	if (is_trainer_battle) {
		rival_multiplier = 1.25; // 25% bonus XP for rival battles
		show_debug_message("Rival battle detected - applying 1.25x XP multiplier");
	}
	
	var xp_increase = floor(base_exp * global.wild_pokemon_level * global.pokemon_xp_rate * evolution_multiplier * rival_multiplier / 7);
	show_debug_message("XP calculation: base_exp=" + string(base_exp) + ", level=" + string(global.wild_pokemon_level) + ", xp_rate=" + string(global.pokemon_xp_rate) + ", evolution_mult=" + string(evolution_multiplier) + ", rival_mult=" + string(rival_multiplier) + ", final_xp=" + string(xp_increase));
	// Don't add XP immediately - let XP_DISPLAY state handle the animation
	
	
	// reset wild pokemons
	global.wild_pokemon_a_id = 0;
    global.wild_pokemon_a_x = -1;
	
	global.wild_pokemon_b_id = 0;
    global.wild_pokemon_b_x = -1;
	
    show_debug_message(string(global.Dex_Names[global.pokemon_ID]) + " wins the battle!");
	show_debug_message(string(global.Dex_Names[global.pokemon_ID]) + " gains " + string(xp_increase) + " Experience");
    
    // Use new victory system for both regular and trainer battles
    {
        // Prepare victory data using existing level up logic from OBJ_Town_Pokemon
        with (OBJ_Master_Battle) {
            victory_data.xp_gained = xp_increase;
            victory_data.level_before = global.pokemon_level;
            victory_data.defeated_pokemon_name = other.pokemon_name;
            
            // Store XP progression data using consistent display variables
            display_xp = global.pokemon_experience;          // Current XP (before gain) 
            display_level = global.pokemon_level;             // Current level (before gain)
            xp_target = global.pokemon_experience + xp_increase;  // Target XP (after gain)
            
            // Set up next level threshold for two-stage XP display
            next_level_threshold = power(global.pokemon_level, 3);
            
            // Use level up logic with while loop to handle multiple level-ups
            var level_up_exp = power(global.pokemon_level, 3);
            if (xp_target >= level_up_exp) {
                level_up_detected = true;
                
                // CAPTURE STATS BEFORE LEVEL UP
                victory_data.stats_before.attack = global.pokemon_attack;
                victory_data.stats_before.sp_attack = global.pokemon_SPattack;
                victory_data.stats_before.defence = global.pokemon_defence;
                victory_data.stats_before.sp_defence = global.pokemon_SPdefence;
                victory_data.stats_before.speed = global.pokemon_speed;
                victory_data.stats_before.health_max = global.pokemon_health_max;
                
                // Temporarily add XP for level calculations
                var temp_xp = global.pokemon_experience;
                var temp_level = global.pokemon_level;
                var temp_health = global.pokemon_health;
                global.pokemon_experience = xp_target;
                
                // Apply level up with while loop to handle multiple levels
                while (global.pokemon_experience >= power(global.pokemon_level, 3)) {
                    global.pokemon_level += 1;
                }
                SCR_Pokemon_Stats();
                global.pokemon_health = global.pokemon_health_max;
                
                // CAPTURE STATS AFTER LEVEL UP (before restoring)
                victory_data.level_after = global.pokemon_level;
                victory_data.stats_after.attack = global.pokemon_attack;
                victory_data.stats_after.sp_attack = global.pokemon_SPattack;
                victory_data.stats_after.defence = global.pokemon_defence;
                victory_data.stats_after.sp_defence = global.pokemon_SPdefence;
                victory_data.stats_after.speed = global.pokemon_speed;
                victory_data.stats_after.health_max = global.pokemon_health_max;
                
                // Restore original state - let XP_DISPLAY state handle the actual update
                global.pokemon_experience = temp_xp;
                global.pokemon_level = temp_level;
                global.pokemon_health = temp_health;
                SCR_Pokemon_Stats(); // Recalculate stats for original level
                
                // CALCULATE STAT CHANGES
                victory_data.stat_changes.attack = victory_data.stats_after.attack - victory_data.stats_before.attack;
                victory_data.stat_changes.sp_attack = victory_data.stats_after.sp_attack - victory_data.stats_before.sp_attack;
                victory_data.stat_changes.defence = victory_data.stats_after.defence - victory_data.stats_before.defence;
                victory_data.stat_changes.sp_defence = victory_data.stats_after.sp_defence - victory_data.stats_before.sp_defence;
                victory_data.stat_changes.speed = victory_data.stats_after.speed - victory_data.stats_before.speed;
                victory_data.stat_changes.health_max = victory_data.stats_after.health_max - victory_data.stats_before.health_max;
                
                // Check for evolution using existing system (after level up)
                var evolve_level = global.Dex_Evolve_Level[global.pokemon_ID];
                if (evolve_level != -1 && global.pokemon_level >= evolve_level) {
                    victory_data.evolution_triggered = true;
                    
                    // Apply existing evolution switch case logic with comprehensive comments
                    evolution_pokemon_id = global.pokemon_ID;
                    switch (global.pokemon_ID) {
                        // Generation 1 Special Evolutions
                        case 133: // Eevee → Vaporeon(134), Jolteon(135), Flareon(136), Espeon(196), Umbreon(197)
                            victory_data.new_pokemon_id = choose(134, 135, 136, 196, 197);
                            show_debug_message("Eevee evolving into random Eeveelution: " + string(victory_data.new_pokemon_id));
                            break;
                            
                        case 42: // Golbat → Crobat (Generation 2 evolution)
                            victory_data.new_pokemon_id = 169;
                            show_debug_message("Golbat evolving into Crobat");
                            break;
                            
                        case 44: // Gloom → Vileplume(45) or Bellossom(182)
                            victory_data.new_pokemon_id = choose(45, 182);
                            show_debug_message("Gloom evolving into " + (victory_data.new_pokemon_id == 45 ? "Vileplume" : "Bellossom"));
                            break;
                            
                        case 61: // Poliwhirl → Poliwrath(62) or Politoed(186)
                            victory_data.new_pokemon_id = choose(62, 186);
                            show_debug_message("Poliwhirl evolving into " + (victory_data.new_pokemon_id == 62 ? "Poliwrath" : "Politoed"));
                            break;
                            
                        case 80: // Slowbro → Slowking (Generation 2 evolution)
                            victory_data.new_pokemon_id = 199;
                            show_debug_message("Slowbro evolving into Slowking");
                            break;
                            
                        case 95: // Onix → Steelix (Generation 2 evolution)
                            victory_data.new_pokemon_id = 208;
                            show_debug_message("Onix evolving into Steelix");
                            break;
                            
                        case 113: // Chansey → Blissey (Generation 2 evolution)
                            victory_data.new_pokemon_id = 242;
                            show_debug_message("Chansey evolving into Blissey");
                            break;
                            
                        case 117: // Seadra → Kingdra (Generation 2 evolution)
                            victory_data.new_pokemon_id = 230;
                            show_debug_message("Seadra evolving into Kingdra");
                            break;
                            
                        case 123: // Scyther → Scizor (Generation 2 evolution)
                            victory_data.new_pokemon_id = 212;
                            show_debug_message("Scyther evolving into Scizor");
                            break;
                            
                        case 137: // Porygon → Porygon2 (Generation 2 evolution)
                            victory_data.new_pokemon_id = 233;
                            show_debug_message("Porygon evolving into Porygon2");
                            break;
                            
                        // Generation 2 Baby Pokemon → Generation 1 Pokemon
                        case 172: // Pichu → Pikachu (Baby to basic form)
                            victory_data.new_pokemon_id = 25;
                            show_debug_message("Pichu evolving into Pikachu");
                            break;
                            
                        case 173: // Cleffa → Clefairy (Baby to basic form)
                            victory_data.new_pokemon_id = 35;
                            show_debug_message("Cleffa evolving into Clefairy");
                            break;
                            
                        case 174: // Igglybuff → Jigglypuff (Baby to basic form)
                            victory_data.new_pokemon_id = 39;
                            show_debug_message("Igglybuff evolving into Jigglypuff");
                            break;
                            
                        case 236: // Tyrogue → Hitmontop(237), Hitmonlee(107), or Hitmonchan(106)
                            victory_data.new_pokemon_id = choose(237, 107, 106);
                            var tyrogue_evolution = "Unknown";
                            switch (victory_data.new_pokemon_id) {
                                case 237: tyrogue_evolution = "Hitmontop"; break;
                                case 107: tyrogue_evolution = "Hitmonlee"; break;
                                case 106: tyrogue_evolution = "Hitmonchan"; break;
                            }
                            show_debug_message("Tyrogue evolving into " + tyrogue_evolution);
                            break;
                            
                        case 238: // Smoochum → Jynx (Baby to basic form)
                            victory_data.new_pokemon_id = 124;
                            show_debug_message("Smoochum evolving into Jynx");
                            break;
                            
                        case 239: // Elekid → Electabuzz (Baby to basic form)
                            victory_data.new_pokemon_id = 125;
                            show_debug_message("Elekid evolving into Electabuzz");
                            break;
                            
                        case 240: // Magby → Magmar (Baby to basic form)
                            victory_data.new_pokemon_id = 126;
                            show_debug_message("Magby evolving into Magmar");
                            break;
                            
                        // Standard Sequential Evolution (Default Case)
                        default: 
                            victory_data.new_pokemon_id = global.pokemon_ID + 1;
                            show_debug_message(global.Dex_Names[global.pokemon_ID] + " evolving into " + global.Dex_Names[victory_data.new_pokemon_id] + " (sequential evolution)");
                            break;
                    }
                }
            }
            
            // Start victory sequence
            battle_state = "ENEMY_FAINT";
            enemy_faint_timer = 0;
            
            // Clear any pending alarms to prevent state conflicts
            alarm[0] = -1;
            alarm[1] = -1;
        }
    }
}