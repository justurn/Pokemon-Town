// Move the projectile toward the target
if (just_spawned)
{
	//set colour
	colour = global.type_colors[attack_type];

	// Calculate direction towards target
	direction = point_direction(x, y, target_x, target_y);
	
	// Set movement speed
	speed = 18; // Adjust as needed
	
	just_spawned = false;
	
	if kind = "physical"
	{
		sprite_index = SPR_Attack;
	}
	else
	{
		sprite_index = SPR_Special_Attack;
	}
}

var dist_to_target = point_distance(x, y, target_x, target_y);

if (dist_to_target < speed) 
{ 
    // If close enough, apply effect and destroy
    with (target_pokemon) 
	{
        image_blend = c_red; // Flash red
        alarm[1] = 10; // Set timer to revert color after 10 frames
    }
	
	target_pokemon.current_hp -= damage;
	
	if target_pokemon.current_hp < 0
	{
		target_pokemon.current_hp = 0;
	}
	
    instance_destroy(); // Remove projectile
} 
else 
{
    // Move towards target
    motion_set(direction, speed);
}







