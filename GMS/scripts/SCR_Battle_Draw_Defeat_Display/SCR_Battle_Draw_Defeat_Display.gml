function SCR_Battle_Draw_Defeat_Display() {
    // Consistent line spacing system for defeat panel (matches victory display)
    var defeat_line_1_y = 30; // First line Y position for proper line 1 start
    var line_num = 0;
    
    // Defeat title - Line 1
    draw_set_font(FNT_Small);
    draw_set_color(c_red);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_text(ui_left_panel_width/2, defeat_line_1_y + (line_num * battle_line_spacing), "DEFEAT!");
    line_num++;
    
    // You lost message - Line 2 (after animation completes)
    if (player_faint_timer >= player_faint_duration + 30) {
        draw_set_color(c_white);
        draw_text(ui_left_panel_width/2, defeat_line_1_y + (line_num * battle_line_spacing), "You lost the battle!");
        line_num++;
    }
    
    // Skip instruction - always at bottom of left panel (matches victory display)
    if (player_faint_timer >= player_faint_duration + 30) {
        draw_set_color(c_white);
        draw_set_font(FNT_Small);
        draw_text(ui_left_panel_width/2, room_height - 35, "Press ENTER to continue");
    }
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}