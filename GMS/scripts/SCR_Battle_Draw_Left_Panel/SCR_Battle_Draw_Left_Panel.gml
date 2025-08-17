function SCR_Battle_Draw_Left_Panel() {
    // Draw SPR_Side_Panel background
    draw_sprite(SPR_Side_Panel, 0, ui_left_panel_width/2, room_height/2);
    
    // Set up text properties
    draw_set_font(FNT_Small);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // Victory Display Section (replaces action menu during victory)
    if (battle_state == "XP_DISPLAY" || battle_state == "LEVEL_UP" || battle_state == "EVOLUTION") {
        // Action section background (consistent with battle text panel)
        var action_area_x = 10;
        var action_area_y = 20;
        var action_area_width = ui_left_panel_width - 20;
        var action_area_height = ui_action_section_height - 20;
        
        // Note: Action area background and border now drawn permanently in main draw step
        
        // Victory title
        draw_set_font(FNT_Medium);
        draw_set_color(c_yellow);
        draw_set_halign(fa_center);
        draw_text(ui_left_panel_width/2, 60, "VICTORY!");
        
        // Consistent line spacing system for victory panel
        var victory_line_1_y = 100; // First line Y position
        var line_num = 0;
        
        // XP gained display 
        draw_set_font(FNT_Small);
        draw_set_color(c_lime);
        draw_text(ui_left_panel_width/2, victory_line_1_y + (line_num * battle_line_spacing), "+" + string(victory_data.xp_gained) + " Experience Points");
        line_num++;
        
        // Level up celebration
        if (battle_state == "LEVEL_UP") {
            draw_set_alpha(1);
            draw_set_color(c_white);
            draw_set_font(FNT_Small);
            
            // Removed "LEVEL UP!" line - redundant with sprite animation
            draw_text(ui_left_panel_width/2, victory_line_1_y + (line_num * battle_line_spacing), "Level " + string(victory_data.level_before) + " -> " + string(victory_data.level_after));
            line_num++;
            draw_text(ui_left_panel_width/2, victory_line_1_y + (line_num * battle_line_spacing), "Stats increased!");
            line_num++;
            draw_text(ui_left_panel_width/2, victory_line_1_y + (line_num * battle_line_spacing), "HP restored!");
        }
        
        // Evolution celebration - removed from top display, now shows in battle log
        
        // Skip instruction - always at bottom of left panel
        draw_set_color(c_white);
        draw_set_font(FNT_Small);
        draw_text(ui_left_panel_width/2, room_height - 35, "Press ENTER to continue");
        
        draw_set_halign(fa_left);
    } else {
        // ACTION SECTION (Top 200px) - Normal battle actions
        var action_y_start = 40;
        var action_spacing = 30;
        
        draw_set_color(c_yellow);
        draw_text(ui_left_panel_width/2, action_y_start, "BATTLE ACTIONS");
        
        // Draw action menu
        for (var i = 0; i < array_length(action_menu); i++) {
            var y_pos = action_y_start + 35 + (i * action_spacing);
            
            // Highlight selected action
            if (battle_ui_state == "ACTION_SELECT" && selected_action == i) {
                draw_set_color(c_lime);
                draw_text(ui_left_panel_width/2 - 90, y_pos, ">");  // Moved 50px further left
            } else {
                draw_set_color(c_white);
            }
            
            draw_text(ui_left_panel_width/2, y_pos, action_menu[i]);
        }
        
        // Attack type sub-menu with visual feedback
        if (battle_ui_state == "ATTACK_TYPE_SELECT") {
            var sub_y = action_y_start + 140;
            
            // Attack type selection with adjusted spacing
            for (var j = 0; j < array_length(attack_type_menu); j++) {
                var x_pos;
                if (j == 0) {
                    // Physical - stay at current position
                    x_pos = (ui_left_panel_width/2) - 100;
                } else {
                    // Special - move 100px more to the right (was +50, now +150)
                    x_pos = (ui_left_panel_width/2) + 150;
                }
                
                // Color coding based on effectiveness
                var text_color = c_white;
                var stat_value = (j == 0) ? player_pokemon.attack : player_pokemon.spattack;
                var is_best = (j == player_best_attack_type);
                
                // Attack type name with color coding and star in string
                var attack_text = attack_type_menu[j];
                if (is_best) {
                    text_color = c_lime; // Best attack type in green
                    attack_text += " *"; // Add star to string
                } else {
                    text_color = c_ltgray; // Weaker attack type in light gray
                }
                draw_set_color(text_color);
                draw_text(x_pos, sub_y, attack_text);
                
                // Selection cursor - moved 50px more left from text
                if (selected_attack_type == j) {
                    draw_set_color(c_yellow);
                    draw_text(x_pos - 90, sub_y, ">");  // Was -40, now -90 (50px more left)
                }
                
                // Show stat value underneath - aligned with text
                draw_set_color(c_gray);
                draw_text(x_pos, sub_y + 30, string(stat_value));
            }
        }
    }
    
    // F-018: MOVE SELECTION GRID (replaces battle text when selecting moves)
    if (battle_ui_state == "MOVE_SELECT") {
        SCR_Battle_Draw_Move_Grid();
    } else {
        // BATTLE TEXT SECTION (Bottom 374px)
        SCR_Battle_Draw_Text_Log();
    }
}