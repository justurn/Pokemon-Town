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
        
        // Consistent line-based Y positioning system
        var enemy_line_0_y = enemy_base_y - enemy_icon_offset; // Line 0: Name/Level
        var enemy_line_1_y = enemy_line_0_y + font_small_line_spacing; // Line 1: Health bar
        
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
        
        // Type icons - arranged vertically next to Pokemon icon using line system
        var type_icon_x = right_area_x + 80;  // Right of Pokemon icon
        var type_icon_scale = 1;
        var type_icon_y_base = enemy_line_0_y;  // Align with Line 0 positioning
        
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
            // Secondary type: on Line 1 (health bar line) for consistent spacing
            SCR_Draw_Type_Icon(wild_pokemon.secondary_type_id, type_icon_x, enemy_line_1_y, type_icon_scale);
        }
        
        // Pokemon Name and Level on same line with spacing (moved right by 20px)
        draw_set_font(FNT_Small);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        var name_level_text = wild_pokemon.pokemon_name + "     Lv." + string(wild_pokemon.level);
        
        
        draw_text(right_area_x + 120, enemy_line_0_y, name_level_text);  // Line 0: Name/Level
        
        // Health Bar - Line 1
        var hp_percentage = (wild_pokemon.current_hp / wild_pokemon.max_hp) * 100;
        var healthbar_height = 20;
        draw_healthbar(right_area_x + 120, enemy_line_1_y, right_area_x + 300, enemy_line_1_y + healthbar_height, hp_percentage, c_red, c_green, c_green, 0, true, true);
        
        // HP Text - positioned at line using top alignment for consistency
        draw_set_valign(fa_top);
        draw_text(right_area_x + 310, enemy_line_1_y, string(wild_pokemon.current_hp) + "/" + string(wild_pokemon.max_hp));
        
        // Enemy Pokemon Stats Display (F-023)
        var enemy_stat_start_x = right_area_x + 400; // Moved right by 50px
        
        // DEF stat on Line 0 (Name/Level line)
        draw_sprite_ext(SPR_Defence, 0, enemy_stat_start_x, enemy_line_0_y, 1.0, 1.0, 0, c_white, 1);
        draw_set_valign(fa_top);
        draw_text(enemy_stat_start_x + 33, enemy_line_0_y, string(wild_pokemon.defence)); // Text moved right by 65px total
        
        // SP.DEF stat on Line 1 (Health bar line)
        draw_sprite_ext(SPR_SpDefence, 0, enemy_stat_start_x, enemy_line_1_y, 1.0, 1.0, 0, c_white, 1);
        draw_text(enemy_stat_start_x + 33, enemy_line_1_y, string(wild_pokemon.spdefence)); // Text moved right by 65px total
    }
    
    // PLAYER POKEMON INFO (Bottom right area)
    if (instance_exists(player_pokemon)) {
        // Player panel positioning variables
        var player_panel_offset = 10; // Additional offset to move panel down
        var player_icon_offset = 35; // Icon center offset from panel top
        
        var player_panel_top = room_height - ui_pokemon_info_height + player_panel_offset;
        var player_base_y = player_panel_top + player_icon_offset; // Icon center position
        var player_icon_y = player_base_y;
        
        // Consistent line-based Y positioning system
        var player_line_0_y = player_base_y - player_icon_offset; // Line 0: Name/Level
        var player_line_1_y = player_line_0_y + font_small_line_spacing; // Line 1: Health bar
        var player_line_2_y = player_line_0_y + (font_small_line_spacing * 2); // Line 2: XP bar
        
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
        
        // Type icons - arranged vertically next to Pokemon icon using line system
        var type_icon_x = right_area_x + 80;  // Right of Pokemon icon
        var type_icon_scale = 1;
        var type_icon_y_base = player_line_0_y;  // Align with Line 0 positioning
        
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
            // Secondary type: on Line 1 (health bar line) for consistent spacing
            SCR_Draw_Type_Icon(player_pokemon.secondary_type_id, type_icon_x, player_line_1_y, type_icon_scale);
        }
        
        // Pokemon Name and Level on same line with spacing (moved right by 20px)
        draw_set_font(FNT_Small);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        var name_level_text = player_pokemon.pokemon_name + "     Lv." + string(player_pokemon.level);
        draw_text(right_area_x + 120, player_line_0_y, name_level_text);  // Line 0: Name/Level
        
        // Health Bar - Line 1
        var hp_percentage = (player_pokemon.current_hp / player_pokemon.max_hp) * 100;
        var healthbar_height = 20;
        draw_healthbar(right_area_x + 120, player_line_1_y, right_area_x + 300, player_line_1_y + healthbar_height, hp_percentage, c_red, c_green, c_green, 0, true, true);
        
        // HP Text - positioned at line using top alignment for consistency
        draw_set_valign(fa_top);
        draw_text(right_area_x + 310, player_line_1_y, string(player_pokemon.current_hp) + "/" + string(player_pokemon.max_hp));
        
        // Player Pokemon Stats Display (F-023)
        var player_stat_start_x = right_area_x + 400; // Moved right by 50px
        
        // ATK stat on Line 0 (Name/Level line)
        draw_sprite_ext(SPR_Physical, 0, player_stat_start_x, player_line_0_y, 1.0, 1.0, 0, c_white, 1);
        draw_set_valign(fa_top);
        draw_text(player_stat_start_x + 33, player_line_0_y, string(player_pokemon.attack)); // Text moved right by 65px total
        
        // SP.ATK stat on Line 1 (Health bar line)
        draw_sprite_ext(SPR_Special, 0, player_stat_start_x, player_line_1_y, 1.0, 1.0, 0, c_white, 1);
        draw_text(player_stat_start_x + 33, player_line_1_y, string(player_pokemon.spattack)); // Text moved right by 65px total
        
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
            
            // XP Bar - Line 2
            draw_healthbar(right_area_x + 120, player_line_2_y, right_area_x + 300, player_line_2_y + healthbar_height, xp_percentage, c_black, make_color_rgb(100, 200, 255), make_color_rgb(100, 200, 255), 0, true, true);
            
            // XP Text - positioned at line using top alignment for consistency
            draw_set_font(FNT_Small);
            draw_set_color(c_white);
            draw_set_valign(fa_top);
            draw_text(right_area_x + 310, player_line_2_y, string(floor(xp_in_level)) + "/" + string(xp_needed_for_level));
        }
    }
}