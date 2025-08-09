// Town Wild Pokemon Icon Display
// Shows icons for left and right wild Pokemon on screen edges

// Only draw icons when in town room and have Pokemon
if (room != RM_Town || global.pokemon_ID == 0) {
    exit;
}

// Icon positioning - adjust these values based on your screen size and UI
var left_icon_x = 40;           // Left edge of screen
var right_icon_x = room_width - 80;  // Right edge of screen  
var icon_y = room_height / 2;   // Center vertically
var icon_scale = 1.0;           // Icon scale (1.0 = normal size)

// Background circle for better visibility
var bg_color = c_white;
var bg_alpha = 0.7;
var bg_radius = 25;

// Draw left wild Pokemon icon (Pokemon A)
if (global.wild_pokemon_a_id != 0) {
    var left_pokemon_id = global.wild_pokemon_a_id;
    var left_icon_sprite = global.Dex_Portrait[left_pokemon_id];
    
    // Background circle
    draw_set_color(bg_color);
    draw_set_alpha(bg_alpha);
    draw_circle(left_icon_x, icon_y, bg_radius, false);
    draw_set_alpha(1.0);
    
    // Pokemon icon
    if (sprite_exists(left_icon_sprite)) {
        draw_sprite_ext(left_icon_sprite, 0, left_icon_x, icon_y, 
                       icon_scale, icon_scale, 0, c_white, 1.0);
    }
    
    // Optional: Draw Pokemon name below icon
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_text_outlined(left_icon_x, icon_y + 35, 
                      global.Dex_Names[left_pokemon_id], c_black);
    
    // Direction indicator
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_text_outlined(left_icon_x, icon_y - 35, "← LEFT", c_black);
}

// Draw right wild Pokemon icon (Pokemon B)
if (global.wild_pokemon_b_id != 0) {
    var right_pokemon_id = global.wild_pokemon_b_id;
    var right_icon_sprite = global.Dex_Portrait[right_pokemon_id];
    
    // Background circle
    draw_set_color(bg_color);
    draw_set_alpha(bg_alpha);
    draw_circle(right_icon_x, icon_y, bg_radius, false);
    draw_set_alpha(1.0);
    
    // Pokemon icon
    if (sprite_exists(right_icon_sprite)) {
        draw_sprite_ext(right_icon_sprite, 0, right_icon_x, icon_y, 
                       icon_scale, icon_scale, 0, c_white, 1.0);
    }
    
    // Optional: Draw Pokemon name below icon
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_text_outlined(right_icon_x, icon_y + 35, 
                      global.Dex_Names[right_pokemon_id], c_black);
    
    // Direction indicator
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_text_outlined(right_icon_x, icon_y - 35, "RIGHT →", c_black);
}

// Reset drawing settings
draw_set_color(c_white);
draw_set_alpha(1.0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);