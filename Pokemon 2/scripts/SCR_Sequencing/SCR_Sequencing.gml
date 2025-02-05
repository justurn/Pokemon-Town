// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SCR_Sequencing()
{
	global.tip_string = "Game Completed";
	
	for (var i = 0; i < array_length(global.building_sprites); i++)
	{
		global.entry_allowed[i] = false;
	}
	
	// Pokemon
	// Summon your Pokemon if you have one.
	if (global.pokemon_ID != 0 && !instance_exists(OBJ_Town_Pokemon))
	{
		instance_create_layer(OBJ_Player.x+50,OBJ_Player.y,"Instances", OBJ_Town_Pokemon);
	}
	
	// Wild Pokemon
	// if there is not a current wild pokemon and you have a pokemon, spawn one.
	if (global.wild_pokemon_id = 0 && global.pokemon_ID != 0)
	{
		global.wild_pokemon_id = valid_wild_pokemon[global.wild_pokemon_counter];
		SCR_Wild_Pokemon_Spawn(global.wild_pokemon_id);
		return;
	}
	
	// Eggs
	i = 0;
	if (global.item_held[i] = -1 && global.pokemon_ID = 0)
	{
		global.item_held[i] = 0;
		SCR_Items_Spawn(i, global.item_hidden[i]);
	}
	if (global.item_held[i] != global.item_hidden[i] && global.pokemon_ID = 0)
	{
		global.tip_string = "Eggs Left: " + string(global.item_hidden[i] - global.item_held[i]);
		return;
	}
	

	// Lab
	i = 1;
	if (global.building_count = i && global.item_held[i] = -1)
	{
		SCR_Items_Spawn(i, global.building_cost[i]);
		global.item_held[i] = 0
		global.tip_string = "";
		return;
	}
	if (global.building_count = i && global.building_count = i && global.item_held[1] < global.building_cost[i])
	{
		global.tip_string = "Crates Left: " + string(global.building_cost[i] - global.item_held[1]);
		return;
	}
	if (global.building_count = i && global.item_held[1] >= global.building_cost[i])
	{
		global.build_allowed[i] = true;
		global.tip_string = "Build Lab";	
		return;
	}
	if (global.pokemon_ID = 0 || (global.building_count = 2 && global.pokemon_health <= 0))
	{
		global.entry_allowed[i] = true;
		global.tip_string = "Enter Lab";
		
		// reset the chosen egg type and let the player hatch a new egg if their pokemon is out of HP
		global.chosen_egg_type = -1; 
		return;
	}

	
	// Poke Center
	i = 2;
	if (global.building_count = i && global.item_held[i] = -1)
	{
		global.item_held[i] = 0
		global.tip_string = "";
		return;
	}
	if (global.building_count = i && global.item_held[1] < global.building_cost[i])
	{
		global.tip_string = "Crates Left: " + string(global.building_cost[i] - global.item_held[1]);
		return;
	}
	if (global.item_held[1] >= global.building_cost[i] && global.building_count = i)
	{
		global.build_allowed[i] = true;
		global.tip_string = "Build Poke Center";
		return;
	}
	if (global.pokemon_health <= 0)
	{
		global.entry_allowed[i] = true
		global.tip_string = "Enter Poke Center";
		return;
	}
	

	
	// Wild Pokemon
	if (global.wild_pokemon_id != 0 && global.wild_pokemon_counter < 2)
	{
		pokemon_name = global.Dex_Names[global.wild_pokemon_id]
		global.tip_string = "Defeat " + string(pokemon_name);
		return;
	}

	// Factory
	i = 3;
	if (global.building_count = i && global.item_held[i] = -1)
	{
		SCR_Items_Spawn(i);
		global.item_held[i] = 0
		global.tip_string = "";
		return;
	}
	if (global.building_count = i && global.item_held[1] < global.building_cost[i])
	{
		global.tip_string = "Crates Left: " + string(global.building_cost[i] - global.item_held[1]);
		return;
	}
	if (global.item_held[1] >= global.building_cost[i] && global.building_count = i)
	{
		global.build_allowed[i] = true;
		global.tip_string = "Build Factory";
		return;
	}
	if (global.entry_allowed[i] = true)
	{
		global.tip_string = "Enter Factory";
		return;
	}

	// Burger Shop
	i = 4;
	if (global.building_count = i && global.item_held[i] = -1)
	{
		SCR_Items_Spawn(i);
		global.item_held[i] = 0
		global.tip_string = "";
		return;
	}
	if (global.building_count = i && global.item_held[1] < global.building_cost[i])
	{
		global.tip_string = "Crates Left: " + string(global.building_cost[i] - global.item_held[1]);
		return;
	}
	if (global.item_held[1] >= global.building_cost[i] && global.building_count = i)
	{
		global.build_allowed[i] = true;
		global.tip_string = "Build Burger Shop";
		return;
	}
	if (global.entry_allowed[i] = true)
	{
		global.tip_string = "Enter Burger Shop";
		return;
	}

	// Bank
	i = 5;
	if (global.building_count = i && global.item_held[i] = -1)
	{
		SCR_Items_Spawn(i);
		global.item_held[i] = 0
		global.tip_string = "";
		return;
	}
	if (global.building_count = i && global.item_held[1] < global.building_cost[i])
	{
		global.tip_string = "Crates Left: " + string(global.building_cost[i] - global.item_held[1]);
		return;
	}
	if (global.item_held[1] >= global.building_cost[i] && global.building_count = i)
	{
		global.build_allowed[i] = true;
		global.tip_string = "Build Bank";
		return;
	}
	if (global.entry_allowed[i] = true)
	{
		global.tip_string = "Enter Bank";
		return;
	}

	// Cafe
	i = 6;
	if (global.building_count = i && global.item_held[i] = -1)
	{
		SCR_Items_Spawn(i);
		global.item_held[i] = 0
		global.tip_string = "";
		return;
	}
	if (global.building_count = i && global.item_held[1] < global.building_cost[i])
	{
		global.tip_string = "Crates Left: " + string(global.building_cost[i] - global.item_held[1]);
		return;
	}
	if (global.item_held[1] >= global.building_cost[i] && global.building_count = i)
	{
		global.build_allowed[i] = true;
		global.tip_string = "Build Cafe";
		return;
	}
	if (global.entry_allowed[i] = true)
	{
		global.tip_string = "Enter Cafe";
		return;
	}

	// Noodle Shop
	i = 7;
	if (global.building_count = i && global.item_held[i] = -1)
	{
		SCR_Items_Spawn(i);
		global.item_held[i] = 0
		global.tip_string = "";
		return;
	}
	if (global.building_count = i && global.item_held[1] < global.building_cost[i])
	{
		global.tip_string = "Crates Left: " + string(global.building_cost[i] - global.item_held[1]);
		return;
	}
	if (global.item_held[1] >= global.building_cost[i] && global.building_count = i)
	{
		global.build_allowed[i] = true;
		global.tip_string = "Build Noodle Shop";
		return;
	}
	if (global.entry_allowed[i] = true)
	{
		global.tip_string = "Enter Noodle";
		return;
	}
	

}