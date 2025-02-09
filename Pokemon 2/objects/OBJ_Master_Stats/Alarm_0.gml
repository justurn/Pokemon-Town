var ID = global.pokemon_ID;
var name = global.Dex_Names[ID];
var base_health = global.Dex_Health[ID];
var base_speed = global.Dex_Speed[ID];
var base_attack = global.Dex_Attack[ID];
var base_SPattack = global.Dex_SPattack[ID];
var base_SPdefence = global.Dex_SPdefence[ID];
var base_defence = global.Dex_Defence[ID];
var base_crit = global.pokemon_start_crit;

var index, old_iv, stat_name, stat_base, stat_iv, stat_final;

switch (room) 
{
    case RM_Factory:
        index = 3; // item ID for Gears
        old_iv = global.iv_defence;
        global.iv_defence += global.item_held[index] + 1;
        global.pokemon_defence = base_defence + global.iv_defence;
        stat_name = "Defence";
        stat_base = base_defence;
        stat_iv = global.iv_defence;
        stat_final = global.pokemon_defence;
        break;

    case RM_Burger_Shop:
        index = 4; // item ID for Burgers
        old_iv = global.iv_health;
        global.iv_health += global.item_held[index] + 1;
        global.pokemon_health_max = base_health + global.iv_health;
        stat_name = "Health";
        stat_base = base_health;
        stat_iv = global.iv_health;
        stat_final = global.pokemon_health_max;
        break;

    case RM_Cafe:
        index = 5; // item ID for Coffees
        old_iv = global.iv_speed;
        global.iv_speed += global.item_held[index] + 1;
        global.pokemon_speed = base_speed + global.iv_speed;
        stat_name = "Speed";
        stat_base = base_speed;
        stat_iv = global.iv_speed;
        stat_final = global.pokemon_speed;
        break;

    case RM_Library:
        index = 6; // item ID for Books
        old_iv = global.iv_SPdefence;
        global.iv_SPdefence += global.item_held[index] + 1;
        global.pokemon_SPdefence = base_SPdefence + global.iv_SPdefence;
        stat_name = "Special Defence";
        stat_base = base_SPdefence;
        stat_iv = global.iv_SPdefence;
        stat_final = global.pokemon_SPdefence;
        break;

    case RM_Power_Station:
        index = 7; // item ID for Batteries
        old_iv = global.iv_SPattack;
        global.iv_SPattack += global.item_held[index] + 1;
        global.pokemon_SPattack = base_SPattack + global.iv_SPattack;
        stat_name = "Special Attack";
        stat_base = base_SPattack;
        stat_iv = global.iv_SPattack;
        stat_final = global.pokemon_SPattack;
        break;
		
	case RM_Gym:
        index = 8; // item ID for Punch Cards
        old_iv = global.iv_attack;
        global.iv_attack += global.item_held[index] + 1;
        global.pokemon_attack = base_attack + global.iv_attack;
        stat_name = "Attack";
        stat_base = base_attack;
        stat_iv = global.iv_attack;
        stat_final = global.pokemon_attack;
        break;
		
	case RM_Arcade:
        index = 9; // item ID for Coins
        old_iv = global.iv_crit;
        global.iv_crit += global.item_held[index] + 1;
        global.pokemon_crit = base_crit + global.iv_crit;
        stat_name = "Crit";
        stat_base = base_crit;
        stat_iv = global.iv_crit;
        stat_final = global.pokemon_crit;
        break;

    default:
        index = -1;
        break;
}

if (index != -1) {
    global.item_held[index] = 0;
    show_debug_message(stat_name + " IV Increased from: " + string(old_iv) + " to: " + string(stat_iv));
    show_debug_message(string(name) + " " + stat_name + " is: " + string(stat_final) + " Base " + stat_name + " is: " + string(stat_base));
    room_goto(RM_Town);
}
