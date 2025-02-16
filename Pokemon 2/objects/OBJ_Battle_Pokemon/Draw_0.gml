draw_self();  

var health_percent = current_hp / max_hp * 100;  

// Draw the health bar  
draw_healthbar(hb_x1, hb_y1, hb_x2, hb_y2, health_percent, c_black, c_red, c_green, 0, true, true);  

// Draw HP text over the health bar  
var hp_text = string(current_hp) + " / " + string(max_hp);  
draw_set_color(c_white);  
draw_set_font(FNT_Small);
draw_set_halign(fa_center);  
draw_set_valign(fa_middle);  
draw_text((hb_x1 + hb_x2) / 2, (hb_y1 + hb_y2)/2, hp_text);  

// Draw the Pokémon level near its sprite  
var level_text = "Lv. " + string(level);  
draw_text(x, y - 60, level_text);










