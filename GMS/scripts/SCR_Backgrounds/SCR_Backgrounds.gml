/*
 * SCR_Backgrounds.gml
 *
 * BACKGROUND POSITIONING SYSTEM
 *
 * Defines all battle backgrounds and their character positioning coordinates.
 * Enables per-background customization of Pokemon placement in battle scenes.
 *
 * Total Backgrounds: 29 (6 biome towns + 23 habitats)
 *
 * Part of F-029 AI-Generated Background Assets
 */

function SCR_Backgrounds() {

    // Initialize background positioning arrays
    global.background_name = [];
    global.background_wild_x = [];      // X coordinate for wild Pokemon
    global.background_wild_y = [];      // Y coordinate for wild Pokemon
    global.background_player_x = [];    // X coordinate for player Pokemon
    global.background_player_y = [];    // Y coordinate for player Pokemon

    var bg_index = 0;

    // ===== BIOME TOWN BACKGROUNDS (6) =====
    // Used for trainer battles (rivals, gym leaders)

    // Forest Town - Forest biome
    global.background_name[bg_index] = "BG_Forest_Town";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Savanna Town - Fields biome
    global.background_name[bg_index] = "BG_Savanna_Town";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Mountain Town - Mountains biome
    global.background_name[bg_index] = "BG_Mountain_Town";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Water Town - Water biome (port/dock)
    global.background_name[bg_index] = "BG_Water_Town";
    global.background_wild_x[bg_index] = 800;
    global.background_wild_y[bg_index] = 200;
    global.background_player_x[bg_index] = 630;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Town Town - Town biome (main town)
    global.background_name[bg_index] = "BG_Town_Town";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Snow Town - Ice biome
    global.background_name[bg_index] = "BG_Snow_Town";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // ===== FOREST BIOME HABITATS (4) =====

    // Temperate Forest
    global.background_name[bg_index] = "BG_Temperate_Forest";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Jungle
    global.background_name[bg_index] = "BG_Jungle";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Woodland
    global.background_name[bg_index] = "BG_Woodland";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Dark Forest
    global.background_name[bg_index] = "BG_Dark_Forest";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // ===== FIELDS BIOME HABITATS (3) =====

    // Grassland
    global.background_name[bg_index] = "BG_Grassland";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Savanna
    global.background_name[bg_index] = "BG_Savanna";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Farm
    global.background_name[bg_index] = "BG_Farm";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // ===== MOUNTAINS BIOME HABITATS (5) =====

    // Mountain
    global.background_name[bg_index] = "BG_Mountain";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Volcano
    global.background_name[bg_index] = "BG_Volcano";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Cave
    global.background_name[bg_index] = "BG_Cave";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Badlands
    global.background_name[bg_index] = "BG_Badlands";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Desert
    global.background_name[bg_index] = "BG_Desert";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // ===== WATER BIOME HABITATS (5) =====

    // Ocean
    global.background_name[bg_index] = "BG_Ocean";
    global.background_wild_x[bg_index] = 860;
    global.background_wild_y[bg_index] = 165;
    global.background_player_x[bg_index] = 630;
    global.background_player_y[bg_index] = 255;
    bg_index++;

    // Lake
    global.background_name[bg_index] = "BG_Lake";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // River
    global.background_name[bg_index] = "BG_River";
    global.background_wild_x[bg_index] = 840;
    global.background_wild_y[bg_index] = 175;
    global.background_player_x[bg_index] = 545;
    global.background_player_y[bg_index] = 310;
    bg_index++;

    // Beach
    global.background_name[bg_index] = "BG_Beach";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Wetland
    global.background_name[bg_index] = "BG_Wetland";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // ===== TOWN BIOME HABITATS (3) =====

    // Urban
    global.background_name[bg_index] = "BG_Urban";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Industrial
    global.background_name[bg_index] = "BG_Industrial";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Ruins
    global.background_name[bg_index] = "BG_Ruins";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // ===== ICE BIOME HABITATS (3) =====

    // Polar
    global.background_name[bg_index] = "BG_Polar";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Glacier
    global.background_name[bg_index] = "BG_Glacier";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Tundra
    global.background_name[bg_index] = "BG_Tundra";
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    show_debug_message("Loaded " + string(array_length(global.background_name)) + " battle backgrounds with positioning data");
}
