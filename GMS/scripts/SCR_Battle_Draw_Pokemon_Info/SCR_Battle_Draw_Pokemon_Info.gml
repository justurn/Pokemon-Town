function SCR_Battle_Draw_Pokemon_Info() {
    // Reset draw settings to ensure consistency across all states
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    var right_area_x = ui_left_panel_width;
    var right_area_width = room_width - ui_left_panel_width;
    
    // ENEMY POKEMON INFO (Top right area)
    if (instance_exists(wild_pokemon)) {
        // Enemy panel positioning variables
        var enemy_panel_top = 0; // Panel starts at screen top
        var enemy_panel_height = 70; // Fixed panel height
        var enemy_icon_offset = 35; // Icon center offset from panel top
        
        var enemy_base_y = enemy_panel_top + enemy_icon_offset; // Icon center position
        var enemy_icon_y = enemy_base_y;
        var enemy_text_y = enemy_base_y - enemy_icon_offset; // Start text at top of icon
        var enemy_healthbar_y = enemy_text_y + font_small_line_spacing; // One line down from text
        var enemy_hp_text_y = enemy_healthbar_y + 10; // Align with healthbar center
        
        // Semi-transparent background (positioned at very top, 70px height)
        draw_set_color(c_red);
        draw_set_alpha(0.2);
        draw_rectangle(right_area_x, enemy_panel_top, room_width, enemy_panel_top + enemy_panel_height, false);
        draw_set_alpha(1);
        
        // Pokemon Icon - scaled to match 70px background bar height
        var icon_sprite = global.Dex_Portrait[wild_pokemon.pokedex_id];
        if (sprite_exists(icon_sprite)) {
            // Scale to match 70px bar height (40px base sprite to 70px = 1.75x scale)
            var icon_scale = 70 / 40; // 1.75x scale
            // Position centered: 70px icon needs 35px from edge to center
            draw_sprite_ext(icon_sprite, 0, right_area_x + 35, enemy_icon_y, icon_scale, icon_scale, 0, c_white, 1);
        } else {
            // Fallback - draw a colored rectangle matching bar height
            draw_set_color(c_red);
            draw_rectangle(right_area_x + 15, enemy_icon_y - 50, right_area_x + 65, enemy_icon_y + 50, false);
        }
        
        // Type icons - arranged vertically next to Pokemon icon (moved right 10px for larger icon)
        var type_icon_x = right_area_x + 80;  // Right of Pokemon icon, was +70, now +80
        var type_icon_scale = 1;
        var type_icon_y_base = enemy_icon_y - 29;  // Moved down 3px from -32 to -29
        
        // Check if dual type to determine positioning
        var has_dual_type = (wild_pokemon.secondary_type_id >= 0 && wild_pokemon.secondary_type_id != wild_pokemon.primary_type_id);
        
        // Primary type (always present)
        if (wild_pokemon.primary_type_id >= 0) {
            if (has_dual_type) {
                // Dual type: primary at top position
                SCR_Draw_Type_Icon(wild_pokemon.primary_type_id, type_icon_x, type_icon_y_base, type_icon_scale);
            } else {
                // Single type: positioned as if it were the first row of dual type
                SCR_Draw_Type_Icon(wild_pokemon.primary_type_id, type_icon_x, type_icon_y_base, type_icon_scale);
            }
        }
        
        // Secondary type (if different from primary)
        if (has_dual_type) {
            // Secondary type: additional 5px down (was 29px apart, now 34px apart)
            SCR_Draw_Type_Icon(wild_pokemon.secondary_type_id, type_icon_x, type_icon_y_base + 34, type_icon_scale);
        }
        
        // Pokemon Name and Level on same line with spacing (moved right by 20px)
        draw_set_font(FNT_Small);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        var name_level_text = wild_pokemon.pokemon_name + "     Lv." + string(wild_pokemon.level);
        
        
        draw_text(right_area_x + 120, enemy_text_y, name_level_text);  // Was +110, now +120 (additional 10px for larger icon)
        
        // Health Bar - double thickness (moved right by 30px total)
        var hp_percentage = (wild_pokemon.current_hp / wild_pokemon.max_hp) * 100;
        draw_healthbar(right_area_x + 120, enemy_healthbar_y, right_area_x + 300, enemy_healthbar_y + 20, hp_percentage, c_red, c_green, c_green, 0, true, true);  // Was +110 to +290, now +120 to +300
        
        // HP Text - properly aligned with health bar center (moved right by 30px total)
        draw_set_valign(fa_middle);
        draw_text(right_area_x + 310, enemy_hp_text_y + 1, string(wild_pokemon.current_hp) + "/" + string(wild_pokemon.max_hp));  // Was +300, now +310
        draw_set_valign(fa_top);
    }
    
    // PLAYER POKEMON INFO (Bottom right area)
    if (instance_exists(player_pokemon)) {
        // Player panel positioning variables
        var player_panel_offset = 10; // Additional offset to move panel down
        var player_icon_offset = 35; // Icon center offset from panel top
        
        var player_panel_top = room_height - ui_pokemon_info_height + player_panel_offset;
        var player_base_y = player_panel_top + player_icon_offset; // Icon center position
        var player_icon_y = player_base_y;
        var player_text_y = player_base_y - player_icon_offset; // Start text at top of icon
        var player_healthbar_y = player_text_y + font_small_line_spacing; // One line down from text
        var player_hp_text_y = player_healthbar_y + 10; // Align with healthbar center
        
        // Semi-transparent background (extended to bottom of screen)
        draw_set_color(c_blue);
        draw_set_alpha(0.2);
        draw_rectangle(right_area_x, player_panel_top, room_width, room_height, false);
        draw_set_alpha(1);
        
        // Pokemon Icon - scaled to match 70px background bar height
        var icon_sprite = global.Dex_Portrait[player_pokemon.pokedex_id];
        if (sprite_exists(icon_sprite)) {
            // Scale to match 70px bar height (40px base sprite to 70px = 1.75x scale)
            var icon_scale = 70 / 40; // 1.75x scale
            // Position centered: 70px icon needs 35px from edge to center
            draw_sprite_ext(icon_sprite, 0, right_area_x + 35, player_icon_y, icon_scale, icon_scale, 0, c_white, 1);
        } else {
            // Fallback - draw a colored rectangle matching bar height
            draw_set_color(c_blue);
            draw_rectangle(right_area_x + 15, player_icon_y - 50, right_area_x + 65, player_icon_y + 50, false);
        }
        
        // Type icons - arranged vertically next to Pokemon icon (moved right 10px for larger icon)
        var type_icon_x = right_area_x + 80;  // Right of Pokemon icon, was +70, now +80
        var type_icon_scale = 1;
        var type_icon_y_base = player_icon_y - 29;  // Moved down 3px from -32 to -29
        
        // Check if dual type to determine positioning
        var has_dual_type = (player_pokemon.secondary_type_id >= 0 && player_pokemon.secondary_type_id != player_pokemon.primary_type_id);
        
        // Primary type (always present)
        if (player_pokemon.primary_type_id >= 0) {
            if (has_dual_type) {
                // Dual type: primary at top position
                SCR_Draw_Type_Icon(player_pokemon.primary_type_id, type_icon_x, type_icon_y_base, type_icon_scale);
            } else {
                // Single type: positioned as if it were the first row of dual type
                SCR_Draw_Type_Icon(player_pokemon.primary_type_id, type_icon_x, type_icon_y_base, type_icon_scale);
            }
        }
        
        // Secondary type (if different from primary)
        if (has_dual_type) {
            // Secondary type: additional 5px down (was 29px apart, now 34px apart)
            SCR_Draw_Type_Icon(player_pokemon.secondary_type_id, type_icon_x, type_icon_y_base + 34, type_icon_scale);
        }
        
        // Pokemon Name and Level on same line with spacing (moved right by 20px)
        draw_set_font(FNT_Small);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        var name_level_text = player_pokemon.pokemon_name + "     Lv." + string(player_pokemon.level);
        draw_text(right_area_x + 120, player_text_y, name_level_text);  // Was +110, now +120 (additional 10px for larger icon)
        
        // Health Bar - double thickness (moved right by 30px total)
        var hp_percentage = (player_pokemon.current_hp / player_pokemon.max_hp) * 100;
        draw_healthbar(right_area_x + 120, player_healthbar_y, right_area_x + 300, player_healthbar_y + 20, hp_percentage, c_red, c_green, c_green, 0, true, true);  // Was +110 to +290, now +120 to +300
        
        // HP Text - properly aligned with health bar center (moved right by 30px total)
        draw_set_valign(fa_middle);
        draw_text(right_area_x + 310, player_hp_text_y + 1, string(player_pokemon.current_hp) + "/" + string(player_pokemon.max_hp));  // Was +300, now +310
        draw_set_valign(fa_top);
        
        // XP Bar (always visible in player Pokemon section)
        if (true) {
            var xp_in_level, xp_needed_for_level, xp_percentage;
            
            // Use consistent display variables - no more swapping based on state
            var current_level_start = power(display_level - 1, 3);
            var current_level_end = power(display_level, 3);
            
            xp_needed_for_level = current_level_end - current_level_start;
            xp_in_level = max(0, display_xp - current_level_start);
            
            // Cap at 100% for current level during animations
            if (xp_in_level > xp_needed_for_level) {
                xp_in_level = xp_needed_for_level;
            }
            
            xp_percentage = max(0, min(100, (xp_in_level / xp_needed_for_level) * 100));
            
            // XP Bar - match health bar height and position (moved right by 30px total)
            var xp_bar_y = player_healthbar_y + font_small_line_spacing; // One line down from HP bar
            draw_healthbar(right_area_x + 120, xp_bar_y, right_area_x + 300, xp_bar_y + 20, xp_percentage, c_black, make_color_rgb(100, 200, 255), make_color_rgb(100, 200, 255), 0, true, true);
            
            // XP Text - positioned like HP text, to the right of the bar (moved right by 30px total)
            draw_set_font(FNT_Small);
            draw_set_color(c_white);
            draw_set_valign(fa_middle);
            draw_text(right_area_x + 310, xp_bar_y + 11, string(floor(xp_in_level)) + "/" + string(xp_needed_for_level));
            draw_set_valign(fa_top);
        }
    }
}