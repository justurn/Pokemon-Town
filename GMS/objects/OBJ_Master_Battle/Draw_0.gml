// Battle Background
draw_self();

// Timer bars removed


// Evolution Black Background (drawn early to be behind everything)
if (battle_state == "EVOLUTION") {
    draw_set_color(c_black);
    draw_set_alpha(evolution_background_alpha);
    draw_rectangle(ui_left_panel_width, 0, room_width, room_height, false);
    draw_set_alpha(1);
    
    // Draw sparkles ON TOP of black background but UNDER left panel
    for (var i = 0; i < array_length(sparkle_instances); i++) {
        var sparkle = sparkle_instances[i];
        if (instance_exists(sparkle)) {
            with (sparkle) {
                draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            }
        }
    }
}

// Draw SPR_Side_Panel background
draw_sprite(SPR_Side_Panel, 0, ui_left_panel_width/2, room_height/2);

// Draw panel backgrounds/outlines (drawn after side panel sprite but before content)
SCR_Battle_Draw_Panel_Outlines();

// Left Panel UI Content - drawn in order based on battle state
if (battle_state == "XP_DISPLAY" || battle_state == "LEVEL_UP" || battle_state == "EVOLUTION") {
    // Victory celebration display
    SCR_Battle_Draw_Victory_Display();
} else if (battle_state == "PLAYER_FAINT") {
    // Defeat display with keypress prompt
    SCR_Battle_Draw_Defeat_Display();
} else {
    // Normal battle action menu
    SCR_Battle_Draw_Action_Menu();
}

// Bottom section content based on UI state  
if (battle_ui_state == "MOVE_SELECT") {
    SCR_Battle_Draw_Move_Grid();
} else {
    SCR_Battle_Draw_Text_Log();
}

// Right Panel Pokemon Info (hidden during evolution for focus)
if (battle_state != "EVOLUTION") {
    SCR_Battle_Draw_Pokemon_Info();
}

// Level Up Sprite (above center-stage Pokemon)
if (battle_state == "LEVEL_UP") {
    var sprite_frame = floor(level_up_timer / 2) % sprite_get_number(SPR_Level_Up);
    draw_sprite_ext(SPR_Level_Up, sprite_frame, pokemon_center_x, pokemon_center_y - 120, 1, 1, 0, c_white, 1);
}

// Pokemon evolution effects (drawn last, on top of everything)
if (battle_state == "EVOLUTION") {
    // Pokemon evolution scaling and flashing (following OBJ_Evolve_Pokemon logic)
    with (OBJ_Battle_Pokemon_Tame) {
        image_xscale = other.evolution_scale;
        image_yscale = other.evolution_scale;
        image_alpha = other.evolution_alpha;
        
        // Add slower flashing effect that stops after evolution completes
        if (other.evolution_timer < 120) {
            var flash_interval = 15; // Slower flashing (every 15 frames = 4 times per second)
            var flash_cycle = (other.evolution_flash_timer div flash_interval) % 2;
            var flashing = (flash_cycle == 1);
            
            if (flashing && other.evolution_timer < 90) {
                image_alpha *= 0.4; // Less transparent flashing before sprite change
            } else if (flashing && other.evolution_timer < 120) {
                image_alpha *= 0.7; // Very subtle flashing after sprite change
            }
        }
        // After frame 120, no more flashing - Pokemon stays solid
    }
    
    // Draw Pokemon name above Pokemon after evolution completes (like in lab hatching)
    if (evolution_timer >= 120) {
        var evolved_pokemon_name = global.Dex_Names[victory_data.new_pokemon_id];
        SCR_Draw_Pokemon_Name_Plate(evolved_pokemon_name, pokemon_center_x, pokemon_center_y, -150);
    }
}

// Timer logic (existing)
if (battle_state == "WAIT_WILD") {
    wild_turn_timer = max(0, wild_turn_timer - 1);
}

if (battle_state == "WAIT_PLAYER") {
    player_turn_timer = max(0, player_turn_timer - 1);
}