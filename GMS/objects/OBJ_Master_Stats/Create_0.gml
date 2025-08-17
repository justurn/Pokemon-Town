/// @description Insert description here
// You can write your code in this editor

// Set panel data and apply stat changes immediately based on room
switch (room) 
{
    case RM_Factory:
        panel_stat_sprite = SPR_Shield;       // Show stat sprite in panel
        item_sprite = SPR_Gear;
        panel_old_iv = global.iv_defence;
        panel_stat_name = "Defence";
        panel_items_used = global.item_held[3] + 1; // Gears
        panel_stat_current = global.pokemon_defence;
        global.iv_defence += panel_items_used;
		panel_new_iv = global.iv_defence;
        SCR_Pokemon_Stats();
        panel_stat_final = global.pokemon_defence;
        global.item_held[3] = 0;
        break;
    case RM_Burger_Shop:
	    panel_stat_sprite = SPR_Heart;
        item_sprite = SPR_Burger;
        panel_old_iv = global.iv_health;
        panel_stat_name = "Health";
        panel_items_used = global.item_held[4] + 1; // Burgers
        panel_stat_current = global.pokemon_health_max;
        global.iv_health += panel_items_used;
		panel_new_iv = global.iv_health;
        SCR_Pokemon_Stats();
        if (global.pokemon_health > 0) {
            global.pokemon_health += panel_items_used;
        }
        panel_stat_final = global.pokemon_health_max;
        global.item_held[4] = 0;
        break;
    case RM_Cafe:
		panel_stat_sprite = SPR_Speed;
        item_sprite = SPR_Coffee;
        panel_old_iv = global.iv_speed;
        panel_stat_name = "Speed";
        panel_items_used = global.item_held[5] + 1; // Coffees
        panel_stat_current = global.pokemon_speed;
        global.iv_speed += panel_items_used;
		panel_new_iv = global.iv_speed;
        SCR_Pokemon_Stats();
        panel_stat_final = global.pokemon_speed;
        global.item_held[5] = 0;
        break;
    case RM_Power_Station:
	    panel_stat_sprite = SPR_Lightning;
        item_sprite = SPR_Battery;
        panel_old_iv = global.iv_SPattack;
        panel_stat_name = "Special Attack";
        panel_items_used = global.item_held[7] + 1; // Batteries
        panel_stat_current = global.pokemon_SPattack;
        global.iv_SPattack += panel_items_used;
		panel_new_iv = global.iv_SPattack;
        SCR_Pokemon_Stats();
        panel_stat_final = global.pokemon_SPattack;
        global.item_held[7] = 0;
        break;
    case RM_Library:
		panel_stat_sprite = SPR_Magic;
        item_sprite = SPR_Book;
        panel_old_iv = global.iv_SPdefence;
        panel_stat_name = "Special Defence";
        panel_items_used = global.item_held[6] + 1; // Books
        panel_stat_current = global.pokemon_SPdefence;
        global.iv_SPdefence += panel_items_used;
		panel_new_iv = global.iv_SPdefence;
        SCR_Pokemon_Stats();
        panel_stat_final = global.pokemon_SPdefence;
        global.item_held[6] = 0;
        break;
    case RM_Arcade:
        panel_stat_sprite = SPR_Dice;
        item_sprite = SPR_Coin;
        panel_old_iv = global.iv_crit;
        panel_stat_name = "Crit Rate";
        panel_items_used = global.item_held[9] + 1; // Coins
        panel_stat_current = global.pokemon_crit;
        global.iv_crit += panel_items_used;
		panel_new_iv = global.iv_crit;
        global.pokemon_crit = global.pokemon_start_crit + (global.iv_crit / 2);
        panel_stat_final = global.pokemon_crit;
        global.item_held[9] = 0;
        break;
    case RM_Gym:
        panel_stat_sprite = SPR_Muscles;
        item_sprite = SPR_Punch_Card;
        panel_old_iv = global.iv_attack;
        panel_stat_name = "Attack";
        panel_items_used = global.item_held[8] + 1; // Punch Cards
        panel_stat_current = global.pokemon_attack;
        global.iv_attack += panel_items_used;
		panel_new_iv = global.iv_attack;
        SCR_Pokemon_Stats();
        panel_stat_final = global.pokemon_attack;
        global.item_held[8] = 0;
        break;
    case RM_Noodle_Shop:
        panel_stat_sprite = SPR_XP;
        item_sprite = SPR_Noodles;
        panel_old_iv = global.iv_xp;
        panel_stat_name = "XP Rate";
        panel_items_used = global.item_held[10] + 1; // Noodles
        panel_stat_current = global.pokemon_xp_rate;
        global.iv_xp += panel_items_used;
		panel_new_iv = global.iv_xp;
        global.pokemon_xp_rate = global.pokemon_start_xp_rate + (global.iv_xp / 10);
        panel_stat_final = global.pokemon_xp_rate;
        global.item_held[10] = 0;
        break;
    default:
		panel_stat_sprite = noone;
		item_sprite = noone;
        panel_old_iv = 0;
        panel_stat_name = "";
        panel_items_used = 0;
        panel_stat_current = 0;
        panel_stat_final = 0;
        break;
}

// Add side panel for info display (following OBJ_Master_Lab pattern)
panel_sprite = SPR_Side_Panel;
panel_width = sprite_get_width(panel_sprite);

// Position panel on left side
panel_x = panel_width / 2;
panel_y = sprite_get_height(panel_sprite) / 2;

// Calculate right half positioning
var right_half_width = room_width - panel_width;
var right_half_center_x = panel_width + (right_half_width / 2);

// Split right half vertically - item in top segment, Pokemon in bottom segment
var item_y = room_height / 4;           // Top segment center
var pokemon_y = 3 * room_height / 4;    // Bottom segment center

var scaler = 1.5;
image_yscale = scaler;
image_xscale = scaler;

// Create separate animated sprite object for panel to avoid animation conflicts
var icon_scale = 1.5;
var icon_x = panel_x; // Center of panel horizontally
// Position near bottom of panel (panel goes from top to bottom)
var panel_bottom = panel_y + (sprite_get_height(panel_sprite) / 2);
var icon_y = panel_bottom - 130; // 130 pixels from bottom of panel (moved up 50px)
// Create sprite object on a layer that draws on top (negative depth)
var top_layer = layer_create(-10, "TopUI");

// Create Pokemon instance in right bottom segment
instance_create_layer(right_half_center_x, pokemon_y, "Instances", OBJ_Stat_Pokemon);

// Create Pokemon Item Icon instance in right top segment
pokemon_item_icon = instance_create_layer(right_half_center_x, item_y, top_layer, OBJ_Stat_Item);
if (instance_exists(pokemon_item_icon) && item_sprite != noone) 
{
    pokemon_item_icon.sprite_index = item_sprite;
    pokemon_item_icon.image_xscale = icon_scale;
    pokemon_item_icon.image_yscale = icon_scale;
}

// Create Panel Stat Icon instance in left bottom segment
panel_stat_icon = instance_create_layer(icon_x, icon_y, top_layer, OBJ_Stat_Item);
if (instance_exists(panel_stat_icon) && panel_stat_sprite != noone) 
{
    panel_stat_icon.sprite_index = panel_stat_sprite;
    panel_stat_icon.image_xscale = icon_scale;
    panel_stat_icon.image_yscale = icon_scale;
}


// Set transition timer
alarm_set(1, room_speed * 4); // Use Alarm_1 for room transition