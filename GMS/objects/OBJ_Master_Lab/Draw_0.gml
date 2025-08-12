// Draw the side panel sprite
draw_self();

// Draw panel content if in egg selection mode
if (lab_mode == "egg_selection")
{
    // Set text properties
    draw_set_color(c_white);
    draw_set_font(FNT_Small);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    // Panel content positioning (relative to panel sprite)
    // Since sprite origin is centered, calculate text position from top-left of sprite
    var sprite_left = x - sprite_get_width(SPR_Side_Panel) / 2;
    var sprite_top = y - sprite_get_height(SPR_Side_Panel) / 2;
    var panel_text_x = sprite_left + 20; // Offset from left edge of panel
    var panel_text_y = sprite_top + 15; // Reduced from 40 to 15 (25px shift up)
    var line_height = 80; // 60px for 1.5x icons + 20px padding
    
    if (panel_prob_data != undefined && display_pokemon_count > 0 && array_length(global.egg_types_found) > 0)
    {
        // Draw title showing current egg type (larger font, centered)
        // Ensure selected_egg is within bounds
        if (global.selected_egg >= array_length(global.egg_types_found)) {
            global.selected_egg = 0;
        }
        var egg_type = global.egg_types_found[global.selected_egg];
        var type_string = global.types[egg_type];
        
        // Use larger font and center alignment for title
        draw_set_font(FNT_Medium);
        draw_set_halign(fa_center);
        var panel_center_x = x; // Panel center X
        draw_text(panel_center_x, panel_text_y, type_string + " Egg");
        
        // Reset to small font and left alignment for Pokemon list
        draw_set_font(FNT_Small);
        draw_set_halign(fa_left);
        
        // Draw top 5 Pokemon with chance indicators (removed "Possible Pokemon:" header)
        for (var i = 0; i < display_pokemon_count; i++)
        {
            var pokemon_id = panel_prob_data.pokemon_ids[i];
            var pokemon_name = panel_prob_data.pokemon_names[i];
            var pokemon_percentage = panel_prob_data.pokemon_percentages[i];
            
            var current_y = panel_text_y + line_height * (1 + i);
            
            // Draw Pokemon icon at 1.5x size (60x60 instead of 40x40)
            var icon_sprite = global.Dex_Portrait[pokemon_id];
            if (icon_sprite != undefined && sprite_exists(icon_sprite))
            {
                // Center icon vertically with text line
                var icon_size = 40; // Original size
                var icon_scale = 1.5; // 1.5x size
                var scaled_icon_size = icon_size * icon_scale;
                var icon_y_offset = (line_height - scaled_icon_size) / 2;
                draw_sprite_ext(icon_sprite, 0, panel_text_x + scaled_icon_size/2, current_y + icon_y_offset + scaled_icon_size/2, icon_scale, icon_scale, 0, c_white, 1);
            }
            
            // Draw Pokemon name and percentage with dash separator (offset to right of icon)
            var display_text = pokemon_name + " - " + string(pokemon_percentage) + "%";
            draw_text(panel_text_x + 70, current_y + 20, display_text); // 70px offset for 1.5x icon + padding
        }
        
        // Show "Others..." if there are more than 5 Pokemon
        if (panel_prob_data.pokemon_count > 5)
        {
            var others_y = panel_text_y + line_height * (1 + display_pokemon_count);
            
            // Draw question mark icon
            if (sprite_exists(ICO_0000)) {
                var icon_scale = 1.5;
                var scaled_icon_size = 40 * icon_scale;
                var icon_y_offset = (line_height - scaled_icon_size) / 2;
                draw_sprite_ext(ICO_0000, 0, panel_text_x + scaled_icon_size/2, others_y + icon_y_offset + scaled_icon_size/2, icon_scale, icon_scale, 0, c_white, 1);
            }
            
            // Draw "Others..." text
            var remaining_count = panel_prob_data.pokemon_count - 5;
            var others_text = "Others... (" + string(remaining_count) + " more)";
            draw_text(panel_text_x + 70, others_y + 20, others_text);
        }
    }
    else
    {
        // No eggs available - show message (centered, larger font)
        draw_set_font(FNT_Medium);
        draw_set_halign(fa_center);
        var panel_center_x = x; // Panel center X
        draw_text(panel_center_x, panel_text_y, "Lab");
        draw_text(panel_center_x, panel_text_y + 40, "No eggs available");
    }
}
