function SCR_Battle_Draw_Action_Menu() {
    // ACTION SECTION (Top 200px) - Normal battle actions
    var action_y_start = 40;
    var action_spacing = 30;
    
    draw_set_font(FNT_Small);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
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
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}