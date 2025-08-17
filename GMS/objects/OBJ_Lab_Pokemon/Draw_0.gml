draw_set_font(FNT_Medium)

draw_set_halign(fa_center);

// Draw menu button background for Pokemon name if name exists
if (pokemon_name != "") {
    var text_x = x;
    var text_y = y - 150;
    
    var text_width = string_width(pokemon_name);
    var text_height = string_height(pokemon_name);
    
    // Draw name plate background - scale horizontally only, keep natural height
    var padding = 20;
    var bg_width = text_width + padding * 2;
    var plate_height = sprite_get_height(SPR_Name_Plate);
    var bg_x = text_x - bg_width/2;
    var bg_y = text_y - plate_height/2;
    
    draw_sprite_stretched(SPR_Name_Plate, 0, bg_x, bg_y, bg_width, plate_height);
    
    // Draw the Pokemon name centered on the name plate
    draw_set_color(c_white);
    draw_set_valign(fa_middle);  // Center text vertically within the plate
    draw_text(text_x, bg_y + plate_height/2, pokemon_name);
}

draw_self();








