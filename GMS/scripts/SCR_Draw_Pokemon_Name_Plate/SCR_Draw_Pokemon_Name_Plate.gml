function SCR_Draw_Pokemon_Name_Plate(pokemon_name, center_x, center_y, y_offset) {
    // Common Pokemon name plate drawing for both lab hatching and battle evolution
    // y_offset: negative value to position above Pokemon (e.g., -150, -200)
    
    if (pokemon_name != "") {
        var text_x = center_x;
        var text_y = center_y + y_offset;
        
        draw_set_font(FNT_Medium);
        
        // Draw name plate background - scale horizontally only, keep natural height
        var text_width = string_width(pokemon_name);
        var padding = 20;
        var bg_width = text_width + padding * 2;
        var plate_height = sprite_get_height(SPR_Name_Plate);
        var bg_x = text_x - bg_width/2;
        var bg_y = text_y - plate_height/2;
        
        draw_sprite_stretched(SPR_Name_Plate, 0, bg_x, bg_y, bg_width, plate_height);
        
        // Draw the Pokemon name centered on the name plate
        draw_set_color(c_white);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text(text_x, bg_y + plate_height/2, pokemon_name);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
    }
}