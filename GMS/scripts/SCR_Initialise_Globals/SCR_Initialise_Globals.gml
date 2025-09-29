function SCR_Initialise_Globals()
{
	randomize();
	var i = 0;
	
	global.log = false;
	
	// F-018: Initialize Battle System Enhancements
	SCR_Type_Icons_Init();
	SCR_Moves_Init();
	
	
	
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
	global.sprint_speed = 1.5;
	
	// Pokemon
	global.pokemon_ID = 0;
	global.pokemon_move_speed = 0.95 * global.player_speed
	global.wild_pokemon_a_id = 0;
	global.wild_pokemon_b_id = 0;
	global.wild_pokemon_a_x = -1;
	global.wild_pokemon_b_x = -1;
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
	
	// F-018: Player Pokemon move storage
	global.player_move_1 = 0;
	global.player_move_2 = 0;
	global.player_move_3 = 0;
	global.player_move_4 = 0;

	// Tips
	global.tip_string ="";
	
	// items
	global.item_counter = 0;
	
	
	i = 0; //Eggs item ID
	global.item_name[i] = "Eggs";
	global.item_sprite[i] = SPR_Egg;
	global.item_hidden[i] = 1;	
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
	global.types[14] = "Fairy";
	global.types[15] = "Steel";
	global.types[16] = "Flying";
	global.types[17] = "Dark";
	
	// Define a 2D array for type effectiveness
	for (i = 0; i < 18; i++)
	{
		for (var k = 0; k < 18; k++)
		{
			global.type_chart[i][k] = 1;
		}
	}

	// Super Effective (2x)
	
	global.type_chart[1][3] = 2.0;   // Fire -> Grass
	global.type_chart[1][13] = 2.0;  // Fire -> Ice
	global.type_chart[1][6] = 2.0;   // Fire -> Bug
	global.type_chart[1][15] = 2.0;  // Fire -> Steel
	
	global.type_chart[2][1] = 2.0;   // Water -> Fire
	global.type_chart[2][9] = 2.0;   // Water -> Rock
	global.type_chart[2][11] = 2.0;  // Water -> Ground
	
	global.type_chart[3][2] = 2.0;   // Grass -> Water
	global.type_chart[3][9] = 2.0;   // Grass -> Rock
	global.type_chart[3][11] = 2.0;  // Grass -> Ground
	
	global.type_chart[4][2] = 2.0;   // Electric -> Water
	global.type_chart[4][16] = 2.0;  // Electric -> Flying
	
	global.type_chart[5][8] = 2.0;   // Psychic -> Fighting
	global.type_chart[5][12] = 2.0;  // Psychic -> Poison
	
	global.type_chart[6][5] = 2.0;   // Bug -> Psychic
	global.type_chart[6][3] = 2.0;   // Bug -> Grass
	global.type_chart[6][17] = 2.0;  // Bug -> Dark
	
	global.type_chart[7][7] = 2.0;   // Dragon -> Dragon
	
	global.type_chart[8][9] = 2.0;   // Fighting -> Rock
	global.type_chart[8][0] = 2.0;   // Fighting -> Normal
	global.type_chart[8][13] = 2.0;  // Fighting -> Ice
	global.type_chart[8][17] = 2.0;  // Fighting -> Dark
	global.type_chart[8][15] = 2.0;  // Fighting -> Steel
	
	global.type_chart[9][1] = 2.0;   // Rock -> Fire
	global.type_chart[9][6] = 2.0;   // Rock -> Bug
	global.type_chart[9][16] = 2.0;  // Rock -> Flying
	global.type_chart[9][13] = 2.0;  // Rock -> Ice
	
	global.type_chart[10][5] = 2.0;  // Ghost -> Psychic
	global.type_chart[10][10] = 2.0; // Ghost -> Ghost
	
	global.type_chart[11][1] = 2.0;  // Ground -> Fire
	global.type_chart[11][4] = 2.0;  // Ground -> Electric
	global.type_chart[11][9] = 2.0;  // Ground -> Rock
	global.type_chart[11][12] = 2.0; // Ground -> Poison
	global.type_chart[11][15] = 2.0; // Ground -> Steel
	
	global.type_chart[12][3] = 2.0;  // Poison -> Grass
	global.type_chart[12][14] = 2.0; // Poison -> Fairy
		
	global.type_chart[13][7] = 2.0;  // Ice -> Dragon
	global.type_chart[13][3] = 2.0;  // Ice -> Grass
	global.type_chart[13][11] = 2.0; // Ice -> Ground
	global.type_chart[13][16] = 2.0; // Ice -> Flying
	
	global.type_chart[14][8] = 2.0;  // Fairy -> Fighting
	global.type_chart[14][7] = 2.0;  // Fairy -> Dragon
	global.type_chart[14][17] = 2.0; // Fairy -> Dark
	
	global.type_chart[15][9] = 2.0;  // Steel -> Rock
	global.type_chart[15][14] = 2.0; // Steel -> Fairy
	
	global.type_chart[16][3] = 2.0;  // Flying -> Grass
	global.type_chart[16][8] = 2.0;  // Flying -> Fighting
	global.type_chart[16][6] = 2.0;  // Flying -> Bug
	
	global.type_chart[17][5] = 2.0;  // Dark -> Psychic
	global.type_chart[17][10] = 2.0; // Dark -> Ghost

	// Not Very Effective (0.5x)
	
	global.type_chart[0][9] = 0.5;   // Normal -> Rock
	global.type_chart[0][15] = 0.5;  // Normal -> Steel
	
	global.type_chart[1][1] = 0.5;   // Fire -> Fire
	global.type_chart[1][2] = 0.5;   // Fire -> Water
	global.type_chart[1][9] = 0.5;   // Fire -> Rock
	global.type_chart[1][7] = 0.5;   // Fire -> Dragon
	
	global.type_chart[2][2] = 0.5;   // Water -> Water
	global.type_chart[2][3] = 0.5;   // Water -> Grass
	global.type_chart[2][7] = 0.5;   // Water -> Dragon
	
	global.type_chart[3][1] = 0.5;   // Grass -> Fire
	global.type_chart[3][6] = 0.5;   // Grass -> Bug
	global.type_chart[3][12] = 0.5;  // Grass -> Poison
	global.type_chart[3][16] = 0.5;  // Grass -> Flying
	global.type_chart[3][7] = 0.5;   // Grass -> Dragon
	global.type_chart[3][15] = 0.5;  // Grass -> Steel
	
	global.type_chart[4][4] = 0.5;   // Electric -> Electric
	global.type_chart[4][3] = 0.5;   // Electric -> Grass
	global.type_chart[4][7] = 0.5;   // Electric -> Dragon
	
	global.type_chart[5][5] = 0.5;   // Psychic -> Psychic
	global.type_chart[5][15] = 0.5;  // Psychic -> Steel
	
	global.type_chart[6][1] = 0.5;   // Bug -> Fire
	global.type_chart[6][8] = 0.5;   // Bug -> Fighting
	global.type_chart[6][12] = 0.5;  // Bug -> Poison
	global.type_chart[6][16] = 0.5;  // Bug -> Flying
	global.type_chart[6][10] = 0.5;  // Bug -> Ghost
	global.type_chart[6][15] = 0.5;  // Bug -> Steel
	global.type_chart[6][14] = 0.5;  // Bug -> Fairy
	
	global.type_chart[7][15] = 0.5;  // Dragon -> Steel
	
	global.type_chart[8][5] = 0.5;   // Fighting -> Psychic
	global.type_chart[8][16] = 0.5;  // Fighting -> Flying
	global.type_chart[8][12] = 0.5;  // Fighting -> Poison
	global.type_chart[8][6] = 0.5;   // Fighting -> Bug
	global.type_chart[8][14] = 0.5;  // Fighting -> Fairy
	
	global.type_chart[9][11] = 0.5;  // Rock -> Ground
	global.type_chart[9][8] = 0.5;   // Rock -> Fighting
	global.type_chart[9][15] = 0.5;  // Rock -> Steel
	
	global.type_chart[10][17] = 0.5; // Ghost -> Dark
	
	global.type_chart[11][3] = 0.5;  // Ground -> Grass
	global.type_chart[11][6] = 0.5;  // Ground -> Bug
	
	global.type_chart[12][12] = 0.5; // Poison -> Poison
	global.type_chart[12][9] = 0.5;  // Poison -> Rock
	global.type_chart[12][11] = 0.5; // Poison -> Ground
	global.type_chart[12][10] = 0.5; // Poison -> Ghost
	
	global.type_chart[13][1] = 0.5;  // Ice -> Fire
	global.type_chart[13][2] = 0.5;  // Ice -> Water
	global.type_chart[13][13] = 0.5; // Ice -> Ice
	global.type_chart[13][15] = 0.5; // Ice -> Steel
	
	global.type_chart[14][17] = 2.0; // Fairy -> Fire
	global.type_chart[14][12] = 2.0; // Fairy -> Poison
	global.type_chart[14][15] = 2.0; // Fairy -> Steel
	
	global.type_chart[15][1] = 0.5;  // Steel -> Fire
	global.type_chart[15][2] = 0.5;  // Steel -> Water
	global.type_chart[15][4] = 0.5;  // Steel -> Electric
	global.type_chart[15][15] = 0.5; // Steel -> Steel
	
	global.type_chart[16][4] = 0.5;  // Flying -> Electric
	global.type_chart[16][9] = 0.5;  // Flying -> Rock
	global.type_chart[16][15] = 0.5; // Flying -> Steel
	
	global.type_chart[17][10] = 0.5; // Dark -> Fighting
	global.type_chart[17][14] = 0.5; // Dark -> Fairy
	global.type_chart[17][17] = 0.5; // Dark -> Dark

	// Immunities (0x)
	global.type_chart[0][10] = 0.0;  // Normal -> Ghost (no effect)
	
	global.type_chart[4][11] = 0.0;  // Electric -> Ground (no effect)
	
	global.type_chart[7][14] = 0.0;  // Dragon -> Fairy (no effect)
	
	global.type_chart[8][10] = 0.0;  // Fighting -> Ghost (no effect)
	
	global.type_chart[10][0] = 0.0;  // Ghost -> Normal (no effect)
	
	global.type_chart[11][16] = 0.0; // Ground -> Flying (no effect)
	
	global.type_chart[12][10] = 0.0; // Poison -> Steel (no effect)
	
	global.type_chart[5][17] = 0.0;  // Psychic -> Dark (no effect)

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
	global.type_colors[14] = global.c_fairy;
	global.type_colors[15] = global.c_steel;
	global.type_colors[16] = global.c_flying;
	global.type_colors[17] = global.c_dark;
	
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
	// F-022: Center player in middle segment instead of town center
	var middle_segment = floor(building_limit / 2);
	global.player_x = middle_segment * global.plot_width + (global.plot_width / 2);
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
	
	// F-022: Initialize spawn segment system for dynamic spawning and patrol
	
	// F-022 Segment constants
	global.SPAWN_EMPTY = 0;
	global.SPAWN_ITEM = 1;
	global.SPAWN_POKEMON_A = 2;
	global.SPAWN_POKEMON_B = 3;
	global.SPAWN_RIVAL = 4;
	
	// Create non-shuffled spawn segments (left to right order)
	var total_segments = array_length(global.plot_segments);
	global.spawn_segments = array_create(total_segments);
	
	// Fill spawn segments in sequential order (not shuffled like plot_segments)
	for (var seg_i = 0; seg_i < total_segments; seg_i++) {
		global.spawn_segments[seg_i] = seg_i * global.plot_width + (global.plot_width / 2);
	}
	
	// Create tracking arrays for spawn segments
	global.spawn_segment_occupancy = array_create(total_segments, global.SPAWN_EMPTY);
	global.spawn_segment_objects = array_create(total_segments, noone);
	global.available_spawn_segments = [];
	
	// All spawn segments initially available (buildings are separate layer)
	for (var seg_i = 0; seg_i < total_segments; seg_i++) {
		array_push(global.available_spawn_segments, seg_i);
	}
	
	show_debug_message("Initialized " + string(total_segments) + " spawn segments for F-022 system");
	
	// F-022 segment management functions
	global.SCR_Get_Player_Segment = function() {
		// Find which spawn segment the player is currently in
		var player_x = instance_exists(OBJ_Player) ? OBJ_Player.x : global.player_x;
		
		for (var i = 0; i < array_length(global.spawn_segments); i++) {
			var segment_x = global.spawn_segments[i];
			var segment_left = segment_x - (global.plot_width / 2);
			var segment_right = segment_x + (global.plot_width / 2);
			
			if (player_x >= segment_left && player_x <= segment_right) {
				return i;
			}
		}
		
		return -1; // Player not in any segment (shouldn't happen)
	}
	
	global.SCR_Reserve_Spawn_Segment_Safe = function(object_type, exclude_adjacent) {
		// Get player's current segment
		var player_segment = global.SCR_Get_Player_Segment();
		var safe_segments = [];
		var total_segments = array_length(global.spawn_segments);
		
		// Find actual leftmost and rightmost segment positions (once)
		var min_x = 999999;
		var max_x = -999999;
		var leftmost_segment = -1;
		var rightmost_segment = -1;
		
		for (var j = 0; j < total_segments; j++) {
			var check_x = global.SCR_Get_Segment_Center(j);
			if (check_x < min_x) {
				min_x = check_x;
				leftmost_segment = j;
			}
			if (check_x > max_x) {
				max_x = check_x;
				rightmost_segment = j;
			}
		}
		
		for (var i = 0; i < array_length(global.available_spawn_segments); i++) {
			var segment_id = global.available_spawn_segments[i];
			var is_safe = true;
			
			if (exclude_adjacent && player_segment != -1) {
				// Find segments spatially adjacent to player (not by ID)
				var player_x = global.SCR_Get_Segment_Center(player_segment);
				var segment_x = global.SCR_Get_Segment_Center(segment_id);
				
				// Exclude if this segment is within one segment width of player
				if (abs(segment_x - player_x) <= global.plot_width) {
					is_safe = false;
				}
			}
			
			// Exclude edge segments (leftmost and rightmost positions in town)
			if (segment_id == leftmost_segment || segment_id == rightmost_segment) {
				is_safe = false;
			}
			
			if (is_safe) {
				array_push(safe_segments, segment_id);
			}
		}
		
		// Check if any safe segments available
		if (array_length(safe_segments) == 0) {
			show_debug_message("No safe segments available for type: " + string(object_type) + " (excluding adjacent to player and edge segments)");
			return -1;
		}
		
		// Get random safe segment
		var random_index = irandom(array_length(safe_segments) - 1);
		var segment_id = safe_segments[random_index];
		
		// Reserve the segment
		global.spawn_segment_occupancy[segment_id] = object_type;
		
		// Remove from available segments list
		for (var i = 0; i < array_length(global.available_spawn_segments); i++) {
			if (global.available_spawn_segments[i] == segment_id) {
				array_delete(global.available_spawn_segments, i, 1);
				break;
			}
		}
		
		show_debug_message("Reserved safe segment " + string(segment_id) + " for type: " + string(object_type) + " (player in segment: " + string(player_segment) + ", excluded edges)");
		return segment_id;
	}
	
	global.SCR_Release_Spawn_Segment = function(segment_id) {
		// Validate segment ID
		if (segment_id < 0 || segment_id >= array_length(global.spawn_segment_occupancy)) {
			show_debug_message("Invalid segment ID for release: " + string(segment_id));
			return false;
		}
		
		// Only release if actually occupied
		if (global.spawn_segment_occupancy[segment_id] == global.SPAWN_EMPTY) {
			show_debug_message("Segment " + string(segment_id) + " already empty");
			return false;
		}
		
		// Release the segment
		global.spawn_segment_occupancy[segment_id] = global.SPAWN_EMPTY;
		global.spawn_segment_objects[segment_id] = noone;
		array_push(global.available_spawn_segments, segment_id);
		
		show_debug_message("Released segment: " + string(segment_id));
		return true;
	}
	
	global.SCR_Clear_All_Spawn_Segments = function() {
		// Force clear all segments (useful for room transitions or debugging)
		var total_segments = array_length(global.spawn_segments);
		
		// Reset all tracking arrays
		global.spawn_segment_occupancy = array_create(total_segments, global.SPAWN_EMPTY);
		global.spawn_segment_objects = array_create(total_segments, noone);
		global.available_spawn_segments = [];
		
		// Make all segments available again
		for (var i = 0; i < total_segments; i++) {
			array_push(global.available_spawn_segments, i);
		}
		
		// F-022: Don't clear Pokemon positions - preserve town state
		// Pokemon should respawn in same locations after room transitions
		
		show_debug_message("CLEARED ALL SPAWN SEGMENTS - Reset " + string(total_segments) + " segments and Pokemon positions");
	}
	
	global.SCR_Debug_Spawn_Segments = function() {
		show_debug_message("=== SPAWN SEGMENT DEBUG ===");
		show_debug_message("Available segments: " + string(array_length(global.available_spawn_segments)));
		show_debug_message("Available segment IDs: " + string(global.available_spawn_segments));
		
		var occupied_count = 0;
		for (var i = 0; i < array_length(global.spawn_segment_occupancy); i++) {
			if (global.spawn_segment_occupancy[i] != global.SPAWN_EMPTY) {
				occupied_count++;
				var type_name = "UNKNOWN";
				switch(global.spawn_segment_occupancy[i]) {
					case global.SPAWN_ITEM: type_name = "ITEM"; break;
					case global.SPAWN_POKEMON_A: type_name = "POKEMON_A"; break;
					case global.SPAWN_POKEMON_B: type_name = "POKEMON_B"; break;
					case global.SPAWN_RIVAL: type_name = "RIVAL"; break;
				}
				show_debug_message("Segment " + string(i) + ": " + type_name + " (object: " + string(global.spawn_segment_objects[i]) + ")");
			}
		}
		show_debug_message("Total occupied segments: " + string(occupied_count));
		show_debug_message("=========================");
	}
	
	// Helper function for manual clearing - can be called from debug console
	global.clear_segments = function() {
		global.SCR_Clear_All_Spawn_Segments();
	}
	
	// Helper function for manual debugging - can be called from debug console  
	global.debug_segments = function() {
		global.SCR_Debug_Spawn_Segments();
	}
	
	global.SCR_Get_Segment_Center = function(segment_id) {
		// Use spawn segments for spawnable objects (sequential left-to-right)
		return global.spawn_segments[segment_id];
	}
	
	global.SCR_Get_Segment_Patrol_Bounds = function(segment_id) {
		// Calculate patrol boundaries for a given segment with dead zone buffer
		var center_x = global.SCR_Get_Segment_Center(segment_id);
		var patrol_buffer = 50; // 50px dead zone from segment edges
		var patrol_left = center_x - (global.plot_width / 2) + patrol_buffer;
		var patrol_right = center_x + (global.plot_width / 2) - patrol_buffer;
		
		return [patrol_left, patrol_right];
	}
	
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

	// F-026: Initialize legendary Pokemon flag system
	// Initialize legendary flags array
	for (var i = 1; i <= 1000; i++) {
		global.Dex_Legendary[i] = false;
	}

	// Battle System Settings
	global.wild_pokemon_flee_chance = 1; // Wild Pokemon flee chance percentage (1% default)
	global.flee_success_modifier = 1; // Flee success rate modifier for both player and wild Pokemon (1.0 = normal, 0.1 = 10% chance, 0.0 = never succeed)
	
	// Rival Battle System
	global.rival_pokemon_id = 0;
	global.rival_battle_milestones = [7, 15, 25, 35, 45, 55];
	global.rival_completed_milestones = [];
	global.inputs_disabled = false;
	global.camera_sequence_active = false;
	global.rival_battle_pokemon_id = 0; // Separate global for battle system
	global.rival_battle_level = 0;
	global.rival_milestone_level = 0; // Store the milestone level for consistent battles
	global.temp_wild_pokemon_a_id = 0; // Temp storage for wild Pokemon during rival battles
	global.temp_wild_pokemon_b_id = 0;
	global.is_trainer_battle = false;
	global.treasure_limit_override = -1; // -1 means no override, use normal treasure_limit
}

