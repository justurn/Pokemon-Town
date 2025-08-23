function SCR_Battle_Draw_Panel_Outlines() {
    // Outline thickness variable
    var outline_thickness = 2;

    // Permanent Battle Text Log Outline Area
    var text_area_x = 10;
    var text_area_y = ui_action_section_height + 50;
    var text_area_width = ui_left_panel_width - 20;
    var text_area_height = min(ui_text_section_height - 50, room_height - text_area_y - 10);

    // Draw text area with dark grey fill and thick grey outline
    draw_set_color(c_dkgray);
    draw_rectangle(text_area_x, text_area_y, text_area_x + text_area_width, text_area_y + text_area_height, false);
    draw_set_color(c_gray);
    for (var i = 0; i < outline_thickness; i++) {
        draw_rectangle(text_area_x - i, text_area_y - i, text_area_x + text_area_width + i, text_area_y + text_area_height + i, true);
    }

    // Permanent Battle Action Menu Outline Area
    var action_area_x = 10;
    var action_area_y = 20;
    var action_area_width = ui_left_panel_width - 20;
    var action_area_height = ui_action_section_height - 20;

    // Draw action area with dark grey fill and thick grey outline
    draw_set_color(c_dkgray);
    draw_rectangle(action_area_x, action_area_y, action_area_x + action_area_width, action_area_y + action_area_height, false);
    draw_set_color(c_gray);
    for (var i = 0; i < outline_thickness; i++) {
        draw_rectangle(action_area_x - i, action_area_y - i, action_area_x + action_area_width + i, action_area_y + action_area_height + i, true);
    }
}