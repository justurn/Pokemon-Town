/// OBJ_Master_Battle Step Event

// Handle input processing
SCR_Inputs();

// Increment delay counter
delay += 1;

// Handle flee animation
if (flee_animation_active) {
    flee_animation_timer += 1;
    
    // Calculate lerp progress (0 to 1)
    var progress = flee_animation_timer / flee_animation_duration;
    progress = min(progress, 1); // Clamp to 1
    
    // Move the appropriate Pokemon
    if (flee_who == "player") {
        player_pokemon.x = lerp(pokemon_a_x, flee_target_x, progress);
    } else if (flee_who == "wild") {
        wild_pokemon.x = lerp(pokemon_b_x, flee_target_x, progress);
    }
    
    // Check if animation is complete
    if (progress >= 1) {
        flee_animation_active = false;
        battle_state = "FLEEING";
        flee_timer = 0;
        show_debug_message("Flee animation complete, transitioning to flee state");
    }
    
    // Don't process other battle logic during animation
    return;
}

// Handle flee timer
if (battle_state == "FLEEING") {
    flee_timer += 1;
    if (flee_timer >= flee_delay) {
        show_debug_message("Flee timer reached, going to RM_Town");
        room_goto(RM_Town);
        return;
    }
    // Don't process any other battle logic while fleeing
    return;
}

// PLAYER CHOICE STATE - NEW
if (battle_state == "PLAYER_CHOICE") {
    // Handle menu navigation with delay system
    if (battle_ui_state == "ACTION_SELECT") {
        if (global.up && delay > delay_limit) {
            delay = 0;
            selected_action--;
            if (selected_action < 0) {
                selected_action = array_length(action_menu) - 1; // Loop to last item
            }
        }
        if (global.down && delay > delay_limit) {
            delay = 0;
            selected_action++;
            if (selected_action >= array_length(action_menu)) {
                selected_action = 0; // Loop to first item
            }
        }
        if (global.enter && delay > delay_limit) {
            delay = 0;
            switch(selected_action) {
                case 0: // Attack
                    // Clear battle text when player chooses to attack
                    battle_log = [];
                    // F-018: Use enhanced move selection instead of attack type
                    battle_ui_state = "MOVE_SELECT";
                    selected_move = last_used_move; // Start with last used move
                    break;
                case 1: // Item
                    // Add message to battle log
                    array_push(battle_log, "No items available in battle!");
                    if (array_length(battle_log) > max_log_messages) {
                        array_delete(battle_log, 0, 1);
                    }
                    // Return to action selection - items not implemented yet
                    delay = 0;
                    break;
                case 2: // Flee
                    // Clear battle text when player chooses to flee
                    battle_log = [];
                    // Store flee choice for execution in action phase
                    player_chosen_action = "FLEE";
                    
                    // Check speed to determine execution order
                    if (attacks_first == "PLAYER") {
                        // Player acts first - execute flee immediately
                        show_debug_message("Player acts first (speed advantage) - executing flee");
                        var flee_successful = SCR_Execute_Player_Flee();
                        if (!flee_successful) {
                            // Flee failed, transition to wild Pokemon's turn
                            show_debug_message("Player flee failed, wild Pokemon's turn");
                            battle_state = "WILD_TURN";
                        }
                        // If flee succeeded, the flee animation will handle state transitions
                    } else {
                        // Wild Pokemon acts first - store flee for later execution
                        show_debug_message("Wild Pokemon acts first (speed advantage), storing player flee");
                        battle_state = "WILD_TURN";
                    }
                    battle_ui_state = "BATTLE_TEXT";
                    break;
            }
        }
    }
    // F-018: Move Selection State
    else if (battle_ui_state == "MOVE_SELECT") {
        // Arrow key navigation for 2x2 grid
        if ((global.left || global.right || global.up || global.down) && delay > delay_limit) {
            delay = 0;
            if (global.left) {
                selected_move = (selected_move % 2 == 0) ? selected_move + 1 : selected_move - 1;
            }
            if (global.right) {
                selected_move = (selected_move % 2 == 1) ? selected_move - 1 : selected_move + 1;
            }
            if (global.up) {
                selected_move = (selected_move < 2) ? selected_move + 2 : selected_move - 2;
            }
            if (global.down) {
                selected_move = (selected_move >= 2) ? selected_move - 2 : selected_move + 2;
            }
            // Ensure valid range
            selected_move = max(0, min(3, selected_move));
        }
        
        if (global.enter && delay > delay_limit) {
            delay = 0;
            // Get selected move ID
            var moves = [player_pokemon.move_1, player_pokemon.move_2, player_pokemon.move_3, player_pokemon.move_4];
            var selected_move_id = moves[selected_move];
            
            if (selected_move_id > 0) {
                // Remember this move for next time
                last_used_move = selected_move;
                
                // Check speed to determine execution order
                if (attacks_first == "PLAYER") {
                    // Player goes first - execute immediately
                    show_debug_message("Player attacks first (speed advantage)");
                    SCR_Attack(player_pokemon, wild_pokemon, selected_move);
                    
                    // Check if wild Pokemon is defeated
                    if (wild_pokemon.current_hp <= 0) {
                        return; // Battle ends, wild Pokemon defeated
                    }
                    
                    // Player went first, now wild's turn (with delay)
                    show_debug_message("Player finished first attack, now wild Pokemon's turn");
                    battle_state = "WAIT_WILD";
                    alarm[0] = attack_delay_duration;
                } else {
                    // Wild goes first - store player's move for later execution
                    show_debug_message("Wild Pokemon attacks first (speed advantage), storing player's move");
                    player_chosen_move = selected_move;
                    battle_state = "WILD_TURN";
                }
                battle_ui_state = "BATTLE_TEXT";
            } else {
                // No move in this slot - show message
                array_push(battle_log, "No move assigned to this slot!");
                if (array_length(battle_log) > max_log_messages) {
                    array_delete(battle_log, 0, 1);
                }
            }
        }
        
        // Allow backing out of move selection with shift key
        if (global.shift && delay > delay_limit) {
            delay = 0;
            battle_ui_state = "ACTION_SELECT";
        }
    }
}


// PLAYER TURN LOGIC - Always start with player choice
if (battle_state == "PLAYER_TURN") {
    show_debug_message(battle_state);
    
    // Reset timer bar
    player_turn_timer = turn_max;
    
    // Player always chooses first, speed determines execution order
    show_debug_message("Player chooses action first (speed determines execution order)");
    battle_state = "PLAYER_CHOICE";
    battle_ui_state = "ACTION_SELECT";
    selected_action = 0; // Reset to Attack
}

// WILD TURN LOGIC - With timing for sequential attacks
if (battle_state == "WILD_TURN") {
    // Only show state message once
    if (!waiting_for_second_attack && attack_delay_timer == 0) {
        show_debug_message(battle_state);
        
        // Reset timer bar
        wild_turn_timer = turn_max;
        
        // Wild Pokemon has configurable chance to flee (but not in trainer battles)
        var wild_flee_roll = irandom(100);
        var is_trainer_battle = global.is_trainer_battle;
        var is_adventure = global.adventure_active;
        var modified_wild_flee_chance = global.wild_pokemon_flee_chance * global.flee_success_modifier;
        show_debug_message("Wild Pokemon flee attempt: base_chance=" + string(global.wild_pokemon_flee_chance) + ", modified_chance=" + string(modified_wild_flee_chance) + ", roll=" + string(wild_flee_roll));
        if (wild_flee_roll < modified_wild_flee_chance && !is_trainer_battle && !is_adventure) {
            // During wild Pokemon's turn, they can always flee regardless of speed
            show_debug_message("Wild Pokemon chose to flee during their turn");

            // I-029 Fix: Save player Pokemon HP before ending battle
            global.pokemon_health = player_pokemon.current_hp;

            // Add message to battle log
            array_push(battle_log, wild_pokemon.pokemon_name + " fled!");
            if (array_length(battle_log) > max_log_messages) {
                array_delete(battle_log, 0, 1);
            }
            // Start wild Pokemon flee animation
            flee_animation_active = true;
            flee_animation_timer = 0;
            flee_target_x = room_width + 100; // Move wild Pokemon off-screen to the right
            flee_who = "wild";
            battle_ui_state = "BATTLE_TEXT";
            show_debug_message("Starting wild Pokemon flee animation");
            // Reset wild Pokemon positions
            global.wild_pokemon_a_id = 0;
            global.wild_pokemon_a_x = -1;
            global.wild_pokemon_b_id = 0;
            global.wild_pokemon_b_x = -1;
            return;
        }
        
        // Execute wild Pokemon's attack
        SCR_Attack(wild_pokemon, player_pokemon, -1); // -1 = auto-select best attack type
        
        // Check if player Pokemon is defeated
        if (player_pokemon.current_hp <= 0) {
            return; // Battle ends, player defeated
        }
        
        // Check if we need to execute stored player action after delay
        if (attacks_first == "WILD" && (player_chosen_move >= 0 || player_chosen_action == "FLEE")) {
            // Start waiting for second action
            waiting_for_second_attack = true;
            attack_delay_timer = 0;
            show_debug_message("Wild Pokemon attacked first, waiting before player's stored action (" + player_chosen_action + ")");
        } else {
            // Wild went second (after player), round complete
            show_debug_message("Wild Pokemon finished second attack, round complete");
            battle_state = "WAIT_PLAYER"; 
            alarm[0] = wild_turn_timer;
        }
    }
    
    // Handle timing for second attack
    if (waiting_for_second_attack) {
        attack_delay_timer++;
        
        if (attack_delay_timer >= attack_delay_duration) {
            // Execute stored player action
            if (player_chosen_action == "FLEE") {
                show_debug_message("Delay complete, executing player's stored flee attempt");
                var flee_successful = SCR_Execute_Player_Flee();
                
                // Reset timing variables
                waiting_for_second_attack = false;
                attack_delay_timer = 0;
                player_chosen_move = -1;
                player_chosen_action = "";
                
                if (flee_successful) {
                    return; // Flee successful, battle ends
                } else {
                    // Flee failed, round complete
                    show_debug_message("Player flee failed, round complete");
                    battle_state = "WAIT_PLAYER"; 
                    alarm[0] = wild_turn_timer;
                }
            } else {
                // Execute stored player attack
                show_debug_message("Delay complete, executing player's stored move " + string(player_chosen_move));
                SCR_Attack(player_pokemon, wild_pokemon, player_chosen_move);
                
                // Check if wild Pokemon is defeated after player's attack
                if (wild_pokemon.current_hp <= 0) {
                    // Reset timing variables
                    waiting_for_second_attack = false;
                    attack_delay_timer = 0;
                    player_chosen_move = -1;
                    player_chosen_action = "";
                    return; // Battle ends, wild Pokemon defeated
                }
                
                // Round complete after both attacks
                show_debug_message("Both Pokemon attacked, round complete");
                battle_state = "WAIT_PLAYER"; 
                alarm[0] = wild_turn_timer;
                
                // Reset timing variables
                waiting_for_second_attack = false;
                attack_delay_timer = 0;
                player_chosen_move = -1;
                player_chosen_action = "";
            }
        }
    }
}


// ENEMY FAINT STATE - Wild Pokemon slides off screen
if (battle_state == "ENEMY_FAINT") {
    enemy_faint_timer++;
    
    // Animate defeated Pokemon sliding down and fading
    with (OBJ_Battle_Pokemon_Wild) {
        image_alpha = max(0, 1 - (other.enemy_faint_timer / other.enemy_faint_duration));
        y = min(room_height + 100, y + 3); // Slide down
    }
    
    // Add battle log message
    if (enemy_faint_timer == 1) {
        array_push(battle_log, victory_data.defeated_pokemon_name + " fainted!");
        
        // F-026: Check if defeated Pokemon is legendary and unlock hatching
        var defeated_id = wild_pokemon.pokedex_id;
        if (global.Dex_Legendary[defeated_id] && global.Dex_Hatching[defeated_id] == "False") {
            
            // Toggle hatching flag to make legendary hatchable
            global.Dex_Hatching[defeated_id] = "True";
            
            // Add achievement message
            array_push(battle_log, "Legendary " + victory_data.defeated_pokemon_name + " can now hatch from eggs!");
            
            show_debug_message("F-026: Legendary unlocked for hatching: " + string(defeated_id) + " (" + victory_data.defeated_pokemon_name + ")");
        }
        
        if (array_length(battle_log) > max_log_messages) {
            array_delete(battle_log, 0, 1);
        }
    }
    
    
    // Transition to center stage
    if (enemy_faint_timer >= enemy_faint_duration) {
        battle_state = "CENTER_STAGE";
        center_stage_timer = 0;
        show_debug_message("ENEMY_FAINT -> CENTER_STAGE: Moving Pokemon to center");
        
    }
}

// CENTER STAGE STATE - Move player Pokemon to center
if (battle_state == "CENTER_STAGE") {
    center_stage_timer++;
    
    // Smoothly move player Pokemon to center stage
    var progress = center_stage_timer / center_stage_duration;
    progress = min(progress, 1);
    
    with (OBJ_Battle_Pokemon_Tame) {
        x = lerp(other.player_start_x, other.pokemon_center_x, progress);
        y = lerp(other.player_start_y, other.pokemon_center_y, progress);
    }
    
    // Transition to XP display
    if (center_stage_timer >= center_stage_duration) {
        battle_state = "XP_DISPLAY";
        xp_display_timer = 0;
        show_debug_message("CENTER_STAGE -> XP_DISPLAY: Starting XP animation");
    }
}

// XP DISPLAY STATE - Animate XP bar with two-stage system
if (battle_state == "XP_DISPLAY") {
    xp_display_timer++;
    
    // Keep battle log visible during XP display - will be cleared at VICTORY_COMPLETE
    // Removed: battle log clearing moved to VICTORY_COMPLETE state
    
    // Debug output only when entering state or stage changes
    if (last_battle_state != "XP_DISPLAY" || last_xp_stage != xp_display_stage) {
        show_debug_message("XP_DISPLAY: Entered state - display_xp=" + string(display_xp) + ", xp_target=" + string(xp_target) + ", level_up=" + string(level_up_detected) + ", stage=" + string(xp_display_stage));
        last_battle_state = "XP_DISPLAY";
        last_xp_stage = xp_display_stage;
    }
    
    // Two-stage XP animation logic
    if (xp_display_stage == "CURRENT_LEVEL") {
        // Stage 1: Add awarded XP (not fill to 100%)
        var original_level = victory_data.level_before;
        var current_level_start = power(original_level - 1, 3);
        var current_level_end = power(original_level, 3);
        
        // If level up detected, stage 1 target is 100% of current level
        // Otherwise, stage 1 target is just the awarded XP
        var stage_1_target;
        if (level_up_detected) {
            stage_1_target = current_level_end; // Fill to 100% only if leveling up
        } else {
            stage_1_target = xp_target; // Just add the awarded XP
        }
        
        if (display_xp < stage_1_target) {
            var xp_to_add = min(xp_fill_speed, stage_1_target - display_xp);
            display_xp += xp_to_add;
        }
        
        // Check for transitions when stage 1 completes AND minimum display time passed
        if (display_xp >= stage_1_target && xp_display_timer >= 60) { // Minimum 1 second display
            if (level_up_detected) {
                // Level up detected - require keypress to continue (consistent UX)
                if (global.enter || global.shift) {
                    // Transition to stage 2 (new level)
                    xp_display_stage = "NEW_LEVEL";
                    display_level = victory_data.level_after;  // Update to new level for XP bar calculations
                    display_xp = power(display_level - 1, 3);  // Reset to start of new level
                    battle_state = "LEVEL_UP";
                    level_up_timer = 0;
                    show_debug_message("XP_DISPLAY -> LEVEL_UP: Manual transition after keypress");
                    
                    // NOW update the visual display (level and HP restoration) using victory data
                    with (OBJ_Battle_Pokemon_Tame) {
                        level = other.victory_data.level_after;
                        current_hp = other.victory_data.stats_after.health_max;  // Full heal on level up
                        max_hp = other.victory_data.stats_after.health_max;
                    }
                    
                    array_push(battle_log, global.Dex_Names[global.pokemon_ID] + " reached Level " + string(victory_data.level_after) + "!");
                    if (array_length(battle_log) > max_log_messages) {
                        array_delete(battle_log, 0, 1);
                    }
                }
            } else {
                // No level up - require keypress to continue
                if (global.enter || global.shift) {
                    // Victory complete - update global variables  
                    global.pokemon_experience = xp_target;
                    battle_state = "VICTORY_COMPLETE";
                    show_debug_message("XP_DISPLAY -> VICTORY_COMPLETE: Manual transition after keypress");
                }
            }
        }
    }
    
    // Allow skipping stage 1 animation
    if (global.enter || global.shift) {
        if (xp_display_stage == "CURRENT_LEVEL") {
            if (level_up_detected) {
                // Skip to end of current level (100%) only if leveling up
                var original_level = victory_data.level_before;
                var current_level_end = power(original_level, 3);
                display_xp = current_level_end;
                
                // Immediately transition to stage 2 (new level)
                xp_display_stage = "NEW_LEVEL";
                display_level = victory_data.level_after;  // Update to new level
                display_xp = power(display_level - 1, 3);  // Reset to start of new level
                battle_state = "LEVEL_UP";
                level_up_timer = 0;
                
                // Update the visual display when manually skipping to LEVEL_UP
                with (OBJ_Battle_Pokemon_Tame) {
                    level = other.victory_data.level_after;
                    current_hp = other.victory_data.stats_after.health_max;
                    max_hp = other.victory_data.stats_after.health_max;
                }
                
                array_push(battle_log, global.Dex_Names[global.pokemon_ID] + " reached Level " + string(victory_data.level_after) + "!");
                if (array_length(battle_log) > max_log_messages) {
                    array_delete(battle_log, 0, 1);
                }
            } else {
                // No level up - skip to awarded XP amount
                display_xp = xp_target;
                // Victory complete - update global variables
                global.pokemon_experience = xp_target;
                battle_state = "VICTORY_COMPLETE";
            }
        }
    }
}

// LEVEL UP STATE - Show SPR_Level_Up sprite above Pokemon + stage 2 XP animation
if (battle_state == "LEVEL_UP") {
    level_up_timer++;
    
    // Debug output only when entering state or stage changes
    if (last_battle_state != "LEVEL_UP" || last_xp_stage != xp_display_stage) {
        show_debug_message("LEVEL_UP: Entered state - timer=" + string(level_up_timer) + ", xp_stage=" + string(xp_display_stage) + ", evolution=" + string(victory_data.evolution_triggered));
        last_battle_state = "LEVEL_UP";
        last_xp_stage = xp_display_stage;
    }
    
    // Stage 2: Animate remaining XP in new level
    if (xp_display_stage == "NEW_LEVEL" && display_xp < xp_target) {
        var xp_to_add = min(xp_fill_speed, xp_target - display_xp);
        display_xp += xp_to_add;
    }
    
    // Require minimum display time (1 second) before allowing transitions
    if (level_up_timer >= 60) {
        // Allow skipping stage 2 animation after minimum time
        if (global.enter || global.shift) {
            display_xp = xp_target; // Skip to final XP amount
            
            if (victory_data.evolution_triggered) {
                battle_state = "EVOLUTION";
                evolution_timer = 0;
                show_debug_message("LEVEL_UP -> EVOLUTION: Manual transition after keypress");
                
                array_push(battle_log, global.Dex_Names[global.pokemon_ID] + " is evolving into " + global.Dex_Names[victory_data.new_pokemon_id] + "!");
                if (array_length(battle_log) > max_log_messages) {
                    array_delete(battle_log, 0, 1);
                }
            } else {
                // Victory complete - update all global variables for level up
                global.pokemon_experience = xp_target;
                global.pokemon_level = victory_data.level_after;
                global.pokemon_health = victory_data.stats_after.health_max; // Full heal on level up
                SCR_Pokemon_Stats(); // Recalculate all stats for new level
                battle_state = "VICTORY_COMPLETE";
                show_debug_message("LEVEL_UP -> VICTORY_COMPLETE: Manual transition after keypress");
            }
        }
        
        // Note: Removed auto-transition - LEVEL_UP state now requires keypress to continue
    }
}

// EVOLUTION STATE - Black background + sparkles + Pokemon evolution
if (battle_state == "EVOLUTION") {
    evolution_timer++;
    evolution_flash_timer++;
    
    // Create sparkles on first frame
    if (evolution_timer == 1) {
        // Create sparkles only behind left panel area (right side of screen)
        sparkle_instances = SCR_Create_Sparkle_Effect(ui_left_panel_width, room_width + 50, -50, room_height + 50);
        
        // Make sparkles invisible for manual drawing in battle
        for (var i = 0; i < array_length(sparkle_instances); i++) {
            with (sparkle_instances[i]) {
                visible = false; // Hide from normal drawing, we'll draw manually
            }
        }
        
        // Ensure player Pokemon is on top layer during evolution
        with (OBJ_Battle_Pokemon_Tame) {
            depth = 50; // Bring Pokemon to front layer
        }
        
        show_debug_message("Evolution started: Created " + string(array_length(sparkle_instances)) + " sparkles at depth -1000 (on top of everything)");
    }
    
    // Fade in black background
    if (evolution_timer < 60) {
        evolution_background_alpha = evolution_timer / 60;
    } else {
        evolution_background_alpha = 1;
    }
    
    // Scaling effect - consistent 3x size like lab hatching
    evolution_scale = 3;
    
    // Alpha effect for flashing - slower and stops after sprite change
    if (evolution_timer < 90) {
        // Fast flashing before sprite change
        evolution_alpha = 0.7 + 0.3 * sin(evolution_flash_timer * 0.2);
    } else if (evolution_timer < 120) {
        // Slower flashing after sprite change
        evolution_alpha = 0.8 + 0.2 * sin(evolution_flash_timer * 0.1);
    } else {
        // Stop flashing - solid appearance
        evolution_alpha = 1.0;
    }
    
    // Sprite transition at frame 90 (from OBJ_Evolve_Pokemon)
    if (evolution_timer == 90) {
        // Update player Pokemon sprite only - don't update global.pokemon_ID yet
        var new_pokemon_id = victory_data.new_pokemon_id;
        show_debug_message("Evolution frame 90: Changing sprite from " + string(global.pokemon_ID) + " to " + string(new_pokemon_id));
        with (OBJ_Battle_Pokemon_Tame) {
            sprite_index = global.Dex_Sprites[new_pokemon_id];
            show_debug_message("Sprite changed to: " + string(sprite_index));
        }
        
        array_push(battle_log, "Evolution complete!");
        if (array_length(battle_log) > max_log_messages) {
            array_delete(battle_log, 0, 1);
        }
    }
    
    // Require minimum display time (3 seconds) before allowing user to continue
    if (evolution_timer >= 180) {
        // Wait for keypress to complete evolution (like LEVEL_UP state)
        if (global.enter || global.shift) {
            // Clean up sparkles
            for (var i = 0; i < array_length(sparkle_instances); i++) {
                if (instance_exists(sparkle_instances[i])) {
                    instance_destroy(sparkle_instances[i]);
                }
            }
            sparkle_instances = [];
            
            // Apply final evolution changes (from OBJ_Evolve_Pokemon) - NOW update global.pokemon_ID
            global.pokemon_ID = victory_data.new_pokemon_id;
            global.pokemon_level = victory_data.level_after;  // FIX: Update level after evolution
            SCR_Pokemon_Stats();
            global.pokemon_health = global.pokemon_health_max;
            
            // Update global XP when completing victory
            global.pokemon_experience = xp_target;
            battle_state = "VICTORY_COMPLETE";
            show_debug_message("Evolution complete: Pokemon ID updated to " + string(global.pokemon_ID));
        }
    }
    
    // Allow skipping to minimum time but still require keypress - ensure we hit frame 90 first
    if ((global.enter || global.shift) && evolution_timer < 180 && evolution_timer > 90) {
        evolution_timer = 180; // Skip to minimum display time, but still require another keypress to continue
    }
}

// VICTORY COMPLETE STATE - Instant cleanup and transition
if (battle_state == "VICTORY_COMPLETE") {
    // Clear battle log when victory is complete
    battle_log = [];
    
    show_debug_message("VICTORY_COMPLETE: Performing cleanup and going to treasure room");

    // Handle special rival battle logic
    if (global.is_trainer_battle) {
        // Check if this is an adventure boss battle or town rival battle
        var is_adventure = global.adventure_active;

        if (is_adventure) {
            show_debug_message("Adventure boss battle won!");

            // Adventure complete! All habitats defeated
            // Set treasure_limit for mega chest reward (5 items)
            global.treasure_limit_override = 5;

            // Reset trainer battle flag
            global.is_trainer_battle = false;

            // End the adventure completely
            global.adventure_active = false;
            global.adventure_remaining_habitats = [];
            global.adventure_completed_habitats = [];
            show_debug_message("Adventure marked as complete - clearing adventure state");
        } else {
            show_debug_message("Rival battle won!");

            // Mark milestone as completed
            var current_level = global.pokemon_level;
            for (var m = 0; m < array_length(global.rival_battle_milestones); m++) {
                var milestone_level = global.rival_battle_milestones[m];
                if (current_level >= milestone_level &&
                    !array_contains(global.rival_completed_milestones, milestone_level)) {

                    array_push(global.rival_completed_milestones, milestone_level);
                    show_debug_message("Milestone " + string(milestone_level) + " marked as completed");
                    break;
                }
            }

            // Set treasure_limit for mega chest reward (5 items)
            global.treasure_limit_override = 5;

            // Reset trainer battle flag
            global.is_trainer_battle = false;
        }
        
        // Restore original wild Pokemon data (if this was a town rival battle)
        if (!is_adventure && global.temp_wild_pokemon_a_id != 0) {
            global.wild_pokemon_a_id = global.temp_wild_pokemon_a_id;
            global.wild_pokemon_b_id = global.temp_wild_pokemon_b_id;
            global.temp_wild_pokemon_a_id = 0;
            global.temp_wild_pokemon_b_id = 0;
            show_debug_message("Restored wild Pokemon data after rival victory");
        }
        
        // Rival XP bonus now handled in main XP calculation with multiplier
    } else {
        // Reset wild Pokemon positions for regular battles
        global.wild_pokemon_a_id = 0;
        global.wild_pokemon_a_x = -1;
        global.wild_pokemon_b_id = 0;
        global.wild_pokemon_b_x = -1;
    }
    
    // Clean up victory state
    battle_state = "INACTIVE";
    
    // Transition to treasure room
    room_goto(RM_Treasure);
}

// PLAYER FAINT STATE - Handle player Pokemon defeat
if (battle_state == "PLAYER_FAINT") {
    player_faint_timer++;
    
    // Animate player Pokemon sliding down and fading
    with (OBJ_Battle_Pokemon_Tame) {
        image_alpha = max(0, 1 - (other.player_faint_timer / other.player_faint_duration));
        y = min(room_height + 100, y + 3); // Slide down (matches wild Pokemon speed)
    }
    
    // Add Pokemon faint message to battle log (not UI panel)
    if (player_faint_timer == 1) {
        array_push(battle_log, global.Dex_Names[global.pokemon_ID] + " fainted!");
        if (array_length(battle_log) > max_log_messages) {
            array_delete(battle_log, 0, 1);
        }
    }
    
    // Require keypress to continue after minimum display time
    if (player_faint_timer >= player_faint_duration + 30) {
        if (global.enter || global.shift) {
            // Handle trainer battle cleanup (moved from player Pokemon step event)
            if (global.is_trainer_battle) {
                // Mark this milestone as completed (even though lost) to prevent re-encounter
                if (global.rival_milestone_level > 0) {
                    if (!array_contains(global.rival_completed_milestones, global.rival_milestone_level)) {
                        array_push(global.rival_completed_milestones, global.rival_milestone_level);
                        show_debug_message("Rival battle lost - marked milestone " + string(global.rival_milestone_level) + " as completed to prevent re-encounter");
                    }
                }

                global.is_trainer_battle = false;
                global.treasure_limit_override = -1; // Clear any pending treasure override
                show_debug_message("Rival battle lost - cleaned up trainer battle flags and treasure override");

                // Restore original wild Pokemon data that was stored before battle
                if (global.temp_wild_pokemon_a_id != 0) {
                    global.wild_pokemon_a_id = global.temp_wild_pokemon_a_id;
                    global.wild_pokemon_b_id = global.temp_wild_pokemon_b_id;
                    global.temp_wild_pokemon_a_id = 0;
                    global.temp_wild_pokemon_b_id = 0;
                    show_debug_message("Restored wild Pokemon data after rival defeat");
                }
            } else {
                // Clear wild Pokemon data for regular battles (similar to victory cleanup)
                // Reset wild Pokemon positions for regular battles
                global.wild_pokemon_a_id = 0;
                global.wild_pokemon_a_x = -1;
                global.wild_pokemon_b_id = 0;
                global.wild_pokemon_b_x = -1;
            }
            
            // Clear battle log and set battle state to inactive
            battle_log = [];
            battle_state = "INACTIVE";
            
            // Keep Pokemon fainted after defeat - player must visit Pokemon Center to heal
            global.pokemon_health = 0; // Set to 0 HP to prevent new battles

            // Note: Adventure state and biome/habitat reset handled by OBJ_Master_Town/Other_4 (I-022/I-026)
            room_goto(RM_Town);
            show_debug_message("PLAYER_FAINT -> RM_Town: Manual transition after keypress");
        }
    }
}
