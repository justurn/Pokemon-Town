/*
 * SCR_Pokedex_Init.gml
 * 
 * MAIN POKEMON POKEDEX COORDINATOR
 * 
 * This script initializes the complete Pokemon database by calling all 
 * generation-based modules in the correct order. This replaces the 
 * original monolithic SCR_Pokedex() function.
 * 
 * MODULES INITIALIZED:
 * - Basic Data (Names, Sprites, Types)
 * - Base Stats (HP, ATK, DEF, SPA, SPD, SPE) 
 * - Evolution (Evolution Levels, Egg Hatching)
 * 
 * ARCHITECTURE:
 * - Uses original Pokedex structure for maximum compatibility
 * - Modular generation-based organization for maintainability
 * - Each module handles 151 (Gen1) + 100 (Gen2) + 135 (Gen3) = 386 total Pokemon
 * 
 * USAGE:
 * Call this function once at game startup to initialize all Pokemon data.
 * 
 * CREATED: August 2025
 * UPDATED: September 2025 - Added Generation 3 support (F-025)
 * PURPOSE: Modular Pokedex refactoring solution for I-006
 */

function SCR_Pokedex() {
    // Initialize secondary types array (maintains original behavior)
    for (var i = 1; i <= 1000; i++) {
        global.Dex_Secondary_Types[i] = "";
    }
    
    // Biome and habitat system initialized in SCR_Initialise_Globals()
    
    // Load all Pokemon data modules in logical order
    
    // 1. Basic Information (Names, Sprites, Types)
    SCR_Pokemon_Basic_Gen1();      // Pokemon 1-151
    SCR_Pokemon_Basic_Gen2();      // Pokemon 152-251
    SCR_Pokemon_Basic_Gen3();      // Pokemon 252-386
    
    // 2. Base Stats (HP, Attack, Defense, etc.)
    SCR_Pokemon_Stats_Gen1();      // Pokemon 1-151
    SCR_Pokemon_Stats_Gen2();      // Pokemon 152-251
    SCR_Pokemon_Stats_Gen3();      // Pokemon 252-386
    
    // 3. Evolution & Breeding (Evolution Levels, Egg Hatching)
    SCR_Pokemon_Evolution_Gen1();  // Pokemon 1-151
    SCR_Pokemon_Evolution_Gen2();  // Pokemon 152-251
    SCR_Pokemon_Evolution_Gen3();  // Pokemon 252-386
    
    // 4. Habitat & Biome Assignments (F-001) - Real PokéAPI Data
    // Habitat assignments are now included in SCR_Pokemon_Basic_Gen1()
    
    // Optional: Debug verification
    show_debug_message("Pokedex initialization complete - 386 Pokemon loaded");
}