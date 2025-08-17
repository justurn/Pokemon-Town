// Battle Background
draw_self();

// Current timer bars (keep existing)
var bar_width = room_width;
var bar_height = 30;
var bar_x = 0;
var bar_top_y = 0;
var bar_bottom_y = room_height;
var player_progress = player_turn_timer / turn_max;
var wild_progress = wild_turn_timer / turn_max;

// Draw Wild Pokémon Timer Bar (Top)
draw_healthbar(bar_x, bar_top_y, bar_x + bar_width, bar_top_y + bar_height, wild_progress * 100, c_red, c_black, c_black, 0, true, true);

// Draw Player Timer Bar (Bottom)
draw_healthbar(bar_x, bar_bottom_y - bar_height, bar_x + bar_width, bar_bottom_y, player_progress * 100, c_blue, c_black, c_black, 0, true, true);

// Permanent Battle Text Log Outline Area
var text_area_x = 10;
var text_area_y = ui_action_section_height + 50;
var text_area_width = ui_left_panel_width - 20;
var text_area_height = min(ui_text_section_height - 50, room_height - text_area_y - 10);

// Draw text area background
draw_set_color(c_black);
draw_set_alpha(0.2);
draw_rectangle(text_area_x, text_area_y, text_area_x + text_area_width, text_area_y + text_area_height, false);
draw_set_alpha(1);

// Draw text area border
draw_set_color(c_gray);
draw_rectangle(text_area_x, text_area_y, text_area_x + text_area_width, text_area_y + text_area_height, true);

// Permanent Battle Action Menu Outline Area (matching actual action area)
var action_area_x = 10;
var action_area_y = 20;
var action_area_width = ui_left_panel_width - 20;
var action_area_height = ui_action_section_height - 20;

// Draw action area background
draw_set_color(c_black);
draw_set_alpha(0.2);
draw_rectangle(action_area_x, action_area_y, action_area_x + action_area_width, action_area_y + action_area_height, false);
draw_set_alpha(1);

// Draw action area border
draw_set_color(c_gray);
draw_rectangle(action_area_x, action_area_y, action_area_x + action_area_width, action_area_y + action_area_height, true);

// NEW: Left Panel UI (drawn after outlines so text appears on top)
SCR_Battle_Draw_Left_Panel();

// NEW: Right Panel Pokemon Info
SCR_Battle_Draw_Pokemon_Info();

// Level Up Sprite (above center-stage Pokemon)
if (battle_state == "LEVEL_UP") {
    var sprite_frame = floor(level_up_timer / 2) % sprite_get_number(SPR_Level_Up);
    draw_sprite_ext(SPR_Level_Up, sprite_frame, pokemon_center_x, pokemon_center_y - 120, 1, 1, 0, c_white, 1);
}

// Evolution Black Background
if (battle_state == "EVOLUTION") {
    draw_set_color(c_black);
    draw_set_alpha(evolution_background_alpha);
    draw_rectangle(ui_left_panel_width, 0, room_width, room_height, false);
    draw_set_alpha(1);
    
    // Pokemon evolution scaling and flashing (following OBJ_Evolve_Pokemon logic)
    with (OBJ_Battle_Pokemon_Tame) {
        image_xscale = other.evolution_scale;
        image_yscale = other.evolution_scale;
        image_alpha = other.evolution_alpha;
        
        // Add flashing effect (from OBJ_Evolve_Pokemon)
        var flash_interval = 5;
        var flash_cycle = (other.evolution_flash_timer div flash_interval) % 2;
        var flashing = (flash_cycle == 1);
        
        if (flashing) {
            image_alpha *= 0.3; // Make Pokemon very transparent when flashing
        }
    }
}

// Timer logic (existing)
if (battle_state == "WAIT_WILD") {
    wild_turn_timer = max(0, wild_turn_timer - 1);
}

if (battle_state == "WAIT_PLAYER") {
    player_turn_timer = max(0, player_turn_timer - 1);
}