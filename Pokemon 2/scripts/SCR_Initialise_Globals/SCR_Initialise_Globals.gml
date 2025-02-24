function SCR_Initialise_Globals()
{
	randomize();
	var i = 0;
	
	global.log = false;
	
	
	
	// Plots and Buildings
	global.plot_count = 0;
	global.plot_y = 275; // Fixed Y position for plots
	global.plots_x = [];
	global.buildings_x = [];
	global.buildings_y = [];
	global.building_count = 1;
	global.more_buildings = true;

	// Player
	global.player_y = 440;
	global.player_speed = 10;
	
	// Pokemon
	global.pokemon_ID = 0;
	global.pokemon_move_speed = 0.9 * global.player_speed
	global.wild_pokemon_id = 0;
	global.wild_pokemon_x = -1;
	global.pokemon_health_max = 100;
	global.pokemon_health = global.pokemon_health_max;

	global.iv_health = 0;
	global.iv_attack = 0;
	global.iv_SPattack = 0;
	global.iv_defence = 0;
	global.iv_SPdefence = 0;
	global.iv_speed = 0;
	global.iv_crit = 0;
	global.iv_xp = 0;
	
	global.pokemon_start_crit = 5;
	global.pokemon_crit = global.pokemon_start_crit;
	
	global.pokemon_start_xp_rate = 1;
	global.pokemon_xp_rate = global.pokemon_start_xp_rate;
	global.basic_xp_award = 25;
	
	global.pokemon_start_level = 5;
	global.pokemon_level = global.pokemon_start_level
	global.pokemon_experience = power(global.pokemon_level - 1,3);
	global.wild_pokemon_level_gap = global.pokemon_start_level - 1;
	global.wild_pokemon_level = global.pokemon_level - global.wild_pokemon_level_gap;

	// Tips
	global.tip_string ="";
	
	// items
	global.item_counter = 0;
	
	
	i = 0; //Eggs item ID
	global.item_name[i] = "Eggs";
	global.item_sprite[i] = SPR_Egg;
	global.item_hidden[i] = 2;	
	global.egg_types_found = [];
	global.egg_counter = 0
	global.chosen_egg_type = -1;
	
	i = 1; // Crates item ID
	global.item_name[i] = "Crate";
	global.item_sprite[i] = SPR_Crate;
	
	
	i = 2; // Meds item ID
	global.item_name[i] = "Med Kit";
	global.item_sprite[i] = SPR_Med_Kit;
	
	
	i = 3; // Gears item ID
	global.item_name[i] = "Gears";
	global.item_sprite[i] = SPR_Gear;
	
	
	i = 4; // Burgers item ID
	global.item_name[i] = "Burger";
	global.item_sprite[i] = SPR_Burger;
	
	
	i = 5; // Coffees item ID
	global.item_name[i] = "Coffee";
	global.item_sprite[i] = SPR_Coffee;
	
	
	i = 6; // Book item ID
	global.item_name[i] = "Book";
	global.item_sprite[i] = SPR_Book;
	
	
	i = 7; // Battery item ID
	global.item_name[i] = "Battery";
	global.item_sprite[i] = SPR_Battery;	
	
	
	i = 8; // Punch Card item ID
	global.item_name[i] = "Punch Card";
	global.item_sprite[i] = SPR_Punch_Card;


	i = 9; // Coins item ID
	global.item_name[i] = "Coin";
	global.item_sprite[i] = SPR_Coin;

	i = 10; // Noodles item ID
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
	global.types[13] = "Ice";
	// Commented out types (not in Gen 1 primary types)
	//global.types[14] = "fairy";
	//global.types[15] = "dark";
	//global.types[16] = "steel";
	//global.types[17] = "flying"; // Removed because Flying is not a primary type in Gen 1
	
	// Define a 2D array for type effectiveness
	for (i = 0; i < 18; i++)
	{
		for (var k = 0; k < 18; k++)
		{
			global.type_chart[i][k] = 1;
		}
	}

	// Super Effective (2x)
	global.type_chart[1][3] = 2.0; // Fire -> Grass
	global.type_chart[1][6] = 2.0; // Fire -> Bug
	global.type_chart[2][1] = 2.0; // Water -> Fire
	global.type_chart[2][9] = 2.0; // Water -> Rock
	global.type_chart[2][11] = 2.0; // Water -> Ground
	global.type_chart[3][2] = 2.0; // Grass -> Water
	global.type_chart[3][9] = 2.0; // Grass -> Rock
	global.type_chart[3][11] = 2.0; // Grass -> Ground
	global.type_chart[4][2] = 2.0; // Electric -> Water
	global.type_chart[6][5] = 2.0; // Bug -> Psychic
	global.type_chart[6][3] = 2.0; // Bug -> Grass
	global.type_chart[8][9] = 2.0; // Fighting -> Rock
	global.type_chart[8][0] = 2.0; // Fighting -> Normal
	global.type_chart[9][1] = 2.0; // Rock -> Fire
	global.type_chart[9][6] = 2.0; // Rock -> Bug
	global.type_chart[9][17] = 2.0; // Rock -> Flying
	global.type_chart[11][1] = 2.0; // Ground -> Fire
	global.type_chart[11][4] = 2.0; // Ground -> Electric
	global.type_chart[11][9] = 2.0; // Ground -> Rock
	global.type_chart[11][6] = 2.0; // Ground -> Bug
	global.type_chart[12][3] = 2.0; // Poison -> Grass
	global.type_chart[5][8] = 2.0; // Psychic -> Fighting
	global.type_chart[5][12] = 2.0; // Psychic -> Poison
	global.type_chart[7][7] = 2.0; // Dragon -> Dragon

	// Not Very Effective (0.5x)
	global.type_chart[0][9] = 0.5; // Normal -> Rock
	global.type_chart[1][2] = 0.5; // Fire -> Water
	global.type_chart[2][3] = 0.5; // Water -> Grass
	global.type_chart[2][4] = 0.5; // Water -> Electric
	global.type_chart[3][1] = 0.5; // Grass -> Fire
	global.type_chart[3][6] = 0.5; // Grass -> Bug
	global.type_chart[3][12] = 0.5; // Grass -> Poison
	global.type_chart[4][9] = 0.5; // Electric -> Rock
	global.type_chart[5][5] = 0.5; // Psychic -> Psychic
	global.type_chart[8][5] = 0.5; // Fighting -> Psychic
	global.type_chart[8][7] = 0.5; // Fighting -> Flying
	global.type_chart[9][11] = 0.5; // Rock -> Ground
	global.type_chart[9][8] = 0.5; // Rock -> Fighting
	global.type_chart[11][3] = 0.5; // Ground -> Grass
	global.type_chart[11][6] = 0.5; // Ground -> Bug
	global.type_chart[12][12] = 0.5; // Poison -> Poison
	global.type_chart[12][9] = 0.5; // Poison -> Rock
	global.type_chart[12][10] = 0.5; // Poison -> Ghost

	// Immunities (0x)
	global.type_chart[0][10] = 0.0; // Normal -> Ghost (no effect)
	global.type_chart[4][11] = 0.0; // Electric -> Ground (no effect)
	global.type_chart[8][10] = 0.0; // Fighting -> Ghost (no effect)
	global.type_chart[10][0] = 0.0; // Ghost -> Normal (no effect)
	global.type_chart[11][17] = 0.5; // Ground -> Flying (no effect)





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
	global.type_colors[13] = global.c_ice;
	// Commented out colors (not in Gen 1 primary types)
	//global.type_colors[14] = global.c_fairy;
	//global.type_colors[15] = global.c_dark;
	//global.type_colors[16] = global.c_steel;
	//global.type_colors[17] = global.c_flying; // Removed because Flying is not a primary type in Gen 1
	
	// Lab
	i = 1;
	global.building_name[i] = "Lab";
	global.building_sprites[i] = SPR_Lab;
	global.building_cost[i] = 2;
	global.building_room[i] = RM_Lab;
		
	//Poke Center
	i = 2;
	global.building_name[i] = "Poke Center";
	global.building_sprites[i] = SPR_Poke_Center;
	global.building_cost[i] = 2;
	global.building_room[i] = RM_Poke_Center;
	
	// Factory - Augments Defence
	i = 3;
	global.building_name[i] = "Factory";
	global.building_sprites[i] = SPR_Factory;
	global.building_cost[i] = 2;
	global.building_room[i] = RM_Factory;

	// Burger Shop - Augments HP
	i = 4;
	global.building_name[i] = "Burger Shop";
	global.building_sprites[i] = SPR_Burger_Shop;
	global.building_cost[i] = 2;	
	global.building_room[i] = RM_Burger_Shop;
	
	// Cafe - Augments Speed
	i = 5;
	global.building_name[i] = "Cafe";
	global.building_sprites[i] = SPR_Cafe;
	global.building_cost[i] = 2;
	global.building_room[i] = RM_Cafe;
	
	// Library - Augments SP Defence
	i = 6;
	global.building_name[i] = "Library";
	global.building_sprites[i] = SPR_Library;
	global.building_cost[i] = 2;
	global.building_room[i] = RM_Library;
	
	// Power Station - Augements SP Attack
	i = 7;
	global.building_name[i] = "Power Station";
	global.building_sprites[i] = SPR_Power_Station;
	global.building_cost[i] = 2;
	global.building_room[i] = RM_Power_Station;
	
	// Gym
	i = 8;
	global.building_name[i] = "Gym";
	global.building_sprites[i] = SPR_Gym;
	global.building_cost[i] = 2;
	global.building_room[i] = RM_Gym;
	
	// Arcade
	i = 9;
	global.building_name[i] = "Arcade";
	global.building_sprites[i] = SPR_Arcade;
	global.building_cost[i] = 2;	
	global.building_room[i] = RM_Arcade;
	
	// Noodle Shop
	i = 10;
	global.building_name[i] = "Noodle Shop";
	global.building_sprites[i] = SPR_Noodle_Shop;
	global.building_cost[i] = 2;	
	global.building_room[i] = RM_Noodle_Shop;
	
	// Potion Shop for combat heals?
	// Sushi shop?
	// Florist?
	// Expedition Camp? for adventures out of town...
	
	
	var building_limit = array_length(global.building_name) - 1;
	global.plot_width = 600;
	global.town_size = building_limit * global.plot_width 
	global.player_x = global.town_size / 2;
	var segment_offset = global.plot_width / 2
    
	// set false entry and build permissives for all buildings and store the x positions of each plot
	for (i = 1; i <= building_limit; i++)
	{
		global.build_allowed[i] = false;
		global.entry_allowed[i] = false;
		global.plot_segments[i-1] = (i-1) * global.plot_width + segment_offset;
	}
	
	// Shuffle the plot segments array to get a random order
	SCR_Shuffle_Array(global.plot_segments);   
	show_debug_message("Plot Segments: " + string(global.plot_segments));
	
	// Create an array of indices based on the length of global.types
	global.shuffled_types = array_create(array_length(global.types));

	// Populate the array with indices (0, 1, 2, ...)
	for (var e = 0; e < array_length(global.types); e++)
	{
		global.shuffled_types[e] = e;
	}
		
	// Shuffle the indices
	SCR_Shuffle_Array(global.shuffled_types);

	show_debug_message("Shuffled Egg Types: " + string(global.shuffled_types));
}

