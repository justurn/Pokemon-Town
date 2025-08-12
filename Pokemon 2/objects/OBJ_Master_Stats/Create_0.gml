/// @description Initialize stat room with panel and positioning

// Add side panel for info display
panel_sprite = SPR_Side_Panel;
panel_width = sprite_get_width(panel_sprite);

// Position panel on left side
panel_x = panel_width / 2;
panel_y = sprite_get_height(panel_sprite) / 2;

// Calculate right half positioning for item and Pokemon
var right_half_width = room_width - panel_width;
var right_half_center_x = panel_width + (right_half_width / 2);

// Split right half vertically - item in top, Pokemon in bottom
var item_y = room_height / 4;           // Top segment center
var pokemon_y = 3 * room_height / 4;    // Bottom segment center

// Create Pokemon instance in bottom segment
instance_create_layer(right_half_center_x, pokemon_y, "Instances", OBJ_Stat_Pokemon);

// This object handles all logic and drawing

// Determine sprites and items for this room
var item_sprite = noone;
var stat_sprite = noone;

switch (room) 
{
    case RM_Factory:
        item_sprite = SPR_Gear;
        stat_sprite = SPR_Shield;
        break;
    case RM_Burger_Shop:
        item_sprite = SPR_Burger;
        stat_sprite = SPR_Heart;
        break;
    case RM_Cafe:
        item_sprite = SPR_Coffee;
        stat_sprite = SPR_Speed;
        break;
    case RM_Power_Station:
        item_sprite = SPR_Battery;
        stat_sprite = SPR_Lightning;
        break;
    case RM_Library:
        item_sprite = SPR_Book;
        stat_sprite = SPR_Magic;
        break;
    case RM_Arcade:
        item_sprite = SPR_Coin;
        stat_sprite = SPR_Dice;
        break;
    case RM_Gym:
        item_sprite = SPR_Punch_Card;
        stat_sprite = SPR_Muscles;
        break;
	case RM_Noodle_Shop:
        item_sprite = SPR_Noodles;
        stat_sprite = SPR_XP;
        break;
}

// Create item sprite object in top segment
if (item_sprite != noone) {
    var item_obj = instance_create_layer(right_half_center_x, item_y, "Instances", OBJ_Stat_Item);
    item_obj.sprite_index = item_sprite;
}

// Store stat sprite for panel display
panel_stat_sprite = stat_sprite;
stat_sprite_x = 0;
stat_sprite_y = 0;
stat_sprite_scale = 1;

// Animation variables for stat sprite
stat_sprite_frame = 0;
stat_sprite_speed = 0.2; // Animation speed
stat_sprite_max_frames = 1; // Will be updated based on sprite

// Initialize panel variables with immediate data calculation
var ID = global.pokemon_ID;
var level = global.pokemon_level;

// Calculate base stats for display
var base_health = global.Dex_Health[ID];
var base_speed = global.Dex_Speed[ID];
var base_attack = global.Dex_Attack[ID];
var base_SPattack = global.Dex_SPattack[ID];
var base_SPdefence = global.Dex_SPdefence[ID];
var base_defence = global.Dex_Defence[ID];

base_health = floor(((2 * base_health * level) / 100) + level + 10);
base_speed = floor(((2 * base_speed * level) / 100) + 5);
base_attack = floor(((2 * base_attack * level) / 100) + 5);
base_SPattack = floor(((2 * base_SPattack * level) / 100) + 5);
base_SPdefence = floor(((2 * base_SPdefence * level) / 100) + 5);
base_defence = floor(((2 * base_defence * level) / 100) + 5);

// Set panel data and apply stat changes immediately based on room
switch (room) 
{
    case RM_Factory:
        panel_old_iv = global.iv_defence;
        panel_stat_name = "Defence";
        panel_stat_base = base_defence;
        show_debug_message("FACTORY DEBUG - Room entry: item_held[3] = " + string(global.item_held[3]));
        // OBJ_Building already consumed 1 item, so we need to add it back to get the original count
        panel_items_used = global.item_held[3] + 1; // Gears (add back the consumed item)
        show_debug_message("FACTORY DEBUG - panel_items_used = " + string(panel_items_used));
        show_debug_message("FACTORY DEBUG - Old IV = " + string(global.iv_defence));
        panel_stat_current = global.pokemon_defence;
        show_debug_message("FACTORY DEBUG - Old stat = " + string(panel_stat_current));
        global.iv_defence += panel_items_used;
        SCR_Pokemon_Stats();
        panel_stat_final = global.pokemon_defence;
        show_debug_message("FACTORY DEBUG - New IV = " + string(global.iv_defence));
        show_debug_message("FACTORY DEBUG - New stat = " + string(panel_stat_final));
        show_debug_message("FACTORY DEBUG - IV change = " + string(global.iv_defence - panel_old_iv));
        show_debug_message("FACTORY DEBUG - Stat change = " + string(panel_stat_final - panel_stat_current));
        global.item_held[3] = 0; // Clear ALL remaining items
        break;
    case RM_Burger_Shop:
        panel_old_iv = global.iv_health;
        panel_stat_name = "Health";
        panel_stat_base = base_health;
        panel_items_used = global.item_held[4] + 1; // Burgers (add back the consumed item)
        panel_stat_current = global.pokemon_health_max;
        global.iv_health += panel_items_used;
        SCR_Pokemon_Stats();
        if (global.pokemon_health > 0) {
            global.pokemon_health += panel_items_used;
        }
        panel_stat_final = global.pokemon_health_max;
        global.item_held[4] = 0; // Clear ALL remaining items
        break;
    case RM_Cafe:
        panel_old_iv = global.iv_speed;
        panel_stat_name = "Speed";
        panel_stat_base = base_speed;
        panel_items_used = global.item_held[5] + 1; // Coffees (add back the consumed item)
        panel_stat_current = global.pokemon_speed;
        global.iv_speed += panel_items_used;
        SCR_Pokemon_Stats();
        panel_stat_final = global.pokemon_speed;
        global.item_held[5] = 0; // Clear ALL remaining items
        break;
    case RM_Power_Station:
        panel_old_iv = global.iv_SPattack;
        panel_stat_name = "Special Attack";
        panel_stat_base = base_SPattack;
        panel_items_used = global.item_held[7] + 1; // Batteries (add back the consumed item)
        panel_stat_current = global.pokemon_SPattack;
        global.iv_SPattack += panel_items_used;
        SCR_Pokemon_Stats();
        panel_stat_final = global.pokemon_SPattack;
        global.item_held[7] = 0; // Clear ALL remaining items
        break;
    case RM_Library:
        panel_old_iv = global.iv_SPdefence;
        panel_stat_name = "Special Defence";
        panel_stat_base = base_SPdefence;
        panel_items_used = global.item_held[6] + 1; // Books (add back the consumed item)
        panel_stat_current = global.pokemon_SPdefence;
        global.iv_SPdefence += panel_items_used;
        SCR_Pokemon_Stats();
        panel_stat_final = global.pokemon_SPdefence;
        global.item_held[6] = 0; // Clear ALL remaining items
        break;
    case RM_Arcade:
        panel_old_iv = global.iv_crit;
        panel_stat_name = "Crit";
        panel_stat_base = global.pokemon_start_crit;
        panel_items_used = global.item_held[9] + 1; // Coins (add back the consumed item)
        panel_stat_current = global.pokemon_crit;
        global.iv_crit += panel_items_used;
        global.pokemon_crit = global.pokemon_start_crit + (global.iv_crit / 2);
        panel_stat_final = global.pokemon_crit;
        global.item_held[9] = 0; // Clear ALL remaining items
        break;
    case RM_Gym:
        panel_old_iv = global.iv_attack;
        panel_stat_name = "Attack";
        panel_stat_base = base_attack;
        panel_items_used = global.item_held[8] + 1; // Punch Cards (add back the consumed item)
        panel_stat_current = global.pokemon_attack;
        global.iv_attack += panel_items_used;
        SCR_Pokemon_Stats();
        panel_stat_final = global.pokemon_attack;
        global.item_held[8] = 0; // Clear ALL remaining items
        break;
    case RM_Noodle_Shop:
        panel_old_iv = global.iv_xp;
        panel_stat_name = "XP Rate";
        panel_stat_base = global.pokemon_start_xp_rate;
        panel_items_used = global.item_held[10] + 1; // Noodles (add back the consumed item)
        panel_stat_current = global.pokemon_xp_rate;
        global.iv_xp += panel_items_used;
        global.pokemon_xp_rate = global.pokemon_start_xp_rate + (1 + global.iv_xp / 10);
        panel_stat_final = global.pokemon_xp_rate;
        global.item_held[10] = 0; // Clear ALL remaining items
        break;
    default:
        panel_old_iv = 0;
        panel_stat_name = "";
        panel_stat_base = 0;
        panel_items_used = 0;
        panel_stat_current = 0;
        panel_stat_final = 0;
        break;
}


// Store stat sprite info for drawing in Draw event
if (stat_sprite != noone) {
    // Position stat sprite icon in panel
    var icon_scale = 1.5;
    stat_sprite_x = panel_x; // Center of panel horizontally
    // Position near bottom of panel
    var panel_bottom = panel_y + (sprite_get_height(panel_sprite) / 2);
    stat_sprite_y = panel_bottom - 130; // 130 pixels from bottom of panel
    stat_sprite_scale = icon_scale;
    
    // Set up animation
    stat_sprite_max_frames = sprite_get_number(stat_sprite);
}

// Set transition timer
alarm_set(1, room_speed * 4); // Use Alarm_1 for room transition