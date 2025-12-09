/*
 * SCR_Biome_Habitats.gml
 *
 * HABITAT AND BIOME SYSTEM DEFINITIONS
 *
 * Defines all habitats and their biome/background assignments.
 * Based on habitat data from theworldofpokemon.com
 *
 * Total Habitats: 23
 * Total Biomes: 6
 *
 * AUTO-GENERATED - Integrated for F-001 Adventure System
 */

function SCR_Biome_Habitats() {

    // Initialize arrays
    global.Biome_Names = [];
    global.Habitat_Names = [];
    global.Habitat_Biome = [];
    global.Habitat_Backgrounds = [];

    // ===== BIOMES =====
    global.Biome_Names[0] = "Forest";
    global.Biome_Names[1] = "Fields";
    global.Biome_Names[2] = "Mountains";
    global.Biome_Names[3] = "Water";
    global.Biome_Names[4] = "Town";
    global.Biome_Names[5] = "Ice";

    // ===== BIOME TOWN BACKGROUNDS (I-027 / F-029) =====
    // Used for trainer battles (rivals, gym leaders) to provide biome-themed battle locations
    // F-029: Store background indices instead of strings for centralized background management
    global.biome_town = [];
    var biome_index = 0;

    global.biome_town[biome_index] = SCR_Get_Background_Index("BG_Forest_Town");      // Forest
    biome_index++;
    global.biome_town[biome_index] = SCR_Get_Background_Index("BG_Savanna_Town");     // Fields
    biome_index++;
    global.biome_town[biome_index] = SCR_Get_Background_Index("BG_Mountain_Town");    // Mountains
    biome_index++;
    global.biome_town[biome_index] = SCR_Get_Background_Index("BG_Water_Town");       // Water
    biome_index++;
    global.biome_town[biome_index] = SCR_Get_Background_Index("BG_Town_Town");        // Town (existing main town background)
    biome_index++;
    global.biome_town[biome_index] = SCR_Get_Background_Index("BG_Snow_Town");        // Ice
    biome_index++;

    // ===== HABITATS =====
    // F-029: Store background indices for centralized management
    var habitat_index = 0;

    // ===== FOREST BIOME (0) =====
    global.Habitat_Names[habitat_index] = "Temperate-Forest";
    global.Habitat_Biome[habitat_index] = 0;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Temperate_Forest");
    habitat_index++;
    // Temperate and deciduous forests

    global.Habitat_Names[habitat_index] = "Tropical-Jungle";
    global.Habitat_Biome[habitat_index] = 0;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Jungle");
    habitat_index++;
    // Tropical jungles and rainforests

    global.Habitat_Names[habitat_index] = "Woodland";
    global.Habitat_Biome[habitat_index] = 0;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Woodland");
    habitat_index++;
    // Woodlands and groves

    global.Habitat_Names[habitat_index] = "Dark-Forest";
    global.Habitat_Biome[habitat_index] = 0;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Dark_Forest");
    habitat_index++;
    // Dark forests, cemeteries, abandoned areas

    // ===== FIELDS BIOME (1) =====
    global.Habitat_Names[habitat_index] = "Grassland";
    global.Habitat_Biome[habitat_index] = 1;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Grassland");
    habitat_index++;
    // Fields, meadows, and grasslands

    global.Habitat_Names[habitat_index] = "Savanna";
    global.Habitat_Biome[habitat_index] = 1;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Savanna");
    habitat_index++;
    // Savannas, plains, and prairies

    global.Habitat_Names[habitat_index] = "Farmland";
    global.Habitat_Biome[habitat_index] = 1;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Farm");
    habitat_index++;
    // Farms, ranches, and cultivated areas

    // ===== MOUNTAINS BIOME (2) =====
    global.Habitat_Names[habitat_index] = "Mountain";
    global.Habitat_Biome[habitat_index] = 2;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Mountain");
    habitat_index++;
    // Mountains and peaks

    global.Habitat_Names[habitat_index] = "Volcano";
    global.Habitat_Biome[habitat_index] = 2;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Volcano");
    habitat_index++;
    // Active and dormant volcanoes

    global.Habitat_Names[habitat_index] = "Cave";
    global.Habitat_Biome[habitat_index] = 2;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Cave");
    habitat_index++;
    // Caves, caverns, and underground tunnels

    global.Habitat_Names[habitat_index] = "Badlands";
    global.Habitat_Biome[habitat_index] = 2;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Badlands");
    habitat_index++;
    // Badlands, scrublands, rocky wastelands

    global.Habitat_Names[habitat_index] = "Desert";
    global.Habitat_Biome[habitat_index] = 2;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Desert");
    habitat_index++;
    // Deserts and arid regions

    // ===== WATER BIOME (3) =====
    global.Habitat_Names[habitat_index] = "Ocean";
    global.Habitat_Biome[habitat_index] = 3;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Ocean");
    habitat_index++;
    // Oceans, seas, and deep water

    global.Habitat_Names[habitat_index] = "Lake";
    global.Habitat_Biome[habitat_index] = 3;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Lake");
    habitat_index++;
    // Lakes and ponds

    global.Habitat_Names[habitat_index] = "River";
    global.Habitat_Biome[habitat_index] = 3;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_River");
    habitat_index++;
    // Streams, rivers, and flowing water

    global.Habitat_Names[habitat_index] = "Beach";
    global.Habitat_Biome[habitat_index] = 3;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Beach");
    habitat_index++;
    // Beaches, shores, and coastal areas

    global.Habitat_Names[habitat_index] = "Wetland";
    global.Habitat_Biome[habitat_index] = 3;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Wetland");
    habitat_index++;
    // Swamps, bogs, marshes, and humid areas

    // ===== TOWN BIOME (4) =====
    global.Habitat_Names[habitat_index] = "Urban";
    global.Habitat_Biome[habitat_index] = 4;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Urban");
    habitat_index++;
    // Cities, towns, and urban areas

    global.Habitat_Names[habitat_index] = "Industrial";
    global.Habitat_Biome[habitat_index] = 4;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Industrial");
    habitat_index++;
    // Power plants, factories, industrial zones

    global.Habitat_Names[habitat_index] = "Ruins";
    global.Habitat_Biome[habitat_index] = 4;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Ruins");
    habitat_index++;
    // Abandoned buildings, ruins, alleyways

    // ===== ICE BIOME (5) =====
    global.Habitat_Names[habitat_index] = "Polar";
    global.Habitat_Biome[habitat_index] = 5;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Polar");
    habitat_index++;
    // Polar seas, arctic, and frozen oceans

    global.Habitat_Names[habitat_index] = "Glacier";
    global.Habitat_Biome[habitat_index] = 5;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Glacier");
    habitat_index++;
    // Glaciers, icy caves, and mountain peaks

    global.Habitat_Names[habitat_index] = "Tundra";
    global.Habitat_Biome[habitat_index] = 5;
    global.Habitat_Backgrounds[habitat_index] = SCR_Get_Background_Index("BG_Tundra");
    habitat_index++;
    // Tundras and boreal forests

    // Initialize Pokemon habitat arrays (for all Pokemon IDs)
    for (var i = 1; i <= 1000; i++) {
        global.Dex_Habitats[i] = [];
    }

    show_debug_message("Loaded " + string(array_length(global.Habitat_Names)) + " habitats across " + string(array_length(global.Biome_Names)) + " biomes");
}
