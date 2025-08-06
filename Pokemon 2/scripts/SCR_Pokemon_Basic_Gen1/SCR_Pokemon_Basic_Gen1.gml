/*
 * SCR_Pokemon_Basic_Gen1.gml
 * 
 * POKEMON DATA MODULE - Generation 1 Basic Information
 * 
 * This script initializes Generation 1 Pokemon basic data (IDs 1-151):
 * - Names and sprites
 * - Primary and secondary types
 * 
 * Uses original Pokedex structure for maximum clarity and consistency.
 * 
 * EDITING GUIDELINES:
 * - Pokemon are in sequential order (1, 2, 3, 4...)
 * - Use official Pokemon names and types from bulbapedia.net
 * - Set secondary type to "" for single-type Pokemon
 * - Verify sprite constants exist before adding
 * 
 * CREATED: August 2025
 * POKEMON COUNT: 151 (Kanto Region)
 * EXTRACTED: From original SCR_Pokedex.gml via automation
 */

function SCR_Pokemon_Basic_Gen1() {
    // Pokemon 1 - "Bulbasaur"
    global.Dex_Names[1] = "Bulbasaur";
    global.Dex_Sprites[1] = SPR_Bulbasaur;
    global.Dex_Primary_Types[1] = "Grass";
    global.Dex_Secondary_Types[1] = "Poison";

    // Pokemon 2 - "Ivysaur"
    global.Dex_Names[2] = "Ivysaur";
    global.Dex_Sprites[2] = SPR_Ivysaur;
    global.Dex_Primary_Types[2] = "Grass";
    global.Dex_Secondary_Types[2] = "Poison";

    // Pokemon 3 - "Venusaur"
    global.Dex_Names[3] = "Venusaur";
    global.Dex_Sprites[3] = SPR_Venusaur;
    global.Dex_Primary_Types[3] = "Grass";
    global.Dex_Secondary_Types[3] = "Poison";

    // Pokemon 4 - "Charmander"
    global.Dex_Names[4] = "Charmander";
    global.Dex_Sprites[4] = SPR_Charmander;
    global.Dex_Primary_Types[4] = "Fire";
    global.Dex_Secondary_Types[4] = "";

    // Pokemon 5 - "Charmeleon"
    global.Dex_Names[5] = "Charmeleon";
    global.Dex_Sprites[5] = SPR_Charmeleon;
    global.Dex_Primary_Types[5] = "Fire";
    global.Dex_Secondary_Types[5] = "";

    // Pokemon 6 - "Charizard"
    global.Dex_Names[6] = "Charizard";
    global.Dex_Sprites[6] = SPR_Charizard;
    global.Dex_Primary_Types[6] = "Fire";
    global.Dex_Secondary_Types[6] = "Flying";

    // Pokemon 7 - "Squirtle"
    global.Dex_Names[7] = "Squirtle";
    global.Dex_Sprites[7] = SPR_Squirtle;
    global.Dex_Primary_Types[7] = "Water";
    global.Dex_Secondary_Types[7] = "";

    // Pokemon 8 - "Wartortle"
    global.Dex_Names[8] = "Wartortle";
    global.Dex_Sprites[8] = SPR_Wartortle;
    global.Dex_Primary_Types[8] = "Water";
    global.Dex_Secondary_Types[8] = "";

    // Pokemon 9 - "Blastoise"
    global.Dex_Names[9] = "Blastoise";
    global.Dex_Sprites[9] = SPR_Blastoise;
    global.Dex_Primary_Types[9] = "Water";
    global.Dex_Secondary_Types[9] = "";

    // Pokemon 10 - "Caterpie"
    global.Dex_Names[10] = "Caterpie";
    global.Dex_Sprites[10] = SPR_Caterpie;
    global.Dex_Primary_Types[10] = "Bug";
    global.Dex_Secondary_Types[10] = "";

    // Pokemon 11 - "Metapod"
    global.Dex_Names[11] = "Metapod";
    global.Dex_Sprites[11] = SPR_Metapod;
    global.Dex_Primary_Types[11] = "Bug";
    global.Dex_Secondary_Types[11] = "";

    // Pokemon 12 - "Butterfree"
    global.Dex_Names[12] = "Butterfree";
    global.Dex_Sprites[12] = SPR_Butterfree;
    global.Dex_Primary_Types[12] = "Bug";
    global.Dex_Secondary_Types[12] = "Flying";

    // Pokemon 13 - "Weedle"
    global.Dex_Names[13] = "Weedle";
    global.Dex_Sprites[13] = SPR_Weedle;
    global.Dex_Primary_Types[13] = "Bug";
    global.Dex_Secondary_Types[13] = "Poison";

    // Pokemon 14 - "Kakuna"
    global.Dex_Names[14] = "Kakuna";
    global.Dex_Sprites[14] = SPR_Kakuna;
    global.Dex_Primary_Types[14] = "Bug";
    global.Dex_Secondary_Types[14] = "Poison";

    // Pokemon 15 - "Beedrill"
    global.Dex_Names[15] = "Beedrill";
    global.Dex_Sprites[15] = SPR_Beedrill;
    global.Dex_Primary_Types[15] = "Bug";
    global.Dex_Secondary_Types[15] = "Poison";

    // Pokemon 16 - "Pidgey"
    global.Dex_Names[16] = "Pidgey";
    global.Dex_Sprites[16] = SPR_Pidgey;
    global.Dex_Primary_Types[16] = "Normal";
    global.Dex_Secondary_Types[16] = "Flying";

    // Pokemon 17 - "Pidgeotto"
    global.Dex_Names[17] = "Pidgeotto";
    global.Dex_Sprites[17] = SPR_Pidgeotto;
    global.Dex_Primary_Types[17] = "Normal";
    global.Dex_Secondary_Types[17] = "Flying";

    // Pokemon 18 - "Pidgeot"
    global.Dex_Names[18] = "Pidgeot";
    global.Dex_Sprites[18] = SPR_Pidgeot;
    global.Dex_Primary_Types[18] = "Normal";
    global.Dex_Secondary_Types[18] = "Flying";

    // Pokemon 19 - "Rattata"
    global.Dex_Names[19] = "Rattata";
    global.Dex_Sprites[19] = SPR_Rattata;
    global.Dex_Primary_Types[19] = "Normal";
    global.Dex_Secondary_Types[19] = "";

    // Pokemon 20 - "Raticate"
    global.Dex_Names[20] = "Raticate";
    global.Dex_Sprites[20] = SPR_Raticate;
    global.Dex_Primary_Types[20] = "Normal";
    global.Dex_Secondary_Types[20] = "";

    // Pokemon 21 - "Spearow"
    global.Dex_Names[21] = "Spearow";
    global.Dex_Sprites[21] = SPR_Spearow;
    global.Dex_Primary_Types[21] = "Normal";
    global.Dex_Secondary_Types[21] = "Flying";

    // Pokemon 22 - "Fearow"
    global.Dex_Names[22] = "Fearow";
    global.Dex_Sprites[22] = SPR_Fearow;
    global.Dex_Primary_Types[22] = "Normal";
    global.Dex_Secondary_Types[22] = "Flying";

    // Pokemon 23 - "Ekans"
    global.Dex_Names[23] = "Ekans";
    global.Dex_Sprites[23] = SPR_Ekans;
    global.Dex_Primary_Types[23] = "Poison";
    global.Dex_Secondary_Types[23] = "";

    // Pokemon 24 - "Arbok"
    global.Dex_Names[24] = "Arbok";
    global.Dex_Sprites[24] = SPR_Arbok;
    global.Dex_Primary_Types[24] = "Poison";
    global.Dex_Secondary_Types[24] = "";

    // Pokemon 25 - "Pikachu"
    global.Dex_Names[25] = "Pikachu";
    global.Dex_Sprites[25] = SPR_Pikachu;
    global.Dex_Primary_Types[25] = "Electric";
    global.Dex_Secondary_Types[25] = "";

    // Pokemon 26 - "Raichu"
    global.Dex_Names[26] = "Raichu";
    global.Dex_Sprites[26] = SPR_Raichu;
    global.Dex_Primary_Types[26] = "Electric";
    global.Dex_Secondary_Types[26] = "";

    // Pokemon 27 - "Sandshrew"
    global.Dex_Names[27] = "Sandshrew";
    global.Dex_Sprites[27] = SPR_Sandshrew;
    global.Dex_Primary_Types[27] = "Ground";
    global.Dex_Secondary_Types[27] = "";

    // Pokemon 28 - "Sandslash"
    global.Dex_Names[28] = "Sandslash";
    global.Dex_Sprites[28] = SPR_Sandslash;
    global.Dex_Primary_Types[28] = "Ground";
    global.Dex_Secondary_Types[28] = "";

    // Pokemon 29 - "Nidoran ♀"
    global.Dex_Names[29] = "Nidoran ♀";
    global.Dex_Sprites[29] = SPR_Nidoran_F;
    global.Dex_Primary_Types[29] = "Poison";
    global.Dex_Secondary_Types[29] = "";

    // Pokemon 30 - "Nidorina"
    global.Dex_Names[30] = "Nidorina";
    global.Dex_Sprites[30] = SPR_Nidorina;
    global.Dex_Primary_Types[30] = "Poison";
    global.Dex_Secondary_Types[30] = "";

    // Pokemon 31 - "Nidoqueen"
    global.Dex_Names[31] = "Nidoqueen";
    global.Dex_Sprites[31] = SPR_Nidoqueen;
    global.Dex_Primary_Types[31] = "Poison";
    global.Dex_Secondary_Types[31] = "Ground";

    // Pokemon 32 - "Nidoran ♂"
    global.Dex_Names[32] = "Nidoran ♂";
    global.Dex_Sprites[32] = SPR_Nidoran_M;
    global.Dex_Primary_Types[32] = "Poison";
    global.Dex_Secondary_Types[32] = "";

    // Pokemon 33 - "Nidorino"
    global.Dex_Names[33] = "Nidorino";
    global.Dex_Sprites[33] = SPR_Nidorino;
    global.Dex_Primary_Types[33] = "Poison";
    global.Dex_Secondary_Types[33] = "";

    // Pokemon 34 - "Nidoking"
    global.Dex_Names[34] = "Nidoking";
    global.Dex_Sprites[34] = SPR_Nidoking;
    global.Dex_Primary_Types[34] = "Poison";
    global.Dex_Secondary_Types[34] = "Ground";

    // Pokemon 35 - "Clefairy"
    global.Dex_Names[35] = "Clefairy";
    global.Dex_Sprites[35] = SPR_Clefairy;
    global.Dex_Primary_Types[35] = "Fairy";
    global.Dex_Secondary_Types[35] = "";

    // Pokemon 36 - "Clefable"
    global.Dex_Names[36] = "Clefable";
    global.Dex_Sprites[36] = SPR_Clefable;
    global.Dex_Primary_Types[36] = "Fairy";
    global.Dex_Secondary_Types[36] = "";

    // Pokemon 37 - "Vulpix"
    global.Dex_Names[37] = "Vulpix";
    global.Dex_Sprites[37] = SPR_Vulpix;
    global.Dex_Primary_Types[37] = "Fire";
    global.Dex_Secondary_Types[37] = "";

    // Pokemon 38 - "Ninetales"
    global.Dex_Names[38] = "Ninetales";
    global.Dex_Sprites[38] = SPR_Ninetales;
    global.Dex_Primary_Types[38] = "Fire";
    global.Dex_Secondary_Types[38] = "";

    // Pokemon 39 - "Jigglypuff"
    global.Dex_Names[39] = "Jigglypuff";
    global.Dex_Sprites[39] = SPR_Jigglypuff;
    global.Dex_Primary_Types[39] = "Normal";
    global.Dex_Secondary_Types[39] = "Fairy";

    // Pokemon 40 - "Wigglytuff"
    global.Dex_Names[40] = "Wigglytuff";
    global.Dex_Sprites[40] = SPR_Wigglytuff;
    global.Dex_Primary_Types[40] = "Normal";
    global.Dex_Secondary_Types[40] = "Fairy";

    // Pokemon 41 - "Zubat"
    global.Dex_Names[41] = "Zubat";
    global.Dex_Sprites[41] = SPR_Zubat;
    global.Dex_Primary_Types[41] = "Poison";
    global.Dex_Secondary_Types[41] = "Flying";

    // Pokemon 42 - "Golbat"
    global.Dex_Names[42] = "Golbat";
    global.Dex_Sprites[42] = SPR_Golbat;
    global.Dex_Primary_Types[42] = "Poison";
    global.Dex_Secondary_Types[42] = "Flying";

    // Pokemon 43 - "Oddish"
    global.Dex_Names[43] = "Oddish";
    global.Dex_Sprites[43] = SPR_Oddish;
    global.Dex_Primary_Types[43] = "Grass";
    global.Dex_Secondary_Types[43] = "Poison";

    // Pokemon 44 - "Gloom"
    global.Dex_Names[44] = "Gloom";
    global.Dex_Sprites[44] = SPR_Gloom;
    global.Dex_Primary_Types[44] = "Grass";
    global.Dex_Secondary_Types[44] = "Poison";

    // Pokemon 45 - "Vileplume"
    global.Dex_Names[45] = "Vileplume";
    global.Dex_Sprites[45] = SPR_Vileplume;
    global.Dex_Primary_Types[45] = "Grass";
    global.Dex_Secondary_Types[45] = "Poison";

    // Pokemon 46 - "Paras"
    global.Dex_Names[46] = "Paras";
    global.Dex_Sprites[46] = SPR_Paras;
    global.Dex_Primary_Types[46] = "Bug";
    global.Dex_Secondary_Types[46] = "Grass";

    // Pokemon 47 - "Parasect"
    global.Dex_Names[47] = "Parasect";
    global.Dex_Sprites[47] = SPR_Parasect;
    global.Dex_Primary_Types[47] = "Bug";
    global.Dex_Secondary_Types[47] = "Grass";

    // Pokemon 48 - "Venonat"
    global.Dex_Names[48] = "Venonat";
    global.Dex_Sprites[48] = SPR_Venonat;
    global.Dex_Primary_Types[48] = "Bug";
    global.Dex_Secondary_Types[48] = "Poison";

    // Pokemon 49 - "Venomoth"
    global.Dex_Names[49] = "Venomoth";
    global.Dex_Sprites[49] = SPR_Venomoth;
    global.Dex_Primary_Types[49] = "Bug";
    global.Dex_Secondary_Types[49] = "Poison";

    // Pokemon 50 - "Diglett"
    global.Dex_Names[50] = "Diglett";
    global.Dex_Sprites[50] = SPR_Diglett;
    global.Dex_Primary_Types[50] = "Ground";
    global.Dex_Secondary_Types[50] = "";

    // Pokemon 51 - "Dugtrio"
    global.Dex_Names[51] = "Dugtrio";
    global.Dex_Sprites[51] = SPR_Dugtrio;
    global.Dex_Primary_Types[51] = "Ground";
    global.Dex_Secondary_Types[51] = "";

    // Pokemon 52 - "Meowth"
    global.Dex_Names[52] = "Meowth";
    global.Dex_Sprites[52] = SPR_Meowth;
    global.Dex_Primary_Types[52] = "Normal";
    global.Dex_Secondary_Types[52] = "";

    // Pokemon 53 - "Persian"
    global.Dex_Names[53] = "Persian";
    global.Dex_Sprites[53] = SPR_Persian;
    global.Dex_Primary_Types[53] = "Normal";
    global.Dex_Secondary_Types[53] = "";

    // Pokemon 54 - "Psyduck"
    global.Dex_Names[54] = "Psyduck";
    global.Dex_Sprites[54] = SPR_Psyduck;
    global.Dex_Primary_Types[54] = "Water";
    global.Dex_Secondary_Types[54] = "";

    // Pokemon 55 - "Golduck"
    global.Dex_Names[55] = "Golduck";
    global.Dex_Sprites[55] = SPR_Golduck;
    global.Dex_Primary_Types[55] = "Water";
    global.Dex_Secondary_Types[55] = "";

    // Pokemon 56 - "Mankey"
    global.Dex_Names[56] = "Mankey";
    global.Dex_Sprites[56] = SPR_Mankey;
    global.Dex_Primary_Types[56] = "Fighting";
    global.Dex_Secondary_Types[56] = "";

    // Pokemon 57 - "Primeape"
    global.Dex_Names[57] = "Primeape";
    global.Dex_Sprites[57] = SPR_Primeape;
    global.Dex_Primary_Types[57] = "Fighting";
    global.Dex_Secondary_Types[57] = "";

    // Pokemon 58 - "Growlithe"
    global.Dex_Names[58] = "Growlithe";
    global.Dex_Sprites[58] = SPR_Growlithe;
    global.Dex_Primary_Types[58] = "Fire";
    global.Dex_Secondary_Types[58] = "";

    // Pokemon 59 - "Arcanine"
    global.Dex_Names[59] = "Arcanine";
    global.Dex_Sprites[59] = SPR_Arcanine;
    global.Dex_Primary_Types[59] = "Fire";
    global.Dex_Secondary_Types[59] = "";

    // Pokemon 60 - "Poliwag"
    global.Dex_Names[60] = "Poliwag";
    global.Dex_Sprites[60] = SPR_Poliwag;
    global.Dex_Primary_Types[60] = "Water";
    global.Dex_Secondary_Types[60] = "";

    // Pokemon 61 - "Poliwhirl"
    global.Dex_Names[61] = "Poliwhirl";
    global.Dex_Sprites[61] = SPR_Poliwhirl;
    global.Dex_Primary_Types[61] = "Water";
    global.Dex_Secondary_Types[61] = "";

    // Pokemon 62 - "Poliwrath"
    global.Dex_Names[62] = "Poliwrath";
    global.Dex_Sprites[62] = SPR_Poliwrath;
    global.Dex_Primary_Types[62] = "Water";
    global.Dex_Secondary_Types[62] = "Fighting";

    // Pokemon 63 - "Abra"
    global.Dex_Names[63] = "Abra";
    global.Dex_Sprites[63] = SPR_Abra;
    global.Dex_Primary_Types[63] = "Psychic";
    global.Dex_Secondary_Types[63] = "";

    // Pokemon 64 - "Kadabra"
    global.Dex_Names[64] = "Kadabra";
    global.Dex_Sprites[64] = SPR_Kadabra;
    global.Dex_Primary_Types[64] = "Psychic";
    global.Dex_Secondary_Types[64] = "";

    // Pokemon 65 - "Alakazam"
    global.Dex_Names[65] = "Alakazam";
    global.Dex_Sprites[65] = SPR_Alakazam;
    global.Dex_Primary_Types[65] = "Psychic";
    global.Dex_Secondary_Types[65] = "";

    // Pokemon 66 - "Machop"
    global.Dex_Names[66] = "Machop";
    global.Dex_Sprites[66] = SPR_Machop;
    global.Dex_Primary_Types[66] = "Fighting";
    global.Dex_Secondary_Types[66] = "";

    // Pokemon 67 - "Machoke"
    global.Dex_Names[67] = "Machoke";
    global.Dex_Sprites[67] = SPR_Machoke;
    global.Dex_Primary_Types[67] = "Fighting";
    global.Dex_Secondary_Types[67] = "";

    // Pokemon 68 - "Machamp"
    global.Dex_Names[68] = "Machamp";
    global.Dex_Sprites[68] = SPR_Machamp;
    global.Dex_Primary_Types[68] = "Fighting";
    global.Dex_Secondary_Types[68] = "";

    // Pokemon 69 - "Bellsprout"
    global.Dex_Names[69] = "Bellsprout";
    global.Dex_Sprites[69] = SPR_Bellsprout;
    global.Dex_Primary_Types[69] = "Grass";
    global.Dex_Secondary_Types[69] = "Poison";

    // Pokemon 70 - "Weepinbell"
    global.Dex_Names[70] = "Weepinbell";
    global.Dex_Sprites[70] = SPR_Weepinbell;
    global.Dex_Primary_Types[70] = "Grass";
    global.Dex_Secondary_Types[70] = "Poison";

    // Pokemon 71 - "Victreebel"
    global.Dex_Names[71] = "Victreebel";
    global.Dex_Sprites[71] = SPR_Victreebel;
    global.Dex_Primary_Types[71] = "Grass";
    global.Dex_Secondary_Types[71] = "Poison";

    // Pokemon 72 - "Tentacool"
    global.Dex_Names[72] = "Tentacool";
    global.Dex_Sprites[72] = SPR_Tentacool;
    global.Dex_Primary_Types[72] = "Water";
    global.Dex_Secondary_Types[72] = "Poison";

    // Pokemon 73 - "Tentacruel"
    global.Dex_Names[73] = "Tentacruel";
    global.Dex_Sprites[73] = SPR_Tentacruel;
    global.Dex_Primary_Types[73] = "Water";
    global.Dex_Secondary_Types[73] = "Poison";

    // Pokemon 74 - "Geodude"
    global.Dex_Names[74] = "Geodude";
    global.Dex_Sprites[74] = SPR_Geodude;
    global.Dex_Primary_Types[74] = "Rock";
    global.Dex_Secondary_Types[74] = "Ground";

    // Pokemon 75 - "Graveler"
    global.Dex_Names[75] = "Graveler";
    global.Dex_Sprites[75] = SPR_Graveler;
    global.Dex_Primary_Types[75] = "Rock";
    global.Dex_Secondary_Types[75] = "Ground";

    // Pokemon 76 - "Golem"
    global.Dex_Names[76] = "Golem";
    global.Dex_Sprites[76] = SPR_Golem;
    global.Dex_Primary_Types[76] = "Rock";
    global.Dex_Secondary_Types[76] = "Ground";

    // Pokemon 77 - "Ponyta"
    global.Dex_Names[77] = "Ponyta";
    global.Dex_Sprites[77] = SPR_Ponyta;
    global.Dex_Primary_Types[77] = "Fire";
    global.Dex_Secondary_Types[77] = "";

    // Pokemon 78 - "Rapidash"
    global.Dex_Names[78] = "Rapidash";
    global.Dex_Sprites[78] = SPR_Rapidash;
    global.Dex_Primary_Types[78] = "Fire";
    global.Dex_Secondary_Types[78] = "";

    // Pokemon 79 - "Slowpoke"
    global.Dex_Names[79] = "Slowpoke";
    global.Dex_Sprites[79] = SPR_Slowpoke;
    global.Dex_Primary_Types[79] = "Water";
    global.Dex_Secondary_Types[79] = "Psychic";

    // Pokemon 80 - "Slowbro"
    global.Dex_Names[80] = "Slowbro";
    global.Dex_Sprites[80] = SPR_Slowbro;
    global.Dex_Primary_Types[80] = "Water";
    global.Dex_Secondary_Types[80] = "Psychic";

    // Pokemon 81 - "Magnemite"
    global.Dex_Names[81] = "Magnemite";
    global.Dex_Sprites[81] = SPR_Magnemite;
    global.Dex_Primary_Types[81] = "Electric";
    global.Dex_Secondary_Types[81] = "Steel";

    // Pokemon 82 - "Magneton"
    global.Dex_Names[82] = "Magneton";
    global.Dex_Sprites[82] = SPR_Magneton;
    global.Dex_Primary_Types[82] = "Electric";
    global.Dex_Secondary_Types[82] = "Steel";

    // Pokemon 83 - "Farfetch'd"
    global.Dex_Names[83] = "Farfetch'd";
    global.Dex_Sprites[83] = SPR_Farfetchd;
    global.Dex_Primary_Types[83] = "Normal";
    global.Dex_Secondary_Types[83] = "Flying";

    // Pokemon 84 - "Doduo"
    global.Dex_Names[84] = "Doduo";
    global.Dex_Sprites[84] = SPR_Doduo;
    global.Dex_Primary_Types[84] = "Normal";
    global.Dex_Secondary_Types[84] = "Flying";

    // Pokemon 85 - "Dodrio"
    global.Dex_Names[85] = "Dodrio";
    global.Dex_Sprites[85] = SPR_Dodrio;
    global.Dex_Primary_Types[85] = "Normal";
    global.Dex_Secondary_Types[85] = "Flying";

    // Pokemon 86 - "Seel"
    global.Dex_Names[86] = "Seel";
    global.Dex_Sprites[86] = SPR_Seel;
    global.Dex_Primary_Types[86] = "Water";
    global.Dex_Secondary_Types[86] = "";

    // Pokemon 87 - "Dewgong"
    global.Dex_Names[87] = "Dewgong";
    global.Dex_Sprites[87] = SPR_Dewgong;
    global.Dex_Primary_Types[87] = "Water";
    global.Dex_Secondary_Types[87] = "Ice";

    // Pokemon 88 - "Grimer"
    global.Dex_Names[88] = "Grimer";
    global.Dex_Sprites[88] = SPR_Grimer;
    global.Dex_Primary_Types[88] = "Poison";
    global.Dex_Secondary_Types[88] = "";

    // Pokemon 89 - "Muk"
    global.Dex_Names[89] = "Muk";
    global.Dex_Sprites[89] = SPR_Muk;
    global.Dex_Primary_Types[89] = "Poison";
    global.Dex_Secondary_Types[89] = "";

    // Pokemon 90 - "Shellder"
    global.Dex_Names[90] = "Shellder";
    global.Dex_Sprites[90] = SPR_Shellder;
    global.Dex_Primary_Types[90] = "Water";
    global.Dex_Secondary_Types[90] = "";

    // Pokemon 91 - "Cloyster"
    global.Dex_Names[91] = "Cloyster";
    global.Dex_Sprites[91] = SPR_Cloyster;
    global.Dex_Primary_Types[91] = "Water";
    global.Dex_Secondary_Types[91] = "Ice";

    // Pokemon 92 - "Gastly"
    global.Dex_Names[92] = "Gastly";
    global.Dex_Sprites[92] = SPR_Gastly;
    global.Dex_Primary_Types[92] = "Ghost";
    global.Dex_Secondary_Types[92] = "Poison";

    // Pokemon 93 - "Haunter"
    global.Dex_Names[93] = "Haunter";
    global.Dex_Sprites[93] = SPR_Haunter;
    global.Dex_Primary_Types[93] = "Ghost";
    global.Dex_Secondary_Types[93] = "Poison";

    // Pokemon 94 - "Gengar"
    global.Dex_Names[94] = "Gengar";
    global.Dex_Sprites[94] = SPR_Gengar;
    global.Dex_Primary_Types[94] = "Ghost";
    global.Dex_Secondary_Types[94] = "Poison";

    // Pokemon 95 - "Onix"
    global.Dex_Names[95] = "Onix";
    global.Dex_Sprites[95] = SPR_Onix;
    global.Dex_Primary_Types[95] = "Rock";
    global.Dex_Secondary_Types[95] = "Ground";

    // Pokemon 96 - "Drowzee"
    global.Dex_Names[96] = "Drowzee";
    global.Dex_Sprites[96] = SPR_Drowzee;
    global.Dex_Primary_Types[96] = "Psychic";
    global.Dex_Secondary_Types[96] = "";

    // Pokemon 97 - "Hypno"
    global.Dex_Names[97] = "Hypno";
    global.Dex_Sprites[97] = SPR_Hypno;
    global.Dex_Primary_Types[97] = "Psychic";
    global.Dex_Secondary_Types[97] = "";

    // Pokemon 98 - "Krabby"
    global.Dex_Names[98] = "Krabby";
    global.Dex_Sprites[98] = SPR_Krabby;
    global.Dex_Primary_Types[98] = "Water";
    global.Dex_Secondary_Types[98] = "";

    // Pokemon 99 - "Kingler"
    global.Dex_Names[99] = "Kingler";
    global.Dex_Sprites[99] = SPR_Kingler;
    global.Dex_Primary_Types[99] = "Water";
    global.Dex_Secondary_Types[99] = "";

    // Pokemon 100 - "Voltorb"
    global.Dex_Names[100] = "Voltorb";
    global.Dex_Sprites[100] = SPR_Voltorb;
    global.Dex_Primary_Types[100] = "Electric";
    global.Dex_Secondary_Types[100] = "";

    // Pokemon 101 - "Electrode"
    global.Dex_Names[101] = "Electrode";
    global.Dex_Sprites[101] = SPR_Electrode;
    global.Dex_Primary_Types[101] = "Electric";
    global.Dex_Secondary_Types[101] = "";

    // Pokemon 102 - "Exeggcute"
    global.Dex_Names[102] = "Exeggcute";
    global.Dex_Sprites[102] = SPR_Exeggcute;
    global.Dex_Primary_Types[102] = "Grass";
    global.Dex_Secondary_Types[102] = "Psychic";

    // Pokemon 103 - "Exeggutor"
    global.Dex_Names[103] = "Exeggutor";
    global.Dex_Sprites[103] = SPR_Exeggutor;
    global.Dex_Primary_Types[103] = "Grass";
    global.Dex_Secondary_Types[103] = "Psychic";

    // Pokemon 104 - "Cubone"
    global.Dex_Names[104] = "Cubone";
    global.Dex_Sprites[104] = SPR_Cubone;
    global.Dex_Primary_Types[104] = "Ground";
    global.Dex_Secondary_Types[104] = "";

    // Pokemon 105 - "Marowak"
    global.Dex_Names[105] = "Marowak";
    global.Dex_Sprites[105] = SPR_Marowak;
    global.Dex_Primary_Types[105] = "Ground";
    global.Dex_Secondary_Types[105] = "";

    // Pokemon 106 - "Hitmonlee"
    global.Dex_Names[106] = "Hitmonlee";
    global.Dex_Sprites[106] = SPR_Hitmonlee;
    global.Dex_Primary_Types[106] = "Fighting";
    global.Dex_Secondary_Types[106] = "";

    // Pokemon 107 - "Hitmonchan"
    global.Dex_Names[107] = "Hitmonchan";
    global.Dex_Sprites[107] = SPR_Hitmonchan;
    global.Dex_Primary_Types[107] = "Fighting";
    global.Dex_Secondary_Types[107] = "";

    // Pokemon 108 - "Lickitung"
    global.Dex_Names[108] = "Lickitung";
    global.Dex_Sprites[108] = SPR_Lickitung;
    global.Dex_Primary_Types[108] = "Normal";
    global.Dex_Secondary_Types[108] = "";

    // Pokemon 109 - "Koffing"
    global.Dex_Names[109] = "Koffing";
    global.Dex_Sprites[109] = SPR_Koffing;
    global.Dex_Primary_Types[109] = "Poison";
    global.Dex_Secondary_Types[109] = "";

    // Pokemon 110 - "Weezing"
    global.Dex_Names[110] = "Weezing";
    global.Dex_Sprites[110] = SPR_Weezing;
    global.Dex_Primary_Types[110] = "Poison";
    global.Dex_Secondary_Types[110] = "";

    // Pokemon 111 - "Rhyhorn"
    global.Dex_Names[111] = "Rhyhorn";
    global.Dex_Sprites[111] = SPR_Rhyhorn;
    global.Dex_Primary_Types[111] = "Ground";
    global.Dex_Secondary_Types[111] = "";

    // Pokemon 112 - "Rhydon"
    global.Dex_Names[112] = "Rhydon";
    global.Dex_Sprites[112] = SPR_Rhydon;
    global.Dex_Primary_Types[112] = "Ground";
    global.Dex_Secondary_Types[112] = "";

    // Pokemon 113 - "Chansey"
    global.Dex_Names[113] = "Chansey";
    global.Dex_Sprites[113] = SPR_Chansey;
    global.Dex_Primary_Types[113] = "Normal";
    global.Dex_Secondary_Types[113] = "";

    // Pokemon 114 - "Tangela"
    global.Dex_Names[114] = "Tangela";
    global.Dex_Sprites[114] = SPR_Tangela;
    global.Dex_Primary_Types[114] = "Grass";
    global.Dex_Secondary_Types[114] = "";

    // Pokemon 115 - "Kangaskhan"
    global.Dex_Names[115] = "Kangaskhan";
    global.Dex_Sprites[115] = SPR_Kangaskhan;
    global.Dex_Primary_Types[115] = "Normal";
    global.Dex_Secondary_Types[115] = "";

    // Pokemon 116 - "Horsea"
    global.Dex_Names[116] = "Horsea";
    global.Dex_Sprites[116] = SPR_Horsea;
    global.Dex_Primary_Types[116] = "Water";
    global.Dex_Secondary_Types[116] = "";

    // Pokemon 117 - "Seadra"
    global.Dex_Names[117] = "Seadra";
    global.Dex_Sprites[117] = SPR_Seadra;
    global.Dex_Primary_Types[117] = "Water";
    global.Dex_Secondary_Types[117] = "";

    // Pokemon 118 - "Goldeen"
    global.Dex_Names[118] = "Goldeen";
    global.Dex_Sprites[118] = SPR_Goldeen;
    global.Dex_Primary_Types[118] = "Water";
    global.Dex_Secondary_Types[118] = "";

    // Pokemon 119 - "Seaking"
    global.Dex_Names[119] = "Seaking";
    global.Dex_Sprites[119] = SPR_Seaking;
    global.Dex_Primary_Types[119] = "Water";
    global.Dex_Secondary_Types[119] = "";

    // Pokemon 120 - "Staryu"
    global.Dex_Names[120] = "Staryu";
    global.Dex_Sprites[120] = SPR_Staryu;
    global.Dex_Primary_Types[120] = "Water";
    global.Dex_Secondary_Types[120] = "";

    // Pokemon 121 - "Starmie"
    global.Dex_Names[121] = "Starmie";
    global.Dex_Sprites[121] = SPR_Starmie;
    global.Dex_Primary_Types[121] = "Water";
    global.Dex_Secondary_Types[121] = "Psychic";

    // Pokemon 122 - "Mr. Mime"
    global.Dex_Names[122] = "Mr. Mime";
    global.Dex_Sprites[122] = SPR_Mr_Mime;
    global.Dex_Primary_Types[122] = "Psychic";
    global.Dex_Secondary_Types[122] = "Fairy";

    // Pokemon 123 - "Scyther"
    global.Dex_Names[123] = "Scyther";
    global.Dex_Sprites[123] = SPR_Scyther;
    global.Dex_Primary_Types[123] = "Bug";
    global.Dex_Secondary_Types[123] = "Flying";

    // Pokemon 124 - "Jynx"
    global.Dex_Names[124] = "Jynx";
    global.Dex_Sprites[124] = SPR_Jynx;
    global.Dex_Primary_Types[124] = "Ice";
    global.Dex_Secondary_Types[124] = "Psychic";

    // Pokemon 125 - "Electabuzz"
    global.Dex_Names[125] = "Electabuzz";
    global.Dex_Sprites[125] = SPR_Electabuzz;
    global.Dex_Primary_Types[125] = "Electric";
    global.Dex_Secondary_Types[125] = "";

    // Pokemon 126 - "Magmar"
    global.Dex_Names[126] = "Magmar";
    global.Dex_Sprites[126] = SPR_Magmar;
    global.Dex_Primary_Types[126] = "Fire";
    global.Dex_Secondary_Types[126] = "";

    // Pokemon 127 - "Pinsir"
    global.Dex_Names[127] = "Pinsir";
    global.Dex_Sprites[127] = SPR_Pinsir;
    global.Dex_Primary_Types[127] = "Bug";
    global.Dex_Secondary_Types[127] = "";

    // Pokemon 128 - "Tauros"
    global.Dex_Names[128] = "Tauros";
    global.Dex_Sprites[128] = SPR_Tauros;
    global.Dex_Primary_Types[128] = "Normal";
    global.Dex_Secondary_Types[128] = "";

    // Pokemon 129 - "Magikarp"
    global.Dex_Names[129] = "Magikarp";
    global.Dex_Sprites[129] = SPR_Magikarp;
    global.Dex_Primary_Types[129] = "Water";
    global.Dex_Secondary_Types[129] = "";

    // Pokemon 130 - "Gyarados"
    global.Dex_Names[130] = "Gyarados";
    global.Dex_Sprites[130] = SPR_Gyarados;
    global.Dex_Primary_Types[130] = "Water";
    global.Dex_Secondary_Types[130] = "Flying";

    // Pokemon 131 - "Lapras"
    global.Dex_Names[131] = "Lapras";
    global.Dex_Sprites[131] = SPR_Lapras;
    global.Dex_Primary_Types[131] = "Water";
    global.Dex_Secondary_Types[131] = "Ice";

    // Pokemon 132 - "Ditto"
    global.Dex_Names[132] = "Ditto";
    global.Dex_Sprites[132] = SPR_Ditto;
    global.Dex_Primary_Types[132] = "Normal";
    global.Dex_Secondary_Types[132] = "";

    // Pokemon 133 - "Eevee"
    global.Dex_Names[133] = "Eevee";
    global.Dex_Sprites[133] = SPR_Eevee;
    global.Dex_Primary_Types[133] = "Normal";
    global.Dex_Secondary_Types[133] = "";

    // Pokemon 134 - "Vaporeon"
    global.Dex_Names[134] = "Vaporeon";
    global.Dex_Sprites[134] = SPR_Vaporeon;
    global.Dex_Primary_Types[134] = "Water";
    global.Dex_Secondary_Types[134] = "";

    // Pokemon 135 - "Jolteon"
    global.Dex_Names[135] = "Jolteon";
    global.Dex_Sprites[135] = SPR_Jolteon;
    global.Dex_Primary_Types[135] = "Electric";
    global.Dex_Secondary_Types[135] = "";

    // Pokemon 136 - "Flareon"
    global.Dex_Names[136] = "Flareon";
    global.Dex_Sprites[136] = SPR_Flareon;
    global.Dex_Primary_Types[136] = "Fire";
    global.Dex_Secondary_Types[136] = "";

    // Pokemon 137 - "Porygon"
    global.Dex_Names[137] = "Porygon";
    global.Dex_Sprites[137] = SPR_Porygon;
    global.Dex_Primary_Types[137] = "Normal";
    global.Dex_Secondary_Types[137] = "";

    // Pokemon 138 - "Omanyte"
    global.Dex_Names[138] = "Omanyte";
    global.Dex_Sprites[138] = SPR_Omanyte;
    global.Dex_Primary_Types[138] = "Rock";
    global.Dex_Secondary_Types[138] = "Water";

    // Pokemon 139 - "Omastar"
    global.Dex_Names[139] = "Omastar";
    global.Dex_Sprites[139] = SPR_Omastar;
    global.Dex_Primary_Types[139] = "Rock";
    global.Dex_Secondary_Types[139] = "Water";

    // Pokemon 140 - "Kabuto"
    global.Dex_Names[140] = "Kabuto";
    global.Dex_Sprites[140] = SPR_Kabuto;
    global.Dex_Primary_Types[140] = "Rock";
    global.Dex_Secondary_Types[140] = "Water";

    // Pokemon 141 - "Kabutops"
    global.Dex_Names[141] = "Kabutops";
    global.Dex_Sprites[141] = SPR_Kabutops;
    global.Dex_Primary_Types[141] = "Rock";
    global.Dex_Secondary_Types[141] = "Water";

    // Pokemon 142 - "Aerodactyl"
    global.Dex_Names[142] = "Aerodactyl";
    global.Dex_Sprites[142] = SPR_Aerodactyl;
    global.Dex_Primary_Types[142] = "Rock";
    global.Dex_Secondary_Types[142] = "Flying";

    // Pokemon 143 - "Snorlax"
    global.Dex_Names[143] = "Snorlax";
    global.Dex_Sprites[143] = SPR_Snorlax;
    global.Dex_Primary_Types[143] = "Normal";
    global.Dex_Secondary_Types[143] = "";

    // Pokemon 144 - "Articuno"
    global.Dex_Names[144] = "Articuno";
    global.Dex_Sprites[144] = SPR_Articuno;
    global.Dex_Primary_Types[144] = "Ice";
    global.Dex_Secondary_Types[144] = "Flying";

    // Pokemon 145 - "Zapdos"
    global.Dex_Names[145] = "Zapdos";
    global.Dex_Sprites[145] = SPR_Zapdos;
    global.Dex_Primary_Types[145] = "Electric";
    global.Dex_Secondary_Types[145] = "Flying";

    // Pokemon 146 - "Moltres"
    global.Dex_Names[146] = "Moltres";
    global.Dex_Sprites[146] = SPR_Moltres;
    global.Dex_Primary_Types[146] = "Fire";
    global.Dex_Secondary_Types[146] = "Flying";

    // Pokemon 147 - "Dratini"
    global.Dex_Names[147] = "Dratini";
    global.Dex_Sprites[147] = SPR_Dratini;
    global.Dex_Primary_Types[147] = "Dragon";
    global.Dex_Secondary_Types[147] = "";

    // Pokemon 148 - "Dragonair"
    global.Dex_Names[148] = "Dragonair";
    global.Dex_Sprites[148] = SPR_Dragonair;
    global.Dex_Primary_Types[148] = "Dragon";
    global.Dex_Secondary_Types[148] = "";

    // Pokemon 149 - "Dragonite"
    global.Dex_Names[149] = "Dragonite";
    global.Dex_Sprites[149] = SPR_Dragonite;
    global.Dex_Primary_Types[149] = "Dragon";
    global.Dex_Secondary_Types[149] = "Flying";

    // Pokemon 150 - "Mewtwo"
    global.Dex_Names[150] = "Mewtwo";
    global.Dex_Sprites[150] = SPR_Mewtwo;
    global.Dex_Primary_Types[150] = "Psychic";
    global.Dex_Secondary_Types[150] = "";

    // Pokemon 151 - "Mew"
    global.Dex_Names[151] = "Mew";
    global.Dex_Sprites[151] = SPR_Mew;
    global.Dex_Primary_Types[151] = "Psychic";
    global.Dex_Secondary_Types[151] = "";
}