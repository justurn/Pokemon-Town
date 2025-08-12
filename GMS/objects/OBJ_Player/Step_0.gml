// Step Event
if (global.right)
{
	sprite_index = sprite_move_right;
	if (x + sprite_width < room_width)
	{
    	if (global.shift)
		{	
			x += (global.player_speed * global.sprint_speed);
		}
		else
		{
			x += global.player_speed;
		}
	}
	else
	{
		x = 0 + sprite_width;
		if (instance_exists(OBJ_Town_Pokemon))
		{
			OBJ_Town_Pokemon.x = x
		}
	}
    
}

if (global.left) 
{
    sprite_index = sprite_move_left;
	if (x - sprite_width > 0)
	{
		if (global.shift)
		{	
			x -= (global.player_speed * global.sprint_speed);
		}
		else
		{
			x -= global.player_speed;
		}
	}
	else
	{
		x = room_width - sprite_width;
		if (instance_exists(OBJ_Town_Pokemon))
		{
			OBJ_Town_Pokemon.x = x
		}
	}
}

// No movement (idle state)
if (!global.left && !global.right) 
{
    sprite_index = sprite_idle;
}

global.player_x = x
global.player_y = y


