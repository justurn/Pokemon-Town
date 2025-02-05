// Step Event
// Check for movement inputs (WASD + Arrow keys)

// Right movement (Arrow key and 'D' key)
if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
    // Move right
	if (x + sprite_width < room_width)
	{
    x += global.player_speed;
	}
    sprite_index = sprite_move_right;
}
// Left movement (Arrow key and 'A' key)
else if (keyboard_check(vk_left) || keyboard_check(ord("A"))) 
{
    sprite_index = sprite_move_left;
	// Move left
	if (x - sprite_width > 0)
	{
    x -= global.player_speed;
	}
}
// No movement (idle state)
else {
    sprite_index = sprite_idle;
}

global.player_x = x
global.player_y = y


