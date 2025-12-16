// F-001 Phase 4: Select Pokemon for adventure battles BEFORE creating battle objects
if (global.adventure_active)
{
    // Phase 4: selected_habitat_index is already set by OBJ_Master_Adventure
    // global.is_trainer_battle flag indicates boss vs habitat battle

    if (global.is_trainer_battle) {
        // Boss battle - use biome town for background (handled by SCR_Choose_Background)
        show_debug_message("Adventure BOSS BATTLE - Habitat: " + global.Habitat_Names[global.selected_habitat_index]);
    } else {
        // Regular habitat battle - player chose this habitat in adventure path
        show_debug_message("Adventure Habitat Battle - " + global.Habitat_Names[global.selected_habitat_index]);
    }

    // Build filtered Pokemon list with weighted spawning for the selected habitat
    // Boss battles get power offset to select stronger Pokemon
    var power_offset = global.is_trainer_battle ? global.adventure_boss_power_offset : 0;
    SCR_Wild_Pokemon([], power_offset);

    // Weighted random selection (matching SCR_Sequencing logic)
    var rand_pick = random(global.total_spawn_weight);
    var cumulative_weight = 0;
    global.wild_pokemon_battle_id = 0; // Default fallback

    for (var i = 0; i < array_length(global.valid_wild_pokemon); i++) {
        cumulative_weight += global.wild_spawn_weights[i];
        if (rand_pick < cumulative_weight) {
            global.wild_pokemon_battle_id = global.valid_wild_pokemon[i];
            break;
        }
    }

    if (global.is_trainer_battle) {
        show_debug_message("BOSS BATTLE - Pokemon: " + global.Dex_Names[global.wild_pokemon_battle_id] + " (ID " + string(global.wild_pokemon_battle_id) + ") with BST power offset +" + string(power_offset));
    } else {
        show_debug_message("Selected wild Pokemon: " + global.Dex_Names[global.wild_pokemon_battle_id] + " (ID " + string(global.wild_pokemon_battle_id) + ") from " + global.Habitat_Names[global.selected_habitat_index]);
    }
}

// I-034 Fix: Town battles - randomly select habitat from selected biome
// (Adventure battles already set habitat in lines 1-49)
if (!global.adventure_active) {
    var biome_index = global.selected_biome_index;
    var biome_name = global.Biome_Names[biome_index];

    // Get all habitats that belong to this biome
    var available_habitats = SCR_Get_Habitats_For_Biome(biome_index);

    // Randomly select one habitat from the available habitats
    if (array_length(available_habitats) > 0) {
        global.selected_habitat_index = available_habitats[irandom(array_length(available_habitats) - 1)];
        show_debug_message("Town Battle - Biome: " + biome_name + " → Habitat: " + global.Habitat_Names[global.selected_habitat_index]);
    } else {
        // Fallback: use first habitat in Town biome
        show_debug_message("ERROR: No habitats found for biome " + biome_name);
        var town_habitats = SCR_Get_Habitats_For_Biome(SCR_Get_Biome_Index("Town"));
        global.selected_habitat_index = (array_length(town_habitats) > 0) ? town_habitats[0] : 0;
    }
}

// Set background using centralized selection logic (I-027)
selected_background = SCR_Choose_Background();
sprite_index = selected_background;
image_speed = 0; // Stop animation - use frame 0 only
image_index = 0;

x = 0
y = 0

// F-029: Dynamic background positioning system
// Get background name from sprite asset
var bg_name = sprite_get_name(selected_background);
var bg_index = SCR_Get_Background_Index(bg_name);

// Use background-specific positions or fallback to defaults
if (bg_index != -1) {
    pokemon_b_x = global.background_wild_x[bg_index];    // Wild Pokemon
    pokemon_b_y = global.background_wild_y[bg_index];
    pokemon_a_x = global.background_player_x[bg_index];  // Player Pokemon
    pokemon_a_y = global.background_player_y[bg_index];
    show_debug_message("Using custom positioning for " + bg_name + " (Wild: " + string(pokemon_b_x) + ", " + string(pokemon_b_y) + " | Player: " + string(pokemon_a_x) + ", " + string(pokemon_a_y) + ")");
} else {
    // Fallback to default positions if background not found
    pokemon_a_x = 650;  // Player Pokemon - bottom right, below info panel
    pokemon_a_y = 350;
    pokemon_b_x = 875;  // Wild Pokemon
    pokemon_b_y = 225;
    show_debug_message("WARNING: Using default positioning for " + bg_name);
}

player_pokemon = instance_create_layer(pokemon_a_x, pokemon_a_y, "Instances", OBJ_Battle_Pokemon_Tame);
wild_pokemon = instance_create_layer(pokemon_b_x, pokemon_b_y, "Instances", OBJ_Battle_Pokemon_Wild);

// Player always chooses their action first, regardless of speed
// Speed only determines who executes their attack first after both choose
battle_state = "PLAYER_TURN";
show_debug_message("Player chooses action first");

// Store who attacks first after choices are made
if (player_pokemon.speedstat > wild_pokemon.speedstat) {
    attacks_first = "PLAYER";
    show_debug_message("Player will attack first");
} else if (player_pokemon.speedstat < wild_pokemon.speedstat) {
    attacks_first = "WILD";
    show_debug_message("Wild Pokemon will attack first");
} else {
    attacks_first = choose("WILD", "PLAYER");
    show_debug_message("Same speeds - random first attacker: " + attacks_first);
}

// Action storage for when wild Pokemon attacks first
player_chosen_move = -1;
player_chosen_action = ""; // ATTACK, FLEE, ITEM

// Timing for sequential attacks
attack_delay_timer = 0;
attack_delay_duration = 60; // 1 second delay between attacks
waiting_for_second_attack = false;

player_turn_timer = room_speed;
wild_turn_timer = player_turn_timer;
turn_max = player_turn_timer;

// Battle UI State Management
battle_ui_state = "ACTION_SELECT"; // ACTION_SELECT, ATTACK_TYPE_SELECT, MOVE_SELECT, ITEM_SELECT, BATTLE_TEXT
selected_action = 0; // 0=Attack, 1=Item, 2=Flee
selected_attack_type = 0; // 0=Physical, 1=Special
selected_move = 0; // 0-3 for move slots (F-018 enhancement)
last_used_move = 0; // Remember the last move used for highlighting
battle_log = []; // Array to store battle messages
battle_log_scroll = 0; // Scroll position in battle log
max_log_messages = 15; // Maximum messages to keep

// UI Layout Constants
ui_left_panel_width = 512; // SPR_Side_Panel width
ui_action_section_height = 200; // Top section for actions
ui_text_section_height = 374; // Bottom section for battle text
ui_pokemon_info_height = 100; // Top/bottom Pokemon info areas

// Consistent Line Spacing System
font_small_line_spacing = 30; // Standard spacing for FNT_Small text in battle log
font_small_move_spacing = 28; // Spacing for FNT_Small text in move cells (slightly tighter)
battle_line_spacing = font_small_line_spacing; // Backward compatibility alias
battle_text_line_1_y = ui_action_section_height + 68; // First line Y position for battle text

// Action Menu Setup
action_menu = ["ATTACK", "ITEM", "FLEE"];
attack_type_menu = ["PHYSICAL", "SPECIAL"];

// Calculate best attack type for visual feedback
player_best_attack_type = (player_pokemon.attack > player_pokemon.spattack) ? 0 : 1;

// Input delay system (like OBJ_master_lab)
delay = 0;
delay_limit = 15; // Input delay to prevent too-fast menu navigation

// Flee delay system
flee_timer = 0;
flee_delay = 60; // 1 second delay before room transition

// Flee animation variables
flee_animation_active = false;
flee_animation_timer = 0;
flee_animation_duration = 45; // 0.75 seconds
flee_target_x = 0;
flee_who = ""; // "player" or "wild"

// Check if this is a trainer battle for special handling
if (variable_global_exists("is_trainer_battle") && global.is_trainer_battle) {
    show_debug_message("Trainer battle detected - special rewards enabled");
}

// Enhanced Victory Display System
victory_data = {
    xp_gained: 0,
    level_before: 0,
    level_after: 0,
    evolution_triggered: false,
    defeated_pokemon_name: "",
    new_pokemon_id: -1,
    
    // Stat tracking for before/after comparison
    stats_before: {
        attack: 0,
        sp_attack: 0,
        defence: 0,
        sp_defence: 0,
        speed: 0,
        health_max: 0
    },
    stats_after: {
        attack: 0,
        sp_attack: 0,
        defence: 0,
        sp_defence: 0,
        speed: 0,
        health_max: 0
    },
    stat_changes: {
        attack: 0,
        sp_attack: 0,
        defence: 0,
        sp_defence: 0,
        speed: 0,
        health_max: 0
    }
};

// Victory Animation Timers
enemy_faint_timer = 0;
enemy_faint_duration = 60;         // 1 second (was 2 seconds)
center_stage_timer = 0;
center_stage_duration = 60;        // 1 second  
xp_display_timer = 0;
xp_display_duration = 180;         // 3 seconds
level_up_timer = 0;
level_up_duration = 120;           // 2 seconds
evolution_timer = 0;
evolution_duration = 360;          // 6 seconds

// Pokemon Positioning
pokemon_center_x = ui_left_panel_width + (room_width - ui_left_panel_width) / 2;
pokemon_center_y = room_height / 2;
player_start_x = pokemon_a_x;
player_start_y = pokemon_a_y;

// XP Display Properties - Consistent variables used throughout all states
display_level = global.pokemon_level;      // Level used for XP bar calculations
display_xp = global.pokemon_experience;    // XP value shown in XP bar
xp_target = 0;                             // Target XP after gaining experience
xp_fill_speed = 3.0;
level_up_detected = false;

// XP Stage Tracking for Two-Stage Display
xp_display_stage = "CURRENT_LEVEL";  // "CURRENT_LEVEL" or "NEW_LEVEL"
xp_stage_1_complete = false;
next_level_threshold = 0;

// Evolution Animation Properties
evolution_background_alpha = 0;
sparkle_instances = [];
evolution_pokemon_id = -1;
evolution_alpha = 1;
evolution_flash_timer = 0;
evolution_scale = 3;

// Player defeat handling
player_faint_timer = 0;
player_faint_duration = 60; // 1 second (matches wild Pokemon)

// Debug state tracking to prevent spam
last_battle_state = "";
last_xp_stage = "";

