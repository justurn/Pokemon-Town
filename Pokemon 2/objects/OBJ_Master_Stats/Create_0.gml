/// @description Insert description here
// You can write your code in this editor

x = room_width/2
pokemon_y = room_height/2 + 150
y = pokemon_y - 200


var scaler = 1.5
image_yscale = scaler;
image_xscale = scaler;

instance_create_layer(x,pokemon_y,"Instances",OBJ_Stat_Pokemon);

switch (room) 
{
    case RM_Factory:
        sprite_index = SPR_Shield;
        break;
    case RM_Burger_Shop:
        sprite_index = SPR_Heart;
        break;
    case RM_Cafe:
        sprite_index = SPR_Speed;
        break;
    case RM_Power_Station:
        sprite_index = SPR_Lightning;
        break;
    case RM_Library:
        sprite_index = SPR_Magic;
        break;
    case RM_Arcade:
        sprite_index = SPR_Dice;
        break;
    case RM_Gym:
        sprite_index = SPR_Muscles;
        break;
}


// triggers the end of the stat change.
alarm_set(0, room_speed * 2);