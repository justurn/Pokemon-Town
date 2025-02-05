function SCR_Initialise_Globals()
{
	randomize();
	var i = 0;
	
	// Plots and Buildings
	global.plot_count = 0;
	global.plot_y = 600; // Fixed Y position for plots
	global.plots_x = [];
	global.buildings_x = [];
	global.buildings_y = [];
	global.building_count = 1;
	global.more_buildings = true;

	// Player
	global.player_x = 2000;
	global.player_y = 770;
	global.player_speed = 25
	
	// Pokemon
	global.pokemon_ID = 0;
	global.pokemon_speed = 0.9 * global.player_speed
	global.wild_pokemon_id = 0;
	global.wild_pokemon_counter = 0;
	global.wild_pokemon_x = -1;
	global.pokemon_health_max = 100;
	global.pokemon_health = global.pokemon_health_max;
	global.pokemon_experience = 0;

	// Tips
	global.tip_string ="";
	
	
	i = 0; //Eggs item ID
	global.item_name[i] = "Eggs";
	global.item_sprite[i] = SPR_Egg;
	global.item_hidden[i] = 3;	
	global.egg_types = [0,0,0];
	global.chosen_egg_type = -1;
	
	
	i = 1; // Crates item ID
	global.item_name[i] = "Crates";
	global.item_sprite[i] = SPR_Crate;
	
	
	i = 2; // Meds item ID
	global.item_name[i] = "Meds";
	global.item_sprite[i] = SPR_Med_Kit;
	
	
	i = 3; // Gears item ID
	global.item_name[i] = "Gears";
	global.item_sprite[i] = SPR_Gear;
	
	
	i = 4; // Burgers item ID
	global.item_name[i] = "Burger";
	global.item_sprite[i] = SPR_Burger;
	
	
	i = 5; // Coins item ID
	global.item_name[i] = "Coin";
	global.item_sprite[i] = SPR_Coin;
	
	
	i = 6; // Coffees item ID
	global.item_name[i] = "Coffee";
	global.item_sprite[i] = SPR_Coffee;
	
	
	i = 7; // Noodles item ID
	global.item_name[i] = "Noodles";
	global.item_sprite[i] = SPR_Noodles;

	// Set all item found counts to 0
	for (i = 0; i < array_length(global.item_name); i++)
	{
		global.item_held[i] = -1;
		
	}
	
	// Trees
	global.trees = [];
	global.tree_sprites[0] = SPR_Tree_1;
	global.tree_sprites[1] = SPR_Tree_2;
	global.tree_sprites[2] = SPR_Tree_3;
	global.tree_sprites[3] = SPR_Tree_4;
	global.tree_sprites[4] = SPR_Tree_5;

	// Custom Color Definitions
    global.c_fire = make_color_rgb(255, 85, 0);         // Fire (orange-red)
    global.c_water = make_color_rgb(0, 115, 255);      // Water (blue)
    global.c_grass = make_color_rgb(0, 255, 0);        // Grass (green)
    global.c_electric = make_color_rgb(255, 255, 0);   // Electric (yellow)
    global.c_psychic = make_color_rgb(175, 45, 230);   // Psychic (purple)
    global.c_bug = make_color_rgb(80, 200, 80);        // Bug (light green)
    global.c_fairy = make_color_rgb(255, 182, 255);    // Fairy (light pink)
    global.c_ghost = make_color_rgb(128, 0, 128);      // Ghost (purple)
    global.c_dragon = make_color_rgb(255, 0, 255);     // Dragon (magenta)
    global.c_dark = make_color_rgb(50, 50, 50);        // Dark (gray)
    global.c_fighting = make_color_rgb(255, 0, 0);     // Fighting (red)
    global.c_rock = make_color_rgb(150, 150, 50);      // Rock (brown)
    global.c_ice = make_color_rgb(0, 255, 255);        // Ice (light blue)
    global.c_normal = make_color_rgb(255, 255, 255);   // Normal (White)
    global.c_ground = make_color_rgb(139, 69, 19);     // Ground (brown)
    global.c_flying = make_color_rgb(135, 206, 235);   // Flying (sky blue)
    global.c_poison = make_color_rgb(125, 45, 250);    // Poison (Purple)
    global.c_steel = make_color_rgb(80, 80, 80);       // Steel (Grey)


	// Define an array to hold the types (only Gen 1 primary types included)
	global.types[0] = "Normal";
	global.types[1] = "Fire";
	global.types[2] = "Water";
	global.types[3] = "Grass";
	global.types[4] = "Electric";
	global.types[5] = "Psychic";
	global.types[6] = "Bug";
	global.types[7] = "Dragon";
	global.types[8] = "Fighting";
	global.types[9] = "Rock";
	global.types[10] = "Ghost";
	global.types[11] = "Ground";
	global.types[12] = "Poison";
	// Commented out types (not in Gen 1 primary types)
	//global.types[13] = "fairy";
	//global.types[14] = "dark";
	//global.types[15] = "ice";
	//global.types[16] = "steel";
	//global.types[17] = "flying"; // Removed because Flying is not a primary type in Gen 1

	// Define an array for the colors that correspond to each type (only Gen 1 primary types included)
	global.type_colors[0] = global.c_normal;
	global.type_colors[1] = global.c_fire;
	global.type_colors[2] = global.c_water;
	global.type_colors[3] = global.c_grass;
	global.type_colors[4] = global.c_electric;
	global.type_colors[5] = global.c_psychic;
	global.type_colors[6] = global.c_bug;
	global.type_colors[7] = global.c_dragon;
	global.type_colors[8] = global.c_fighting;
	global.type_colors[9] = global.c_rock;
	global.type_colors[10] = global.c_ghost;
	global.type_colors[11] = global.c_ground;
	global.type_colors[12] = global.c_poison;
	// Commented out colors (not in Gen 1 primary types)
	//global.type_colors[13] = global.c_fairy;
	//global.type_colors[14] = global.c_dark;
	//global.type_colors[15] = global.c_ice;
	//global.type_colors[16] = global.c_steel;
	//global.type_colors[17] = global.c_flying; // Removed because Flying is not a primary type in Gen 1
	
	// Lab
	i = 1;
	global.building_name[i] = "Lab";
	global.building_sprites[i] = SPR_Lab;
	global.building_cost[i] = i + 1;
	global.building_room[i] = RM_Lab;
	
	//Poke Center
	i = 2;
	global.building_name[i] = "Poke Center";
	global.building_sprites[i] = SPR_Poke_Center;
	global.building_cost[i] = i + 1;
	global.building_room[i] = RM_Poke_Center;
	
	// Factory
	i = 3;
	global.building_name[i] = "Factory";
	global.building_sprites[i] = SPR_Factory;
	global.building_cost[i] = i + 1;
	global.building_room[i] = RM_Factory;
	
	// Burger Shop
	i = 4;
	global.building_name[i] = "Burger Shop";
	global.building_sprites[i] = SPR_Burger_Shop;
	global.building_cost[i] = i + 1;	
	
	// Bank;
	i = 5;
	global.building_name[i] = "Bank";
	global.building_sprites[i] = SPR_Bank;
	global.building_cost[i] = i + 1;	
	
	// Cafe;
	i = 6;
	global.building_name[i] = "Cafe";
	global.building_sprites[i] = SPR_Cafe;
	global.building_cost[i] = i + 1;
	
	// Noodle Shop
	i = 7;
	global.building_name[i] = "Noodle Shop";
	global.building_sprites[i] = SPR_Noodle_Shop;
	global.building_cost[i] = i + 1;	
	
	for (i = 0; i < array_length(global.building_sprites); i++)
	{
		global.build_allowed[i] = false;
		global.entry_allowed[i] = false;
	}	
}