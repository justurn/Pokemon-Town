/// @description Draw side panel with stat comparison info
// This object draws the panel and stat sprite directly

// Draw the side panel sprite
draw_sprite(panel_sprite, 0, panel_x, panel_y);

// Draw panel content
draw_set_color(c_white);
draw_set_font(FNT_Small);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Panel content positioning (relative to panel sprite)
var sprite_left = panel_x - sprite_get_width(panel_sprite) / 2;
var sprite_top = panel_y - sprite_get_height(panel_sprite) / 2;
var panel_text_x = sprite_left + 20; // Offset from left edge of panel
var panel_text_y = sprite_top + 15; // Top margin

// Draw title (centered, larger font)
draw_set_font(FNT_Medium);
draw_set_halign(fa_center);
draw_text(panel_x, panel_text_y, panel_stat_name);

// Reset to small font and left alignment for comparison data
draw_set_font(FNT_Small);
draw_set_halign(fa_left);

// Draw comparison data with increased spacing to fill empty space
var data_start_y = panel_text_y + 100; // More space below title
var line_height = 50; // Increased line spacing to fill empty space

if (panel_stat_name != "")
{
    // Before -> After comparison
    var before_after_text = "Before -> After";
    draw_text(panel_text_x, data_start_y, before_after_text);
    
    // Add extra gap between sections
    data_start_y += line_height + 20;
    
    // IV comparison
    var iv_text = "IV: " + string(panel_old_iv) + " -> " + string(panel_old_iv + panel_items_used) + " (+" + string(panel_items_used) + ")";
    draw_text(panel_text_x, data_start_y, iv_text);
    
    // Use STATIC values stored at creation - no dynamic calculation  
    var final_text = "Stat: " + string(panel_stat_current) + " -> " + string(panel_stat_final);
    draw_text(panel_text_x, data_start_y + line_height, final_text);
    
    // Add extra gap before cost
    var cost_y = data_start_y + line_height * 2 + 25;
    
    // Items used
    var items_text = "Cost: " + string(panel_items_used) + " items";
    draw_text(panel_text_x, cost_y, items_text);
    
    // Draw animated stat sprite in panel
    if (panel_stat_sprite != noone) {
        draw_sprite_ext(panel_stat_sprite, 0, stat_sprite_x, stat_sprite_y, 
                       stat_sprite_scale, stat_sprite_scale, 0, c_white, 1);
    }
}














