// Step Event
// Check for movement inputs (WASD + Arrow keys)
var right = false;
var left = false;

// Gamepad joystick input (Left stick movement)
var axis_x = gamepad_axis_value(0, gp_axislh); // Left Stick X-Axis
var axis_min = 0.15;
if (axis_x < -axis_min)
{ // Negative value means pushing left
    left = true;
}
if (axis_x > axis_min)
{ // Adjust threshold to ignore small joystick drifts
    right = true;
}


// Right movement
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


