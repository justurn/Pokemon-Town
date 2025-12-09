pokedex_id = global.wild_pokemon_battle_id
pokemon_name = global.Dex_Names[pokedex_id];
primary_type = global.Dex_Primary_Types[pokedex_id];
primary_type_id = SCR_Get_Type_Index(primary_type);
secondary_type = global.Dex_Secondary_Types[pokedex_id];
secondary_type_id = SCR_Get_Type_Index(secondary_type);
sprite_index = global.Dex_Sprites[pokedex_id];

// Sprite Scaling
scale_factor = 2;
image_yscale = scale_factor;
image_xscale = scale_factor;

hb_height = 25;
hb_width = 250;
hb_gap = 150;

hb_x1 = x - hb_width - hb_gap;
hb_y1 = y - hb_height/2

hb_x2 = hb_x1 + hb_width
hb_y2 = hb_y1 + hb_height

// Assign base stats from the Pokémon's Pokedex ID
var base_attack = global.Dex_Attack[pokedex_id];
var base_spattack = global.Dex_SPattack[pokedex_id];
var base_defence = global.Dex_Defence[pokedex_id];
var base_spdefence = global.Dex_SPdefence[pokedex_id];
var base_speed = global.Dex_Speed[pokedex_id];
var base_hp = global.Dex_Health[pokedex_id];

// Level - I-028 Fix: Centralized level calculation for all battle types
if (variable_global_exists("is_trainer_battle") && global.is_trainer_battle) {
    // Trainer battles (town + adventure rivals) - harder than player
    global.wild_pokemon_level = global.pokemon_level + irandom(global.wild_pokemon_level_gap);
    level = global.wild_pokemon_level;
    show_debug_message("Trainer battle: scaled level " + string(level) + " (player: " + string(global.pokemon_level) + ")");
} else {
    // Wild Pokemon - easier than player
    global.wild_pokemon_level = global.pokemon_level - irandom(global.wild_pokemon_level_gap);
    level = global.wild_pokemon_level;
    show_debug_message("Wild Pokemon: scaled level " + string(level) + " (player: " + string(global.pokemon_level) + ")");
}

// Calculate Stats
attack = floor(((2 * base_attack * level) / 100) + 5);
spattack = floor(((2 * base_spattack * level) / 100) + 5);
defence = floor(((2 * base_defence * level) / 100) + 5);
spdefence = floor(((2 * base_spdefence * level) / 100) + 5);
speedstat = floor(((2 * base_speed * level) / 100) + 5);
max_hp = floor(((2 * base_hp * level) / 100) + level + 10);

// Other Stats
crit = global.pokemon_start_crit;
current_hp = max_hp

// F-018: Assign random moves to wild Pokemon
move_1 = 0;
move_2 = 0;
move_3 = 0;
move_4 = 0;
SCR_Assign_Random_Moves(self);







