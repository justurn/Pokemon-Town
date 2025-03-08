function SCR_Attack(attacker, defender)
{
    var level = attacker.level;
    var base_power = 40; // Basic attack power
	var damage = 1;
	
	// Check if attack is a critical hit
	var crit_roll = irandom(100)
	var is_crit = (crit_roll < attacker.crit);
	
	if attacker.attack > attacker.spattack
	{
		// Check whether attack or special attack is highest and use that for attacking. The defender will use the corresponding defensive.
		damage = (((2 * level) / 5 + 2) * base_power * (attacker.attack / defender.defence)) / 50 + 2;
		var is_physical = true
	}
	else
	{	
		damage = (((2 * level) / 5 + 2) * base_power * (attacker.spattack / defender.spdefence)) / 50 + 2;
		var is_physical = false
	}
    
    // Apply variance (random between 85% - 100%)
    damage *= random_range(0.85, 1.0);
    
    // Convert type strings into indices
	var attacker_primary_type = attacker.primary_type;
	var attacker_secondary_type = attacker.secondary_type;
	
    var attacker_primary_type_index = attacker.primary_type_id;
	var attacker_secondary_type_index = attacker.secondary_type_id;
	
    var defender_primary_type_index = defender.primary_type_id;
	var defender_secondary_type_index = defender.secondary_type_id;
    

    var primary_atk_effect = 0;
	
	if (attacker_primary_type_index != -1)
	{
	
		var primary_atk_effect_def_primary = 1;
		var primary_atk_effect_def_secondary = 1;

	    if (defender_primary_type_index != -1)
	    {
	        primary_atk_effect_def_primary = global.type_chart[attacker_primary_type_index][defender_primary_type_index];
	    }
	
		if (defender_secondary_type_index != -1)
	    {
	        primary_atk_effect_def_secondary = global.type_chart[attacker_primary_type_index][defender_secondary_type_index];
	    }
	
		primary_atk_effect = primary_atk_effect_def_primary * primary_atk_effect_def_secondary
	}
	
	var secondary_atk_effect = 0;
	
	if (attacker_secondary_type_index != -1)
	{
		var secondary_atk_effect_def_primary = 1;
		var secondary_atk_effect_def_secondary = 1;
	
		if (defender_primary_type_index != -1)
		{
			secondary_atk_effect_def_primary = global.type_chart[attacker_secondary_type_index][defender_primary_type_index];
		}
		if (defender_secondary_type_index != -1)
		{
			secondary_atk_effect_def_primary = global.type_chart[attacker_secondary_type_index][defender_secondary_type_index];
		}
		secondary_atk_effect = secondary_atk_effect_def_primary * secondary_atk_effect_def_secondary;
	}
	
	if (primary_atk_effect >= secondary_atk_effect)
	{
		var effectiveness =  primary_atk_effect;
		show_debug_message(attacker_primary_type +" is most effective: " + string(effectiveness));
		var attack_type = attacker_primary_type_index
	}
	else
	{
		var effectiveness =  secondary_atk_effect;
		show_debug_message(attacker_secondary_type +" is most effective: " + string(effectiveness));
		var attack_type = attacker_secondary_type_index
	}
	
	//show_debug_message("Effectiveness is: " + string(effectiveness));
	damage *= effectiveness;
	
	if (is_crit)
	{
		// Show debug message
		show_debug_message("Critical Hit!");
		damage = damage * 2; // Increase damage if crit
	}
	
	// ensure damage is at least one to prevent infinite fights...
    damage = max(1,round(damage)); 
	
    
    // Display effectiveness message
    if (effectiveness > 1) 
        show_debug_message("It's super effective!");
    else if (effectiveness < 1) 
        show_debug_message("It's not very effective...");
    
    // Debug Messages
    show_debug_message(string(attacker.pokemon_name) + " Deals " + string(damage) + " damage to " + string(defender.pokemon_name));
    show_debug_message(string(defender.pokemon_name) + " Has " + string(defender.current_hp - damage) + " health remaining");
	
	// create projectile for attack
	var proj = instance_create_layer(attacker.x, attacker.y, "Instances", OBJ_Projectile);
    proj.target_x = defender.x;
    proj.target_y = defender.y;
    proj.attack_type = attack_type;
    proj.target_pokemon = defender;
	proj.damage = damage;
	proj.is_physical = is_physical;
	proj.is_crit = is_crit;
}
