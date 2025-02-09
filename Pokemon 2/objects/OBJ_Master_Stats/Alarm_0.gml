var ID = global.pokemon_ID
var name = global.Dex_Names[ID];
var base_health = global.Dex_Health[ID];
var base_speed = global.Dex_Speed[ID];
var base_attack = global.Dex_Attack[ID];
var base_SPattack = global.Dex_SPattack[ID];
var base_SPdefence = global.Dex_SPdefence[ID];
var base_defence = global.Dex_Defence[ID];

if (room == RM_Factory)
{
	var index = 3; // item ID for Gears
	var old_iv = global.iv_defence
	global.iv_defence += global.item_held[index] + 1 // 1 item was consumed on entry
	global.pokemon_defence = base_defence + global.iv_defence
	global.item_held[index] = 0;
	show_debug_message("Defence IV Increased from: " + string(old_iv) + " to: " + string(global.iv_defence))
	show_debug_message(string(name) + " Defence is: " + string(global.pokemon_defence) + " Base Defence is: " + string(base_defence))
	room_goto(RM_Town)
}
else if (room == RM_Burger_Shop)
{
	var index = 4; // item ID for Burgers
	var old_iv = global.iv_health
	global.iv_health += global.item_held[index] + 1 // 1 item was consumed on entry
	global.pokemon_health_max = base_health + global.iv_health
	global.item_held[index] = 0;
	show_debug_message("Health IV Increased from: " + string(old_iv) + " to: " + string(global.iv_health))
	show_debug_message(string(name) + " Health is: " + string(global.pokemon_health_max) + " Base Health is: " + string(base_health))
	room_goto(RM_Town)
}
else if (room == RM_Cafe)
{
	var index = 5; // item ID for Coffees
	var old_iv = global.iv_speed
	global.iv_speed += global.item_held[index] + 1 // 1 item was consumed on entry
	global.pokemon_speed = base_speed + global.iv_speed
	global.item_held[index] = 0;
	show_debug_message("Speed IV Increased from: " + string(old_iv) + " to: " + string(global.iv_speed))
	show_debug_message(string(name) + " Speed is: " + string(global.pokemon_speed) + " Base Speed is: " + string(base_speed))
	room_goto(RM_Town)
}
else if (room == RM_Library)
{
	var index = 6; // item ID for Books
	var old_iv = global.iv_SPdefence
	global.iv_SPdefence += global.item_held[index] + 1 // 1 item was consumed on entry
	global.pokemon_SPdefence = base_SPdefence + global.iv_SPdefence
	global.item_held[index] = 0;
	show_debug_message("Special Defence IV Increased from: " + string(old_iv) + " to: " + string(global.iv_SPdefence))
	show_debug_message(string(name) + " Special Defence is: " + string(global.pokemon_SPdefence) + " Base Special Defence is: " + string(base_SPdefence))
	room_goto(RM_Town)
}
else if (room == RM_Power_Station)
{
	var index = 7; // item ID for Batteries
	var old_iv = global.iv_SPattack
	global.iv_SPattack += global.item_held[index] + 1 // 1 item was consumed on entry
	global.pokemon_SPattack = base_SPattack + global.iv_SPattack
	global.item_held[index] = 0;
	show_debug_message("Special Attack IV Increased from: " + string(old_iv) + " to: " + string(global.iv_SPattack))
	show_debug_message(string(name) + " Special Attack is: " + string(global.pokemon_SPattack) + " Base Special Attack is: " + string(base_SPattack))
	room_goto(RM_Town)
}







