function SCR_Battle_Draw_Move_Grid() {
    // F-018: Enhanced Move Grid UI with 30x30 sprites and colorization
    // Draws a 2x2 grid of Pokemon moves with type icons and power ratings
    
    // Grid setup for 30x30 sprites (consistent with battle log)
    var text_area_x = 10;
    var text_area_y = ui_action_section_height + 50;
    var text_area_width = ui_left_panel_width - 20;
    var text_area_height = min(ui_text_section_height - 80, room_height - text_area_y - 10);
    
    var grid_margin = 15;
    var cell_width = (text_area_width - grid_margin * 3) / 2;
    var cell_height = (text_area_height - grid_margin * 4) / 2;
    
    // Get Pokemon's moveset
    var moves = [
        player_pokemon.move_1,  
        player_pokemon.move_2,  
        player_pokemon.move_3,  
        player_pokemon.move_4   
    ];
    
    // Note: Grid background and border now drawn permanently in main draw step
    
    // Draw 2x2 move grid
    for (var i = 0; i < 4; i++) {
        var col = i % 2;
        var row = floor(i / 2);
        var cell_x = text_area_x + grid_margin + (col * (cell_width + grid_margin));
        var cell_y = text_area_y + grid_margin + (row * (cell_height + grid_margin));
        
        // Cell background with selection highlighting
        var cell_color = (selected_move == i) ? 
            make_color_rgb(80, 80, 120) : make_color_rgb(40, 40, 60);
        draw_set_color(cell_color);
        draw_rectangle(cell_x, cell_y, cell_x + cell_width, cell_y + cell_height, false);
        
        // Selection border
        if (selected_move == i) {
            draw_set_color(c_yellow);
            draw_rectangle(cell_x - 2, cell_y - 2, 
                          cell_x + cell_width + 2, cell_y + cell_height + 2, true);
        }
        
        // Cell border
        draw_set_color(c_gray);
        draw_rectangle(cell_x, cell_y, cell_x + cell_width, cell_y + cell_height, true);
        
        var move_id = moves[i];
        // F-018: FIXED - Use new parallel array system with proper bounds checking
        if (move_id > 0 && move_id < array_length(global.move_name) && global.move_name[move_id] != undefined) {
            var move_name = global.move_name[move_id];
            var move_type_id = global.move_type_id[move_id];
            var is_physical = global.move_is_physical[move_id];
            var move_power = global.move_power[move_id];
            var move_accuracy = global.move_accuracy[move_id];
            
            // Line system setup (using consistent spacing from Create step)
            var move_line_spacing = font_small_move_spacing;
            var move_line_1_y = cell_y + 18; // Start from top of cell with padding (moved down 8px)
            var line_num = 0;
            
            // Move name (Line 1 - top)
            draw_set_font(FNT_Small);
            draw_set_color(c_white);
            draw_set_halign(fa_center);
            draw_text(cell_x + cell_width/2, move_line_1_y + (line_num * move_line_spacing), move_name);
            line_num++;
            
            // Power value (Line 2)
            draw_text(cell_x + cell_width/2, move_line_1_y + (line_num * move_line_spacing), 
                     "PWR: " + string(move_power));
            line_num++;
                     
            // Accuracy value (Line 3)
            draw_text(cell_x + cell_width/2, move_line_1_y + (line_num * move_line_spacing), 
                     "ACC: " + string(move_accuracy));
            
            // Icons at bottom line (Line 4/5 area)
            var icon_y = cell_y + cell_height - 40; // Bottom area of cell
            
            // Type icon (30x30, bottom-left, colorized)
            SCR_Draw_Type_Icon(move_type_id, cell_x + 8, icon_y);
            
            // Physical/Special icon (30x30, bottom-right, colorized)  
            SCR_Draw_Category_Icon(is_physical, cell_x + cell_width - 38, icon_y);
                     
        } else {
            // No move assigned - show placeholder
            draw_set_font(FNT_Small);
            draw_set_color(c_gray);
            draw_set_halign(fa_center);
            draw_text(cell_x + cell_width/2, cell_y + cell_height/2, "No Move");
        }
    }
    
    // Instructions
    draw_set_halign(fa_center);
    draw_set_color(c_gray);
    draw_set_font(FNT_Small);
    draw_text(text_area_x + text_area_width/2, 
             text_area_y + text_area_height - 10, 
             "[Shift] Back  |  [Enter] Use Move");
    
    draw_set_halign(fa_left);
}