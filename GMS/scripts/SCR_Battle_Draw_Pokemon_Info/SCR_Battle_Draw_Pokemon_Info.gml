function SCR_Battle_Draw_Pokemon_Info() {
    // Reset draw settings to ensure consistency across all states
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    var right_area_x = ui_left_panel_width;
    var right_area_width = room_width - ui_left_panel_width;
    
    // ENEMY POKEMON INFO (Top right area)
    if (instance_exists(wild_pokemon)) {
        var enemy_base_y = 60;
        var enemy_icon_y = enemy_base_y + 2;
        var enemy_text_y = enemy_base_y - 20;
        var enemy_healthbar_y = enemy_base_y + 10;
        var enemy_hp_text_y = enemy_base_y + 20;
        
        // Semi-transparent background (shrunk by 50px from bottom)
        draw_set_color(c_red);
        draw_set_alpha(0.2);
        draw_rectangle(right_area_x, 30, room_width, ui_pokemon_info_height, false);
        draw_set_alpha(1);
        
        // Pokemon Icon (using correct Pokedex variable) - 1.5x bigger
        var icon_sprite = global.Dex_Portrait[wild_pokemon.pokedex_id];
        if (sprite_exists(icon_sprite)) {
            draw_sprite_ext(icon_sprite, 0, right_area_x + 30, enemy_icon_y - 1, 1.5, 1.5, 0, c_white, 1);
        } else {
            // Fallback - draw a colored rectangle if icon missing (also bigger)
            draw_set_color(c_red);
            draw_rectangle(right_area_x + 15, enemy_icon_y - 23, right_area_x + 65, enemy_icon_y + 21, false);
        }
        
        // Pokemon Name and Level on same line with spacing (moved right to compensate)
        draw_set_font(FNT_Small);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        var name_level_text = wild_pokemon.pokemon_name + "     Lv." + string(wild_pokemon.level);
        
        
        draw_text(right_area_x + 90, enemy_text_y, name_level_text);
        
        // Health Bar - double thickness (moved right to compensate)
        var hp_percentage = (wild_pokemon.current_hp / wild_pokemon.max_hp) * 100;
        draw_healthbar(right_area_x + 90, enemy_healthbar_y, right_area_x + 270, enemy_healthbar_y + 20, hp_percentage, c_red, c_green, c_green, 0, true, true);
        
        // HP Text - properly aligned with health bar center (moved right to compensate)
        draw_set_valign(fa_middle);
        draw_text(right_area_x + 280, enemy_hp_text_y + 1, string(wild_pokemon.current_hp) + "/" + string(wild_pokemon.max_hp));
        draw_set_valign(fa_top);
    }
    
    // PLAYER POKEMON INFO (Bottom right area)
    if (instance_exists(player_pokemon)) {
        var player_base_y = room_height - 60; // Moved up 30px
        var player_icon_y = player_base_y - 10;
        var player_text_y = player_base_y - 30;
        var player_healthbar_y = player_base_y;
        var player_hp_text_y = player_base_y + 10;
        
        // Semi-transparent background (cut 30px from top, moved down 30px)
        draw_set_color(c_blue);
        draw_set_alpha(0.2);
        draw_rectangle(right_area_x, room_height - ui_pokemon_info_height, room_width, room_height - 30, false);
        draw_set_alpha(1);
        
        // Pokemon Icon (using correct Pokedex variable) - 1.5x bigger
        var icon_sprite = global.Dex_Portrait[player_pokemon.pokedex_id];
        if (sprite_exists(icon_sprite)) {
            draw_sprite_ext(icon_sprite, 0, right_area_x + 30, player_icon_y, 1.5, 1.5, 0, c_white, 1);
        } else {
            // Fallback - draw a colored rectangle if icon missing (also bigger)
            draw_set_color(c_blue);
            draw_rectangle(right_area_x + 15, player_icon_y - 22, right_area_x + 65, player_icon_y + 22, false);
        }
        
        // Pokemon Name and Level on same line with spacing (moved right to compensate)
        draw_set_font(FNT_Small);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        var name_level_text = player_pokemon.pokemon_name + "     Lv." + string(player_pokemon.level);
        draw_text(right_area_x + 90, player_text_y, name_level_text);
        
        // Health Bar - double thickness (moved right to compensate)
        var hp_percentage = (player_pokemon.current_hp / player_pokemon.max_hp) * 100;
        draw_healthbar(right_area_x + 90, player_healthbar_y, right_area_x + 270, player_healthbar_y + 20, hp_percentage, c_red, c_green, c_green, 0, true, true);
        
        // HP Text - properly aligned with health bar center (moved right to compensate)
        draw_set_valign(fa_middle);
        draw_text(right_area_x + 280, player_hp_text_y + 1, string(player_pokemon.current_hp) + "/" + string(player_pokemon.max_hp));
        draw_set_valign(fa_top);
        
        // XP Bar during victory states (in player Pokemon section)
        if (battle_state == "XP_DISPLAY" || battle_state == "LEVEL_UP" || battle_state == "EVOLUTION") {
            var xp_in_level, xp_needed_for_level, xp_percentage;
            
            // Two-Stage XP Display Logic
            if (xp_display_stage == "CURRENT_LEVEL") {
                // Stage 1: Show progress within original level
                var original_level = victory_data.level_before;
                var current_level_start = power(original_level - 1, 3);
                var current_level_end = power(original_level, 3);
                
                xp_needed_for_level = current_level_end - current_level_start;
                
                // Check if we're leveling up to determine XP display
                if (level_up_detected) {
                    // If leveling up, cap at level end for stage 1
                    xp_in_level = min(xp_current_display, current_level_end) - current_level_start;
                } else {
                    // If not leveling up, show actual progress within current level
                    xp_in_level = xp_current_display - current_level_start;
                }
                
                xp_percentage = max(0, min(100, (xp_in_level / xp_needed_for_level) * 100));
            } else {
                // Stage 2: Show progress within new level (during LEVEL_UP state)
                var new_level = victory_data.level_after;
                var new_level_start = power(new_level - 1, 3);
                var new_level_end = power(new_level, 3);
                
                xp_needed_for_level = new_level_end - new_level_start;
                xp_in_level = max(0, xp_current_display - new_level_start);
                xp_percentage = max(0, min(100, (xp_in_level / xp_needed_for_level) * 100));
            }
            
            // Ensure we don't show negative values
            if (xp_in_level < 0) {
                xp_in_level = 0;
            }
            
            // XP Bar - match health bar height and position
            var xp_bar_y = player_base_y + 30;
            draw_healthbar(right_area_x + 90, xp_bar_y, right_area_x + 270, xp_bar_y + 20, xp_percentage, c_black, make_color_rgb(100, 200, 255), make_color_rgb(100, 200, 255), 0, true, true);
            
            // XP Text - positioned like HP text, to the right of the bar
            draw_set_font(FNT_Small);
            draw_set_color(c_white);
            draw_set_valign(fa_middle);
            draw_text(right_area_x + 280, xp_bar_y + 11, string(floor(xp_in_level)) + "/" + string(xp_needed_for_level));
            draw_set_valign(fa_top);
        }
    }
}