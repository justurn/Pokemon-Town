function SCR_Attack(attacker, defender, selected_move_slot = -1)
{
    var level = attacker.level;
    var base_power = 40; // Default attack power
	var damage = 1;
	var is_physical = true;
	var move_name = "Attack";
	var move_type = "Normal";
	var move_id = 0;
	
	// Check if attack is a critical hit
	var crit_roll = irandom(100)
	var is_crit = (crit_roll < attacker.crit);
	
	// F-018: FIXED - Enhanced Move Selection using new struct system
	var effectiveness = 1.0; // Declare effectiveness variable early
	
	if (selected_move_slot >= 0 && selected_move_slot < 4) {
		// Get specific move from Pokemon's moveset
		var moves = [attacker.move_1, attacker.move_2, attacker.move_3, attacker.move_4];
		move_id = moves[selected_move_slot];
		
		// F-018: FIXED - Add proper bounds checking and validation for parallel arrays
		if (move_id > 0 && move_id < array_length(global.move_name) && global.move_name[move_id] != undefined) {
			if (global.move_name[move_id] != undefined) {
				move_name = global.move_name[move_id];
				move_type = global.move_type[move_id];
				is_physical = global.move_is_physical[move_id];
				base_power = global.move_power[move_id];
			} else {
				show_debug_message("Warning: Invalid move data for move_id " + string(move_id));
				// Use fallback values
				move_name = "Tackle";
				move_type = "Normal";
				is_physical = true;
				base_power = 40;
			}
		}
	} else {
		// Simple random AI - just pick a random move from the 4 available
		var moves = [attacker.move_1, attacker.move_2, attacker.move_3, attacker.move_4];
		var valid_moves = [];
		
		// Collect valid moves
		for (var i = 0; i < 4; i++) {
			if (moves[i] > 0 && moves[i] < array_length(global.move_name) && global.move_name[moves[i]] != undefined) {
				array_push(valid_moves, i);
			}
		}
		
		// Pick random move from valid moves
		if (array_length(valid_moves) > 0) {
			var random_slot = valid_moves[irandom(array_length(valid_moves) - 1)];
			move_id = moves[random_slot];
			
			if (move_id > 0 && move_id < array_length(global.move_name) && global.move_name[move_id] != undefined) {
				move_name = global.move_name[move_id];
				move_type = global.move_type[move_id];
				is_physical = global.move_is_physical[move_id];
				base_power = global.move_power[move_id];
			} else {
				// Fallback to Tackle
				move_name = "Tackle";
				move_type = "Normal";
				is_physical = true;
				base_power = 40;
			}
		} else {
			// No valid moves, use Tackle
			move_name = "Tackle";
			move_type = "Normal";
			is_physical = true;
			base_power = 40;
		}
	}
	
	// Add initial battle log message showing the move being used
	if (instance_exists(OBJ_Master_Battle)) {
		// Get variables before entering with statement
		var attacker_name = (variable_instance_exists(attacker, "pokemon_name") && attacker.pokemon_name != "") ? 
			attacker.pokemon_name : "Pokemon";
		var move_text = (move_name != undefined && move_name != "") ? move_name : "Attack";
		
		with (OBJ_Master_Battle) {
			// Safety check for battle_log array
			if (!is_array(battle_log)) {
				battle_log = [];
			}
			array_push(battle_log, attacker_name + " uses " + move_text + "!");
			if (array_length(battle_log) > max_log_messages) {
				array_delete(battle_log, 0, 1);
			}
		}
	}
	
	// Check move accuracy and determine if attack hits
	var move_accuracy = 100; // Default accuracy (100%)
	var accuracy_roll = irandom(100); // Roll 0-99 for proper percentage check
	var attack_hits = true;
	
	// Get accuracy from move database if we have a valid move
	if (move_id > 0 && move_id < array_length(global.move_name) && global.move_name[move_id] != undefined) {
		move_accuracy = global.move_accuracy[move_id];
		
		// Special case: 999 accuracy means "never miss" (like Swift, Aerial Ace)
		if (move_accuracy == 999) {
			attack_hits = true;
			show_debug_message(move_name + " never misses!");
		} else {
			attack_hits = (accuracy_roll < move_accuracy);
		}
	}
	
	// If attack misses, handle miss and return early
	if (!attack_hits) {
		var attacker_name = (variable_instance_exists(attacker, "pokemon_name") && attacker.pokemon_name != "") ? 
			attacker.pokemon_name : "Pokemon";
		show_debug_message(attacker_name + "'s " + move_name + " missed! (rolled " + string(accuracy_roll) + " vs " + string(move_accuracy) + " accuracy)");
		
		// Add battle log message for miss
		if (instance_exists(OBJ_Master_Battle)) {
			with (OBJ_Master_Battle) {
				// Safety check for battle_log array
				if (!is_array(battle_log)) {
					battle_log = [];
				}
				var miss_messages = ["But it missed!", "The attack missed!", "It didn't hit!", "The move failed to connect!"];
				var miss_text = miss_messages[irandom(array_length(miss_messages) - 1)];
				array_push(battle_log, miss_text);
				if (array_length(battle_log) > max_log_messages) {
					array_delete(battle_log, 0, 1);
				}
			}
		}
		
		// Create a "miss" visual effect (projectile that flies off to the right)
		var proj = instance_create_layer(attacker.x, attacker.y, "Instances", OBJ_Projectile);
		proj.target_x = defender.x + 200; // Miss far to the right of the target
		proj.target_y = defender.y + irandom_range(-40, 40); // Moderate vertical variance
		proj.attack_type = move_id > 0 ? global.move_type_id[move_id] : attacker.primary_type_id;
		proj.target_pokemon = defender;
		proj.damage = 0; // No damage on miss
		proj.is_physical = is_physical;
		proj.is_crit = false;
		proj.is_miss = true; // Flag to indicate this is a miss
		
		return; // Exit function early - no damage calculation needed
	}
	
	var attacker_name = (variable_instance_exists(attacker, "pokemon_name") && attacker.pokemon_name != "") ? 
		attacker.pokemon_name : "Pokemon";
	show_debug_message(attacker_name + "'s " + move_name + " hits! (rolled " + string(accuracy_roll) + " vs " + string(move_accuracy) + " accuracy)");
	
	// Calculate damage based on attack type
	if (is_physical) {
		damage = (((2 * level) / 5 + 2) * base_power * (attacker.attack / defender.defence)) / 50 + 2;
	} else {
		damage = (((2 * level) / 5 + 2) * base_power * (attacker.spattack / defender.spdefence)) / 50 + 2;
	}
    
    // Apply variance (random between 85% - 100%)
    damage *= random_range(0.85, 1.0);
    
    // F-018: FIXED - Calculate type effectiveness using MOVE type with bounds checking
    if (move_id > 0 && move_id < array_length(global.move_name) && global.move_name[move_id] != undefined) {
        var move_type_id = global.move_type_id[move_id];
        
        // Calculate effectiveness: move type vs defender types with bounds checking
        effectiveness = 1.0;
        if (move_type_id >= 0 && move_type_id < 18) { // Validate move type ID
            if (defender.primary_type_id >= 0 && defender.primary_type_id < 18) {
                effectiveness *= global.type_chart[move_type_id][defender.primary_type_id];
            }
            if (defender.secondary_type_id >= 0 && defender.secondary_type_id < 18 && 
                defender.secondary_type_id != defender.primary_type_id) {
                effectiveness *= global.type_chart[move_type_id][defender.secondary_type_id];
            }
        } else {
            show_debug_message("Warning: Invalid move type ID " + string(move_type_id) + " for move " + string(move_id));
        }
        
        var attack_type = move_type_id;
        var defender_name = (variable_instance_exists(defender, "pokemon_name") && defender.pokemon_name != "") ? 
            defender.pokemon_name : "Pokemon";
        show_debug_message("Move " + move_name + " (" + move_type + ") vs " + defender_name + ": " + string(effectiveness) + "x effectiveness");
    } else {
        // Fallback: use attacker's primary type for effectiveness
        var attack_type = attacker.primary_type_id;
        if (attacker.primary_type_id != -1) {
            effectiveness = 1.0;
            if (defender.primary_type_id != -1) {
                effectiveness *= global.type_chart[attacker.primary_type_id][defender.primary_type_id];
            }
            if (defender.secondary_type_id != -1 && defender.secondary_type_id != defender.primary_type_id) {
                effectiveness *= global.type_chart[attacker.primary_type_id][defender.secondary_type_id];
            }
        }
    }
    
    damage *= effectiveness;
	
	if (is_crit)
	{
		// Show debug message
		show_debug_message("Critical Hit!");
		damage = damage * 2; // Increase damage if crit
	}
	
	// ensure damage is at least one to prevent infinite fights...
    damage = max(1,round(damage)); 
	
    
    // Display effectiveness message
    if (effectiveness > 1) 
        show_debug_message("It's super effective!");
    else if (effectiveness < 1) 
        show_debug_message("It's not very effective...");
    
    // Debug Messages
    var attacker_name = (variable_instance_exists(attacker, "pokemon_name") && attacker.pokemon_name != "") ? 
        attacker.pokemon_name : "Pokemon";
    var defender_name = (variable_instance_exists(defender, "pokemon_name") && defender.pokemon_name != "") ? 
        defender.pokemon_name : "Pokemon";
    show_debug_message(string(attacker_name) + " Deals " + string(damage) + " damage to " + string(defender_name));
    show_debug_message(string(defender_name) + " Has " + string(defender.current_hp - damage) + " health remaining");
	
	// Add battle log messages for the new UI
	if (instance_exists(OBJ_Master_Battle)) {
		// Get variables before entering with statement
		var damage_text = string(floor(damage));
		var eff_value = effectiveness;
		var crit_flag = is_crit;
		
		// F-018: Enhanced battle log with damage and effectiveness
		with (OBJ_Master_Battle) {
			// Safety check for battle_log array
			if (!is_array(battle_log)) {
				battle_log = [];
			}
			array_push(battle_log, "Deals " + damage_text + " damage!");
			if (array_length(battle_log) > max_log_messages) {
				array_delete(battle_log, 0, 1);
			}
			
			if (eff_value > 1) {
				array_push(battle_log, "Super effective!");
				if (array_length(battle_log) > max_log_messages) {
					array_delete(battle_log, 0, 1);
				}
			} else if (eff_value < 1) {
				array_push(battle_log, "Not very effective...");
				if (array_length(battle_log) > max_log_messages) {
					array_delete(battle_log, 0, 1);
				}
			}
			
			if (crit_flag) {
				array_push(battle_log, "Critical hit!");
				if (array_length(battle_log) > max_log_messages) {
					array_delete(battle_log, 0, 1);
				}
			}
		}
	}
	
	// create projectile for attack
	var proj = instance_create_layer(attacker.x, attacker.y, "Instances", OBJ_Projectile);
    proj.target_x = defender.x;
    proj.target_y = defender.y;
    proj.attack_type = attack_type;
    proj.target_pokemon = defender;
	proj.damage = damage;
	proj.is_physical = is_physical;
	proj.is_crit = is_crit;
}
