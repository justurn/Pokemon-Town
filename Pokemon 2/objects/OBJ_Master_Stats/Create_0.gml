/// @description Insert description here
// You can write your code in this editor

x = room_width/2
y = room_height/2

instance_create_layer(x,y + 200,"Instances",OBJ_Stat_Pokemon);

if room == RM_Factory
{
	sprite_index = SPR_Shield;	
}
else if room == RM_Burger_Shop
{
	sprite_index = SPR_Heart;	
}
else if room == RM_Cafe
{
	sprite_index = SPR_Speed;	
}
else if room == RM_Power_Station
{
	sprite_index = SPR_Lightning;	
}
else if room == RM_Library
{
	sprite_index = SPR_Magic;	
}

// triggers the end of the stat change.
alarm_set(0, room_speed * 2);