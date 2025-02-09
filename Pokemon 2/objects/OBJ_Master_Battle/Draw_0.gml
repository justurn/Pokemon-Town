// In the Draw event of OBJ_Master_Battle:

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


if (battle_state == "WAIT_WILD") 
{
    wild_turn_timer = max(0, wild_turn_timer - 1);
}

if (battle_state == "WAIT_PLAYER") 
{
    player_turn_timer = max(0, player_turn_timer - 1);
}