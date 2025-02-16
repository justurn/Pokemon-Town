// Step Event
// Check for movement inputs (WASD + Arrow keys)

// Right movement (Arrow key and 'D' key)
var right = false;

if (keyboard_check(vk_right))
{
	right = true
}
if (keyboard_check(ord("D")))
{
	right = true
}
if (gamepad_button_check(0, 15))
{
	right = true
}

if (right)
{
    // Move right
	if (x + sprite_width < room_width)
	{
    x += global.player_speed;
	}
    sprite_index = sprite_move_right;
}

// Left movement (Arrow key and 'A' key)
var left = false;

if (keyboard_check(vk_left))
{
	left = true
}
if (keyboard_check(ord("A")))
{
	left = true
}
if (gamepad_button_check(0, 14))
{
	left = true
}


if (left) 
{
    sprite_index = sprite_move_left;
	// Move left
	if (x - sprite_width > 0)
	{
    x -= global.player_speed;
	}
}

// No movement (idle state)
if (!left && !right) 
{
    sprite_index = sprite_idle;
}

global.player_x = x
global.player_y = y


