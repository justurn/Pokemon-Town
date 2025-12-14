/// @description Draw Adventure Path Progress Display (Phase 4)
// Shows completed habitats + current selection only

// ===== DRAW BACKGROUND =====
// Background has top-left origin, draw at (0,0)
if (background_sprite != -1) {
    draw_sprite(background_sprite, 0, 0, 0);
}

// ===== DRAW LEFT PANEL =====
// Panel: 512x574 with centre origin
draw_sprite(SPR_Side_Panel, 0, 256, 287);

// ===== DRAW BIOME TITLE =====
draw_set_font(FNT_Small);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

var biome_name = string_upper(global.Biome_Names[global.selected_biome_index]);
draw_text(256, 20, biome_name + " ADVENTURE");

// ===== DRAW HABITAT DISPLAY =====
draw_set_font(FNT_Small);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var icon_x = 350;
var icon_y = 85;
var icon_spacing = 75;
var current_y = icon_y;

var is_boss_battle = (array_length(global.adventure_remaining_habitats) == 0);
var total_habitats = array_length(global.adventure_completed_habitats) + array_length(global.adventure_remaining_habitats);

// ===== DRAW COMPLETED HABITATS =====
for (var i = 0; i < array_length(global.adventure_completed_habitats); i++) {
    var habitat_index = global.adventure_completed_habitats[i];
    var bg_index = global.Habitat_Backgrounds[habitat_index];
    var icon_sprite = global.background_icon[bg_index];

    // Draw habitat icon
    draw_sprite(icon_sprite, 0, icon_x, current_y);

    // Draw habitat name to the left
    draw_set_color(c_white);
    draw_set_halign(fa_right);
    draw_text(icon_x - 30, current_y, global.Habitat_Names[habitat_index]);
    draw_set_halign(fa_center);

    // Draw checkmark
    draw_sprite(SPR_Check, 0, icon_x + 50, current_y);

    // Arrow to next
    draw_sprite(SPR_Down_Arrow, 0, icon_x, current_y + 37);

    current_y += icon_spacing;
}

// ===== DRAW CURRENT SELECTION (HABITAT OR BOSS) =====
if (is_boss_battle) {
    // Draw boss battle
    var town_bg_index = global.biome_town[global.selected_biome_index];
    var town_icon_sprite = global.background_icon[town_bg_index];

    draw_sprite(town_icon_sprite, 0, icon_x, current_y);

    // Draw "BOSS" label in red
    draw_set_color(c_red);
    draw_set_halign(fa_right);
    draw_text(icon_x - 30, current_y, "BOSS");
    draw_set_halign(fa_center);
    draw_set_color(c_white);

    // Draw animated pointer
    draw_sprite(SPR_Pointer, pointer_frame, icon_x + 50, current_y);
} else {
    // Draw currently selected habitat
    var habitat_index = global.adventure_remaining_habitats[global.adventure_selected_index];
    var bg_index = global.Habitat_Backgrounds[habitat_index];
    var icon_sprite = global.background_icon[bg_index];

    draw_sprite(icon_sprite, 0, icon_x, current_y);

    // Draw habitat name
    draw_set_color(c_white);
    draw_set_halign(fa_right);
    draw_text(icon_x - 30, current_y, global.Habitat_Names[habitat_index]);
    draw_set_halign(fa_center);

    // Draw animated pointer
    draw_sprite(SPR_Pointer, pointer_frame, icon_x + 50, current_y);
}

// ===== DRAW BATTLE COUNTER =====
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
var completed_count = array_length(global.adventure_completed_habitats);
var total_count = total_habitats + 1;  // +1 for boss
var counter_text = "Battle " + string(completed_count + 1) + "/" + string(total_count);
draw_text(256, 510, counter_text);

// ===== DRAW PROMPT =====
draw_set_color(c_yellow);
if (is_boss_battle || array_length(global.adventure_remaining_habitats) == 1) {
    draw_text(256, 535, "[ENTER]");
} else {
    draw_text(256, 535, "[LEFT/RIGHT] [ENTER]");
}

// Reset draw settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);