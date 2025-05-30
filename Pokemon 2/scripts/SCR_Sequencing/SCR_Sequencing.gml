// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


// don't spawn wild pokemon whilst you are eligible to build.
// don't spawn wild pokemon whilst your pokemon has no health
// add space to the enter binding

function SCR_Sequencing()
{
	global.tip_string = "Game Completed";
	var max_buildings = array_length(global.building_sprites);
	
	// Entry Conditions
	
	// Reset
	for (i = 1; i < max_buildings; i++)
	{
		global.entry_allowed[i] = false;
	}
	
	// Lab
	i = 1
	global.building_entry_condition[i] = (global.pokemon_ID == 0 || global.pokemon_health <= 0)
	// Poke Center
	i = 2
	global.building_entry_condition[i] = (global.pokemon_health < global.pokemon_health_max && global.item_held[i] > 0)
	// Factory
	i = 3
	global.building_entry_condition[i] = global.item_held[i] > 0
	// Burger Shop
	i = 4
	global.building_entry_condition[i] = global.item_held[i] > 0
	// Cafe
	i = 5
	global.building_entry_condition[i] = global.item_held[i] > 0
	// Library
	i = 6
	global.building_entry_condition[i] = global.item_held[i] > 0
	// Power Station
	i = 7
	global.building_entry_condition[i] = global.item_held[i] > 0
	// Gym
	i = 8
	global.building_entry_condition[i] = global.item_held[i] > 0
	// Arcade
	i = 9
	global.building_entry_condition[i] = global.item_held[i] > 0
	// Noodle Shop
	i = 10
	global.building_entry_condition[i] = global.item_held[i] > 0
	
	// Entry Permission Checks
    for (i = 1; i < max_buildings; i++)
    {
        if (global.building_count > i && global.building_entry_condition[i])
        {
            global.entry_allowed[i] = true;
            global.tip_string = "Enter " + string(global.building_name[i]);
        }
    }
	
	// Pokemon
	// Summon your Pokemon if you have one.
	if (global.pokemon_ID != 0 && !instance_exists(OBJ_Town_Pokemon))
	{
		instance_create_layer(OBJ_Player.x + 100,OBJ_Player.y,"Instances", OBJ_Town_Pokemon);
	}
	
	// Wild Pokemon
	// if there is not a current wild pokemon A and you have a pokemon, spawn one.
	// set alpha flag to false, to signal the beta wild pokemon
	var is_alpha = true;
	if (global.wild_pokemon_a_id == 0 && global.pokemon_ID != 0)
	{
		// Pick a Pokémon based on weighted random
		var rand_pick = irandom(global.total_spawn_weight);
		var cumulative_weight = 0;
		var chosen_pokemon = global.valid_wild_pokemon[0];

		for (var i = 0; i < array_length(global.valid_wild_pokemon); i++) 
		{
		    cumulative_weight += global.wild_spawn_weights[i];
		    if (rand_pick < cumulative_weight) 
			{
		        global.wild_pokemon_a_id = global.valid_wild_pokemon[i];
		        break;
		    }
		}
		SCR_Wild_Pokemon_Spawn(global.wild_pokemon_a_id, is_alpha);
		var spawn_chance = SCR_Round_N(global.wild_spawn_weights[i] / global.total_spawn_weight * 100,2)
		var average_chance = SCR_Round_N(1 / array_length(global.valid_wild_pokemon) *100,2)
		var above = spawn_chance > average_chance
		if above show_debug_message("Spawn Chance = " + string(spawn_chance) + "%, Above Average of: " + string(average_chance) + "%")
		else show_debug_message("Spawn Chance = " + string(spawn_chance) + "%, Below Average of: " + string(average_chance) + "%")
		show_debug_message("Base Stat Difference Between Tamed and Wild Pokemon is: " + string(global.wild_spawn_diff[i]));
	}
	else if (global.wild_pokemon_a_id != 0 && !instance_exists(OBJ_Town_Pokemon_Wild_A)) // respawn the wild pokemon after changing room.
	{
		SCR_Wild_Pokemon_Spawn(global.wild_pokemon_a_id, is_alpha);
	}
	
	// set alpha flag to false, to signal the beta wild pokemon
	var is_alpha = false;
	if (global.wild_pokemon_b_id == 0 && global.pokemon_ID != 0)
	{
		// Pick a Pokémon based on weighted random
		var rand_pick = irandom(global.total_spawn_weight);
		var cumulative_weight = 0;
		var chosen_pokemon = global.valid_wild_pokemon[0];

		for (var i = 0; i < array_length(global.valid_wild_pokemon); i++) 
		{
		    cumulative_weight += global.wild_spawn_weights[i];
		    if (rand_pick < cumulative_weight) 
			{
		        global.wild_pokemon_b_id = global.valid_wild_pokemon[i];
		        break;
		    }
		}
		SCR_Wild_Pokemon_Spawn(global.wild_pokemon_b_id, is_alpha);
		var spawn_chance = SCR_Round_N(global.wild_spawn_weights[i] / global.total_spawn_weight * 100,2)
		var average_chance = SCR_Round_N(1 / array_length(global.valid_wild_pokemon) *100,2)
		var above = spawn_chance > average_chance
		if above show_debug_message("Spawn Chance = " + string(spawn_chance) + "%, Above Average of: " + string(average_chance) + "%")
		else show_debug_message("Spawn Chance = " + string(spawn_chance) + "%, Below Average of: " + string(average_chance) + "%")
		show_debug_message("Base Stat Difference Between Tamed and Wild Pokemon is: " + string(global.wild_spawn_diff[i]));
	}
	else if (global.wild_pokemon_b_id != 0 && !instance_exists(OBJ_Town_Pokemon_Wild_B)) // respawn the wild pokemon after changing room.
	{
		SCR_Wild_Pokemon_Spawn(global.wild_pokemon_b_id, is_alpha);
	}
	
	
	// Wild Pokemon
	if (global.wild_pokemon_a_id != 0 && global.pokemon_ID != 0 && global.wild_pokemon_b_id != 0)
	{
		global.tip_string = "Battle Wild Pokemon";
	}
	
	
	// Eggs
	var i = 0;
	if (global.item_held[i] == -1 && global.pokemon_ID == 0)
	{
		global.item_held[i] = 0;
		SCR_Items_Spawn(i, global.item_hidden[i]);
	}
	if (global.item_held[i] < global.item_hidden[i] && global.pokemon_ID == 0)
	{
		global.tip_string = "Eggs Left: " + string(global.item_hidden[i] - global.item_held[i]);
		return;
	}
	if (global.item_held[i] == global.item_hidden[i] && global.pokemon_ID == 0)
	{
		// once all the eggs are collected spawn the crates needed for the lab
		if (global.item_held[1] == -1 && global.building_count == 1)
		{
			SCR_Items_Spawn(1, global.building_cost[1]);
			global.item_held[1] = 0;
		}
	}
	
	
	// Building Construction Checks
    for (i = 1; i < max_buildings; i++)
    {
        if (global.building_count = i + 1  && global.item_held[i] == -1)
        {
			global.item_held[i] = 0;
        }
		else if (global.item_held[i] != -1 && global.building_count == i && global.item_held[1] < global.building_cost[i])
		{
			global.tip_string = "Crates Left: " + string(global.building_cost[i] - global.item_held[1]);
		}	
        else if (global.item_held[1] >= global.building_cost[i] && global.building_count == i)
        {
            // Allow construction
            global.build_allowed[i] = true;
            global.tip_string = "Build " + string(global.building_name[i]);
        }
    }
	

	// Final Tip Overrides
    if (global.pokemon_health <= global.pokemon_health_max / 2)
    {
		if global.item_held[2] > 0
		{
			global.tip_string = "Enter Poke Center";
		}
		else if global.pokemon_health = 0
		{
			global.tip_string = "Enter Lab";
		}
    }
}