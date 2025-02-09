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
    
    // **Apply Type Effectiveness**
    var attacker_type = attacker.type; // E.g., "Fire"
    var defender_type = defender.type; // E.g., "Grass"

    // Convert type strings into indices
    var attacker_type_index = SCR_Get_Type_Index(attacker_type);
	//show_debug_message("Attacker Type is: " + string(attacker_type) + " Type ID is: " + string(attacker_type_index));
    var defender_type_index = SCR_Get_Type_Index(defender_type);
	//show_debug_message("Defender Type is: " + string(defender_type) + " Type ID is: " + string(defender_type_index));
    
	// Default effectiveness is 1.0
    var effectiveness = 1.0;

    if (attacker_type_index != -1 && defender_type_index != -1)
    {
        effectiveness = global.type_chart[attacker_type_index][defender_type_index];
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
    proj.attack_type = attacker.type_id;
    proj.target_pokemon = defender;
	proj.damage = damage;
	proj.is_physical = is_physical;
	proj.is_crit = is_crit;
}
