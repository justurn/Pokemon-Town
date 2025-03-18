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
}

// No movement (idle state)
if (!global.left && !global.right) 
{
    sprite_index = sprite_idle;
}

global.player_x = x
global.player_y = y


