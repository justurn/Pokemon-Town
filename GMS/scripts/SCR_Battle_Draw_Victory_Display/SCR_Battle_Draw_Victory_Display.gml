function SCR_Battle_Draw_Victory_Display() {
    // Consistent line spacing system for victory panel
    var victory_line_1_y = 30; // First line Y position for proper line 1 start
    var line_num = 0;
    
    // Victory title - Line 1
    draw_set_font(FNT_Small);
    draw_set_color(c_yellow);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_text(ui_left_panel_width/2, victory_line_1_y + (line_num * battle_line_spacing), "VICTORY!");
    line_num++;
    
    // XP gained display for both XP_DISPLAY and LEVEL_UP states
    if (battle_state == "XP_DISPLAY" || battle_state == "LEVEL_UP") {
        draw_set_alpha(1);
        draw_set_color(c_white); // XP GAINED color is white
        draw_set_font(FNT_Small);
        
        // XP gained display - Line 2
        draw_text(ui_left_panel_width/2, victory_line_1_y + (line_num * battle_line_spacing), "XP GAINED: +" + string(victory_data.xp_gained));
        line_num++;
    }
    
    // Level up celebration details (only for LEVEL_UP state)
    if (battle_state == "LEVEL_UP") {
        draw_set_color(c_white);
        // Level progression - Line 3
        draw_text(ui_left_panel_width/2, victory_line_1_y + (line_num * battle_line_spacing), "Level " + string(victory_data.level_before) + " -> " + string(victory_data.level_after));
        line_num++;
        // Stats increased - Line 4
        draw_text(ui_left_panel_width/2, victory_line_1_y + (line_num * battle_line_spacing), "Stats increased!");
        line_num++;
        // HP restored - Line 5
        draw_text(ui_left_panel_width/2, victory_line_1_y + (line_num * battle_line_spacing), "HP restored!");
    }
    
    // Skip instruction - always at bottom of left panel
    draw_set_color(c_white);
    draw_set_font(FNT_Small);
    draw_text(ui_left_panel_width/2, room_height - 35, "Press ENTER to continue");
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}