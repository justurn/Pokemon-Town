/*
 * SCR_Backgrounds.gml
 *
 * BACKGROUND POSITIONING SYSTEM
 *
 * Defines all battle backgrounds, their icons, and character positioning coordinates.
 * Enables per-background customization of Pokemon placement in battle scenes.
 *
 * Total Backgrounds: 30 (7 biome towns + 23 habitats)
 * Total Icons: 30 (256x256 pixel art icons)
 *
 * Part of F-029 AI-Generated Background Assets
 */

function SCR_Backgrounds() {

    // Initialize background positioning arrays
    global.background_name = [];
    global.background_icon = [];        // Icon sprite for background selection
    global.background_wild_x = [];      // X coordinate for wild Pokemon
    global.background_wild_y = [];      // Y coordinate for wild Pokemon
    global.background_player_x = [];    // X coordinate for player Pokemon
    global.background_player_y = [];    // Y coordinate for player Pokemon

    var bg_index = 0;

    // ===== BIOME TOWN BACKGROUNDS (7) =====
    // Used for trainer battles (rivals, gym leaders)

    // Forest Town - Forest biome
    global.background_name[bg_index] = "BG_Forest_Town";
    global.background_icon[bg_index] = ICO_Forest_Town;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Savanna Town - Fields biome
    global.background_name[bg_index] = "BG_Savanna_Town";
    global.background_icon[bg_index] = ICO_Savanna_Town;
    global.background_wild_x[bg_index] = 900;
    global.background_wild_y[bg_index] = 260;
    global.background_player_x[bg_index] = 670;
    global.background_player_y[bg_index] = 420;
    bg_index++;

    // Mountain Town - Mountains biome
    global.background_name[bg_index] = "BG_Mountain_Town";
    global.background_icon[bg_index] = ICO_Mountain_Town;
    global.background_wild_x[bg_index] = 820;
    global.background_wild_y[bg_index] = 300;
    global.background_player_x[bg_index] = 730;
    global.background_player_y[bg_index] = 430;
    bg_index++;

    // Water Town - Water biome (port/dock)
    global.background_name[bg_index] = "BG_Water_Town";
    global.background_icon[bg_index] = ICO_Dock_Town;
    global.background_wild_x[bg_index] = 800;
    global.background_wild_y[bg_index] = 200;
    global.background_player_x[bg_index] = 630;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Castle Town - SPARE
    global.background_name[bg_index] = "BG_Castle";
    global.background_icon[bg_index] = ICO_Castle;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Snow Town - Ice biome
    global.background_name[bg_index] = "BG_Snow_Town";
    global.background_icon[bg_index] = ICO_Snow_Town;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Grass Town - Town biome
    global.background_name[bg_index] = "BG_Grass_Town";
    global.background_icon[bg_index] = ICO_Grass_Town;
    global.background_wild_x[bg_index] = 800;
    global.background_wild_y[bg_index] = 215;
    global.background_player_x[bg_index] = 640;
    global.background_player_y[bg_index] = 400;
    bg_index++;

    // ===== FOREST BIOME HABITATS (4) =====

    // Temperate Forest
    global.background_name[bg_index] = "BG_Temperate_Forest";
    global.background_icon[bg_index] = ICO_Temperate_Forest;
    global.background_wild_x[bg_index] = 820;
    global.background_wild_y[bg_index] = 285;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Jungle
    global.background_name[bg_index] = "BG_Jungle";
    global.background_icon[bg_index] = ICO_Jungle;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Woodland
    global.background_name[bg_index] = "BG_Woodland";
    global.background_icon[bg_index] = ICO_Woodlands;
    global.background_wild_x[bg_index] = 890;
    global.background_wild_y[bg_index] = 280;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Dark Forest
    global.background_name[bg_index] = "BG_Dark_Forest";
    global.background_icon[bg_index] = ICO_Dark_Forest;
    global.background_wild_x[bg_index] = 880;
    global.background_wild_y[bg_index] = 315;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // ===== FIELDS BIOME HABITATS (3) =====

    // Grassland
    global.background_name[bg_index] = "BG_Grassland";
    global.background_icon[bg_index] = ICO_Grassland;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Savanna
    global.background_name[bg_index] = "BG_Savanna";
    global.background_icon[bg_index] = ICO_Savanna;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Farm
    global.background_name[bg_index] = "BG_Farm";
    global.background_icon[bg_index] = ICO_Farm;
    global.background_wild_x[bg_index] = 915;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 750;
    global.background_player_y[bg_index] = 375;
    bg_index++;

    // ===== MOUNTAINS BIOME HABITATS (5) =====

    // Mountain
    global.background_name[bg_index] = "BG_Mountain";
    global.background_icon[bg_index] = ICO_Mountain;
    global.background_wild_x[bg_index] = 810;
    global.background_wild_y[bg_index] = 245;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Volcano
    global.background_name[bg_index] = "BG_Volcano";
    global.background_icon[bg_index] = ICO_Volcano;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Cave
    global.background_name[bg_index] = "BG_Cave";
    global.background_icon[bg_index] = ICO_Cave;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Badlands
    global.background_name[bg_index] = "BG_Badlands";
    global.background_icon[bg_index] = ICO_Badland;
    global.background_wild_x[bg_index] = 750;
    global.background_wild_y[bg_index] = 205;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Desert
    global.background_name[bg_index] = "BG_Desert";
    global.background_icon[bg_index] = ICO_Desert;
    global.background_wild_x[bg_index] = 720;
    global.background_wild_y[bg_index] = 185;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // ===== WATER BIOME HABITATS (5) =====

    // Ocean
    global.background_name[bg_index] = "BG_Ocean";
    global.background_icon[bg_index] = ICO_Ocean;
    global.background_wild_x[bg_index] = 860;
    global.background_wild_y[bg_index] = 165;
    global.background_player_x[bg_index] = 630;
    global.background_player_y[bg_index] = 255;
    bg_index++;

    // Lake
    global.background_name[bg_index] = "BG_Lake";
    global.background_icon[bg_index] = ICO_Lake;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // River
    global.background_name[bg_index] = "BG_River";
    global.background_icon[bg_index] = ICO_River;
    global.background_wild_x[bg_index] = 840;
    global.background_wild_y[bg_index] = 175;
    global.background_player_x[bg_index] = 545;
    global.background_player_y[bg_index] = 310;
    bg_index++;

    // Beach
    global.background_name[bg_index] = "BG_Beach";
    global.background_icon[bg_index] = ICO_Beach;
    global.background_wild_x[bg_index] = 820;
    global.background_wild_y[bg_index] = 170;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Wetland
    global.background_name[bg_index] = "BG_Wetland";
    global.background_icon[bg_index] = ICO_Wetlands;
    global.background_wild_x[bg_index] = 860;
    global.background_wild_y[bg_index] = 175;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // ===== TOWN BIOME HABITATS (3) =====

    // Urban
    global.background_name[bg_index] = "BG_Urban";
    global.background_icon[bg_index] = ICO_Urban;
    global.background_wild_x[bg_index] = 800;
    global.background_wild_y[bg_index] = 240;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Industrial
    global.background_name[bg_index] = "BG_Industrial";
    global.background_icon[bg_index] = ICO_Industrial;
    global.background_wild_x[bg_index] = 830;
    global.background_wild_y[bg_index] = 185;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Ruins
    global.background_name[bg_index] = "BG_Ruins";
    global.background_icon[bg_index] = ICO_Ruins;
    global.background_wild_x[bg_index] = 830;
    global.background_wild_y[bg_index] = 240;
    global.background_player_x[bg_index] = 675;
    global.background_player_y[bg_index] = 385;
    bg_index++;

    // ===== ICE BIOME HABITATS (3) =====

    // Polar
    global.background_name[bg_index] = "BG_Polar";
    global.background_icon[bg_index] = ICO_Polar;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 600;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Glacier
    global.background_name[bg_index] = "BG_Glacier";
    global.background_icon[bg_index] = ICO_Glacier;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    // Tundra
    global.background_name[bg_index] = "BG_Tundra";
    global.background_icon[bg_index] = ICO_Tundra;
    global.background_wild_x[bg_index] = 875;
    global.background_wild_y[bg_index] = 225;
    global.background_player_x[bg_index] = 650;
    global.background_player_y[bg_index] = 350;
    bg_index++;

    show_debug_message("Loaded " + string(array_length(global.background_name)) + " battle backgrounds with positioning data");
}
