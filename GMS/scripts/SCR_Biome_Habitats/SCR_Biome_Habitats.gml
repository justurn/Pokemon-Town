function SCR_Biome_Habitats()
{
	// === F-001 BIOME DEFINITIONS (George's Map Regions) ===
	// Biomes are player-selectable regions on the world map
	global.Biome_Names[0] = "Forest";
	global.Biome_Names[1] = "Fields";
	global.Biome_Names[2] = "Ice";
	global.Biome_Names[3] = "Mountains";
	global.Biome_Names[4] = "Water";
	global.Biome_Names[5] = "Town";

	// === F-001 HABITAT DEFINITIONS (Sub-regions within biomes) ===
	// Note: Habitats from PokéAPI - future can expand with theworldofpokemon.com data
	// Each habitat has: Name, Biome assignment, and Battle background
	// Uses SCR_Get_Biome_Index for readable biome assignment

	// Habitat 0: Forest
	global.Habitat_Names[0] = "Forest";
	global.Habitat_Biome[0] = SCR_Get_Biome_Index("Forest");
	global.Habitat_Backgrounds[0] = "BG_Woods_Battle";

	// Habitat 1: Grassland
	global.Habitat_Names[1] = "Grassland";
	global.Habitat_Biome[1] = SCR_Get_Biome_Index("Fields");
	global.Habitat_Backgrounds[1] = "BG_Summer_Battle";

	// Habitat 2: Mountain
	global.Habitat_Names[2] = "Mountain";
	global.Habitat_Biome[2] = SCR_Get_Biome_Index("Mountains");
	global.Habitat_Backgrounds[2] = "BG_Rock_Battle";

	// Habitat 3: Sea
	global.Habitat_Names[3] = "Sea";
	global.Habitat_Biome[3] = SCR_Get_Biome_Index("Water");
	global.Habitat_Backgrounds[3] = "BG_Arena_Battle";

	// Habitat 4: Urban
	global.Habitat_Names[4] = "Urban";
	global.Habitat_Biome[4] = SCR_Get_Biome_Index("Town");
	global.Habitat_Backgrounds[4] = "BG_Autumn_Battle";

	// Habitat 5: Cave
	global.Habitat_Names[5] = "Cave";
	global.Habitat_Biome[5] = SCR_Get_Biome_Index("Mountains");
	global.Habitat_Backgrounds[5] = "BG_Dungeon_Battle";

	// Habitat 6: Waters-Edge
	global.Habitat_Names[6] = "Waters-Edge";
	global.Habitat_Biome[6] = SCR_Get_Biome_Index("Water");
	global.Habitat_Backgrounds[6] = "BG_Arena_Battle";

	// Habitat 7: Rough-Terrain (Ice biome)
	global.Habitat_Names[7] = "Rough-Terrain";
	global.Habitat_Biome[7] = SCR_Get_Biome_Index("Ice");
	global.Habitat_Backgrounds[7] = "BG_Snow_Battle";
	
	// Initialize Pokemon habitat arrays
	for (var i = 1; i <= 1000; i++) {
		global.Dex_Habitats[i] = [];
	}
}