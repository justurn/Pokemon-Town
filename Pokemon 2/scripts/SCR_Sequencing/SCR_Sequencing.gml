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
		instance_create_layer(OBJ_Player.x+50,OBJ_Player.y,"Instances", OBJ_Town_Pokemon);
	}
	
	// Wild Pokemon
	// if there is not a current wild pokemon and you have a pokemon, spawn one.
	if (global.wild_pokemon_id == 0 && global.pokemon_ID != 0)
	{
		if global.wild_pokemon_counter == array_length(global.valid_wild_pokemon) // reset the counter for wild pokemon
		{
			global.wild_pokemon_counter = 0;
		}
		global.wild_pokemon_id = global.valid_wild_pokemon[global.wild_pokemon_counter];
		SCR_Wild_Pokemon_Spawn(global.wild_pokemon_id);
	}
	
	// Wild Pokemon
	if (global.wild_pokemon_id != 0 && global.pokemon_ID != 0)
	{
		pokemon_name = global.Dex_Names[global.wild_pokemon_id]
		global.tip_string = "Defeat " + string(pokemon_name);
	}
	
	// Eggs
	var i = 0;
	if (global.item_held[i] == -1 && global.pokemon_ID == 0)
	{
		global.item_held[i] = 0;
		SCR_Items_Spawn(i, global.item_hidden[i]);
	}
	if (global.item_held[i] != global.item_hidden[i] && global.pokemon_ID == 0)
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