// Variables
var player_x = OBJ_Player.x;   // Get the player's X position
pokemon_x = x;                 // Pokémon's X position

// Check the horizontal distance to the player
if (abs(pokemon_x - player_x) > follow_distance) 
{
    // Move toward the player
    if (pokemon_x < player_x) 
	{
		if (global.shift)
		{	
			x += (global.pokemon_move_speed * global.sprint_speed);
		}
		else
		{
			x += global.pokemon_move_speed;
		}
        if (last_direction == -1) 
		{
            image_xscale = -scale_factor;  // Face right
            last_direction = 1;
        }
    } 
	else if (pokemon_x > player_x) 
	{
		if (global.shift)
		{	
			x -= (global.pokemon_move_speed * global.sprint_speed);
		}
		else
		{
			x -= global.pokemon_move_speed;
		}
        if (last_direction == 1) 
		{
            image_xscale = scale_factor;  // Face left
            last_direction = -1;
        }
    }

    // Add a bounce effect
    if (count >= countmax) 
	{
        y += bounce; // Move vertically by bounce amount
        count = 0;

        // Alternate bounce direction based on the cycle
        switch (cycle)
		{
            case 0:
            case 2:
                bounce = -bounce;
                break;
        }

        // Update the cycle (loop through 0 to 3)
        cycle = (cycle + 1) mod 4;
    }

    count += 1; // Increment the bounce counter
} 
else 
{
    // If close to the player, align vertically with the player
    y = pokemon_y;
}

global.pokemon_x = x;

// Level up logic now handled in battle victory sequence

