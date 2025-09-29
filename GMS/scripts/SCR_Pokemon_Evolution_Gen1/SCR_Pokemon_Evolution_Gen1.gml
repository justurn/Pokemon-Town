/*
 * SCR_Pokemon_Evolution_Gen1.gml
 * 
 * POKEMON DATA MODULE - Generation 1 Evolution & Breeding
 * 
 * This script initializes Generation 1 Pokemon evolution and breeding data (IDs 1-151):
 * - Evolution levels (-1 for final evolutions)
 * - Egg hatching availability ("True" or "False")
 * 
 * Uses original Pokedex structure for maximum clarity and consistency.
 * 
 * EDITING GUIDELINES:
 * - Pokemon are in sequential order (1, 2, 3, 4...)
 * - Use -1 for Pokemon that don't evolve (final forms)
 * - Use "True" for Pokemon that can hatch from eggs
 * - Use "False" for Pokemon that cannot hatch from eggs
 * 
 * CREATED: August 2025
 * POKEMON COUNT: 151 (Kanto Region)
 * EXTRACTED: From original SCR_Pokedex.gml via automation
 */

function SCR_Pokemon_Evolution_Gen1() {
    // Pokemon 1 - "Bulbasaur"
    global.Dex_Evolve_Level[1] = 16;
    global.Dex_Hatching[1] = "True";

    // Pokemon 2 - "Ivysaur"
    global.Dex_Evolve_Level[2] = 32;
    global.Dex_Hatching[2] = "False";

    // Pokemon 3 - "Venusaur"
    global.Dex_Evolve_Level[3] = -1;
    global.Dex_Hatching[3] = "False";

    // Pokemon 4 - "Charmander"
    global.Dex_Evolve_Level[4] = 16;
    global.Dex_Hatching[4] = "True";

    // Pokemon 5 - "Charmeleon"
    global.Dex_Evolve_Level[5] = 36;
    global.Dex_Hatching[5] = "False";

    // Pokemon 6 - "Charizard"
    global.Dex_Evolve_Level[6] = -1;
    global.Dex_Hatching[6] = "False";

    // Pokemon 7 - "Squirtle"
    global.Dex_Evolve_Level[7] = 16;
    global.Dex_Hatching[7] = "True";

    // Pokemon 8 - "Wartortle"
    global.Dex_Evolve_Level[8] = 36;
    global.Dex_Hatching[8] = "False";

    // Pokemon 9 - "Blastoise"
    global.Dex_Evolve_Level[9] = -1;
    global.Dex_Hatching[9] = "False";

    // Pokemon 10 - "Caterpie"
    global.Dex_Evolve_Level[10] = 7;
    global.Dex_Hatching[10] = "True";

    // Pokemon 11 - "Metapod"
    global.Dex_Evolve_Level[11] = 10;
    global.Dex_Hatching[11] = "False";

    // Pokemon 12 - "Butterfree"
    global.Dex_Evolve_Level[12] = -1;
    global.Dex_Hatching[12] = "False";

    // Pokemon 13 - "Weedle"
    global.Dex_Evolve_Level[13] = 7;
    global.Dex_Hatching[13] = "True";

    // Pokemon 14 - "Kakuna"
    global.Dex_Evolve_Level[14] = 10;
    global.Dex_Hatching[14] = "False";

    // Pokemon 15 - "Beedrill"
    global.Dex_Evolve_Level[15] = -1;
    global.Dex_Hatching[15] = "False";

    // Pokemon 16 - "Pidgey"
    global.Dex_Evolve_Level[16] = 18;
    global.Dex_Hatching[16] = "True";

    // Pokemon 17 - "Pidgeotto"
    global.Dex_Evolve_Level[17] = 36;
    global.Dex_Hatching[17] = "False";

    // Pokemon 18 - "Pidgeot"
    global.Dex_Evolve_Level[18] = -1;
    global.Dex_Hatching[18] = "False";

    // Pokemon 19 - "Rattata"
    global.Dex_Evolve_Level[19] = 20;
    global.Dex_Hatching[19] = "True";

    // Pokemon 20 - "Raticate"
    global.Dex_Evolve_Level[20] = -1;
    global.Dex_Hatching[20] = "False";

    // Pokemon 21 - "Spearow"
    global.Dex_Evolve_Level[21] = 20;
    global.Dex_Hatching[21] = "True";

    // Pokemon 22 - "Fearow"
    global.Dex_Evolve_Level[22] = -1;
    global.Dex_Hatching[22] = "False";

    // Pokemon 23 - "Ekans"
    global.Dex_Evolve_Level[23] = 22;
    global.Dex_Hatching[23] = "True";

    // Pokemon 24 - "Arbok"
    global.Dex_Evolve_Level[24] = -1;
    global.Dex_Hatching[24] = "False";

    // Pokemon 25 - "Pikachu"
    global.Dex_Evolve_Level[25] = 36;
    global.Dex_Hatching[25] = "False";

    // Pokemon 26 - "Raichu"
    global.Dex_Evolve_Level[26] = -1;
    global.Dex_Hatching[26] = "False";

    // Pokemon 27 - "Sandshrew"
    global.Dex_Evolve_Level[27] = 22;
    global.Dex_Hatching[27] = "True";

    // Pokemon 28 - "Sandslash"
    global.Dex_Evolve_Level[28] = -1;
    global.Dex_Hatching[28] = "False";

    // Pokemon 29 - "Nidoran ♀"
    global.Dex_Evolve_Level[29] = 16;
    global.Dex_Hatching[29] = "True";

    // Pokemon 30 - "Nidorina"
    global.Dex_Evolve_Level[30] = 36;
    global.Dex_Hatching[30] = "False";

    // Pokemon 31 - "Nidoqueen"
    global.Dex_Evolve_Level[31] = -1;
    global.Dex_Hatching[31] = "False";

    // Pokemon 32 - "Nidoran ♂"
    global.Dex_Evolve_Level[32] = 16;
    global.Dex_Hatching[32] = "True";

    // Pokemon 33 - "Nidorino"
    global.Dex_Evolve_Level[33] = 36;
    global.Dex_Hatching[33] = "False";

    // Pokemon 34 - "Nidoking"
    global.Dex_Evolve_Level[34] = -1;
    global.Dex_Hatching[34] = "False";

    // Pokemon 35 - "Clefairy"
    global.Dex_Evolve_Level[35] = 30;
    global.Dex_Hatching[35] = "False";

    // Pokemon 36 - "Clefable"
    global.Dex_Evolve_Level[36] = -1;
    global.Dex_Hatching[36] = "False";

    // Pokemon 37 - "Vulpix"
    global.Dex_Evolve_Level[37] = 36;
    global.Dex_Hatching[37] = "True";

    // Pokemon 38 - "Ninetales"
    global.Dex_Evolve_Level[38] = -1;
    global.Dex_Hatching[38] = "False";

    // Pokemon 39 - "Jigglypuff"
    global.Dex_Evolve_Level[39] = 30;
    global.Dex_Hatching[39] = "False";

    // Pokemon 40 - "Wigglytuff"
    global.Dex_Evolve_Level[40] = -1;
    global.Dex_Hatching[40] = "False";

    // Pokemon 41 - "Zubat"
    global.Dex_Evolve_Level[41] = 22;
    global.Dex_Hatching[41] = "True";

    // Pokemon 42 - "Golbat"
    global.Dex_Evolve_Level[42] = 36;
    global.Dex_Hatching[42] = "False";

    // Pokemon 43 - "Oddish"
    global.Dex_Evolve_Level[43] = 21;
    global.Dex_Hatching[43] = "True";

    // Pokemon 44 - "Gloom"
    global.Dex_Evolve_Level[44] = 36;
    global.Dex_Hatching[44] = "False";

    // Pokemon 45 - "Vileplume"
    global.Dex_Evolve_Level[45] = -1;
    global.Dex_Hatching[45] = "False";

    // Pokemon 46 - "Paras"
    global.Dex_Evolve_Level[46] = 24;
    global.Dex_Hatching[46] = "True";

    // Pokemon 47 - "Parasect"
    global.Dex_Evolve_Level[47] = -1;
    global.Dex_Hatching[47] = "False";

    // Pokemon 48 - "Venonat"
    global.Dex_Evolve_Level[48] = 31;
    global.Dex_Hatching[48] = "True";

    // Pokemon 49 - "Venomoth"
    global.Dex_Evolve_Level[49] = -1;
    global.Dex_Hatching[49] = "False";

    // Pokemon 50 - "Diglett"
    global.Dex_Evolve_Level[50] = 26;
    global.Dex_Hatching[50] = "True";

    // Pokemon 51 - "Dugtrio"
    global.Dex_Evolve_Level[51] = -1;
    global.Dex_Hatching[51] = "False";

    // Pokemon 52 - "Meowth"
    global.Dex_Evolve_Level[52] = 28;
    global.Dex_Hatching[52] = "True";

    // Pokemon 53 - "Persian"
    global.Dex_Evolve_Level[53] = -1;
    global.Dex_Hatching[53] = "False";

    // Pokemon 54 - "Psyduck"
    global.Dex_Evolve_Level[54] = 33;
    global.Dex_Hatching[54] = "True";

    // Pokemon 55 - "Golduck"
    global.Dex_Evolve_Level[55] = -1;
    global.Dex_Hatching[55] = "False";

    // Pokemon 56 - "Mankey"
    global.Dex_Evolve_Level[56] = 28;
    global.Dex_Hatching[56] = "True";

    // Pokemon 57 - "Primeape"
    global.Dex_Evolve_Level[57] = -1;
    global.Dex_Hatching[57] = "False";

    // Pokemon 58 - "Growlithe"
    global.Dex_Evolve_Level[58] = 38;
    global.Dex_Hatching[58] = "True";

    // Pokemon 59 - "Arcanine"
    global.Dex_Evolve_Level[59] = -1;
    global.Dex_Hatching[59] = "False";

    // Pokemon 60 - "Poliwag"
    global.Dex_Evolve_Level[60] = 25;
    global.Dex_Hatching[60] = "True";

    // Pokemon 61 - "Poliwhirl"
    global.Dex_Evolve_Level[61] = 37;
    global.Dex_Hatching[61] = "False";

    // Pokemon 62 - "Poliwrath"
    global.Dex_Evolve_Level[62] = -1;
    global.Dex_Hatching[62] = "False";

    // Pokemon 63 - "Abra"
    global.Dex_Evolve_Level[63] = 16;
    global.Dex_Hatching[63] = "True";

    // Pokemon 64 - "Kadabra"
    global.Dex_Evolve_Level[64] = -1;
    global.Dex_Hatching[64] = "False";

    // Pokemon 65 - "Alakazam"
    global.Dex_Evolve_Level[65] = -1;
    global.Dex_Hatching[65] = "False";

    // Pokemon 66 - "Machop"
    global.Dex_Evolve_Level[66] = 28;
    global.Dex_Hatching[66] = "True";

    // Pokemon 67 - "Machoke"
    global.Dex_Evolve_Level[67] = 48;
    global.Dex_Hatching[67] = "False";

    // Pokemon 68 - "Machamp"
    global.Dex_Evolve_Level[68] = -1;
    global.Dex_Hatching[68] = "False";

    // Pokemon 69 - "Bellsprout"
    global.Dex_Evolve_Level[69] = 21;
    global.Dex_Hatching[69] = "True";

    // Pokemon 70 - "Weepinbell"
    global.Dex_Evolve_Level[70] = 36;
    global.Dex_Hatching[70] = "False";

    // Pokemon 71 - "Victreebel"
    global.Dex_Evolve_Level[71] = -1;
    global.Dex_Hatching[71] = "False";

    // Pokemon 72 - "Tentacool"
    global.Dex_Evolve_Level[72] = 30;
    global.Dex_Hatching[72] = "True";

    // Pokemon 73 - "Tentacruel"
    global.Dex_Evolve_Level[73] = -1;
    global.Dex_Hatching[73] = "False";

    // Pokemon 74 - "Geodude"
    global.Dex_Evolve_Level[74] = 25;
    global.Dex_Hatching[74] = "True";

    // Pokemon 75 - "Graveler"
    global.Dex_Evolve_Level[75] = -1;
    global.Dex_Hatching[75] = "False";

    // Pokemon 76 - "Golem"
    global.Dex_Evolve_Level[76] = -1;
    global.Dex_Hatching[76] = "False";

    // Pokemon 77 - "Ponyta"
    global.Dex_Evolve_Level[77] = 40;
    global.Dex_Hatching[77] = "True";

    // Pokemon 78 - "Rapidash"
    global.Dex_Evolve_Level[78] = -1;
    global.Dex_Hatching[78] = "False";

    // Pokemon 79 - "Slowpoke"
    global.Dex_Evolve_Level[79] = 37;
    global.Dex_Hatching[79] = "True";

    // Pokemon 80 - "Slowbro"
    global.Dex_Evolve_Level[80] = 47;
    global.Dex_Hatching[80] = "False";

    // Pokemon 81 - "Magnemite"
    global.Dex_Evolve_Level[81] = 30;
    global.Dex_Hatching[81] = "True";

    // Pokemon 82 - "Magneton"
    global.Dex_Evolve_Level[82] = -1;
    global.Dex_Hatching[82] = "False";

    // Pokemon 83 - "Farfetch'd"
    global.Dex_Evolve_Level[83] = -1;
    global.Dex_Hatching[83] = "True";

    // Pokemon 84 - "Doduo"
    global.Dex_Evolve_Level[84] = 31;
    global.Dex_Hatching[84] = "True";

    // Pokemon 85 - "Dodrio"
    global.Dex_Evolve_Level[85] = -1;
    global.Dex_Hatching[85] = "False";

    // Pokemon 86 - "Seel"
    global.Dex_Evolve_Level[86] = 34;
    global.Dex_Hatching[86] = "True";

    // Pokemon 87 - "Dewgong"
    global.Dex_Evolve_Level[87] = -1;
    global.Dex_Hatching[87] = "False";

    // Pokemon 88 - "Grimer"
    global.Dex_Evolve_Level[88] = 38;
    global.Dex_Hatching[88] = "True";

    // Pokemon 89 - "Muk"
    global.Dex_Evolve_Level[89] = -1;
    global.Dex_Hatching[89] = "False";

    // Pokemon 90 - "Shellder"
    global.Dex_Evolve_Level[90] = 36;
    global.Dex_Hatching[90] = "True";

    // Pokemon 91 - "Cloyster"
    global.Dex_Evolve_Level[91] = -1;
    global.Dex_Hatching[91] = "False";

    // Pokemon 92 - "Gastly"
    global.Dex_Evolve_Level[92] = 25;
    global.Dex_Hatching[92] = "True";

    // Pokemon 93 - "Haunter"
    global.Dex_Evolve_Level[93] = -1;
    global.Dex_Hatching[93] = "False";

    // Pokemon 94 - "Gengar"
    global.Dex_Evolve_Level[94] = -1;
    global.Dex_Hatching[94] = "False";

    // Pokemon 95 - "Onix"
    global.Dex_Evolve_Level[95] = 42;
    global.Dex_Hatching[95] = "True";

    // Pokemon 96 - "Drowzee"
    global.Dex_Evolve_Level[96] = 26;
    global.Dex_Hatching[96] = "True";

    // Pokemon 97 - "Hypno"
    global.Dex_Evolve_Level[97] = -1;
    global.Dex_Hatching[97] = "False";

    // Pokemon 98 - "Krabby"
    global.Dex_Evolve_Level[98] = 28;
    global.Dex_Hatching[98] = "True";

    // Pokemon 99 - "Kingler"
    global.Dex_Evolve_Level[99] = -1;
    global.Dex_Hatching[99] = "False";

    // Pokemon 100 - "Voltorb"
    global.Dex_Evolve_Level[100] = 30;
    global.Dex_Hatching[100] = "True";

    // Pokemon 101 - "Electrode"
    global.Dex_Evolve_Level[101] = -1;
    global.Dex_Hatching[101] = "False";

    // Pokemon 102 - "Exeggcute"
    global.Dex_Evolve_Level[102] = 38;
    global.Dex_Hatching[102] = "True";

    // Pokemon 103 - "Exeggutor"
    global.Dex_Evolve_Level[103] = -1;
    global.Dex_Hatching[103] = "False";

    // Pokemon 104 - "Cubone"
    global.Dex_Evolve_Level[104] = 28;
    global.Dex_Hatching[104] = "True";

    // Pokemon 105 - "Marowak"
    global.Dex_Evolve_Level[105] = -1;
    global.Dex_Hatching[105] = "False";

    // Pokemon 106 - "Hitmonlee"
    global.Dex_Evolve_Level[106] = -1;
    global.Dex_Hatching[106] = "False";

    // Pokemon 107 - "Hitmonchan"
    global.Dex_Evolve_Level[107] = -1;
    global.Dex_Hatching[107] = "False";

    // Pokemon 108 - "Lickitung"
    global.Dex_Evolve_Level[108] = -1;
    global.Dex_Hatching[108] = "True";

    // Pokemon 109 - "Koffing"
    global.Dex_Evolve_Level[109] = 35;
    global.Dex_Hatching[109] = "True";

    // Pokemon 110 - "Weezing"
    global.Dex_Evolve_Level[110] = -1;
    global.Dex_Hatching[110] = "False";

    // Pokemon 111 - "Rhyhorn"
    global.Dex_Evolve_Level[111] = 42;
    global.Dex_Hatching[111] = "True";

    // Pokemon 112 - "Rhydon"
    global.Dex_Evolve_Level[112] = -1;
    global.Dex_Hatching[112] = "False";

    // Pokemon 113 - "Chansey"
    global.Dex_Evolve_Level[113] = 42;
    global.Dex_Hatching[113] = "True";

    // Pokemon 114 - "Tangela"
    global.Dex_Evolve_Level[114] = -1;
    global.Dex_Hatching[114] = "True";

    // Pokemon 115 - "Kangaskhan"
    global.Dex_Evolve_Level[115] = -1;
    global.Dex_Hatching[115] = "True";

    // Pokemon 116 - "Horsea"
    global.Dex_Evolve_Level[116] = 32;
    global.Dex_Hatching[116] = "True";

    // Pokemon 117 - "Seadra"
    global.Dex_Evolve_Level[117] = 48;
    global.Dex_Hatching[117] = "False";

    // Pokemon 118 - "Goldeen"
    global.Dex_Evolve_Level[118] = 33;
    global.Dex_Hatching[118] = "True";

    // Pokemon 119 - "Seaking"
    global.Dex_Evolve_Level[119] = -1;
    global.Dex_Hatching[119] = "False";

    // Pokemon 120 - "Staryu"
    global.Dex_Evolve_Level[120] = 37;
    global.Dex_Hatching[120] = "True";

    // Pokemon 121 - "Starmie"
    global.Dex_Evolve_Level[121] = -1;
    global.Dex_Hatching[121] = "False";

    // Pokemon 122 - "Mr. Mime"
    global.Dex_Evolve_Level[122] = -1;
    global.Dex_Hatching[122] = "True";

    // Pokemon 123 - "Scyther"
    global.Dex_Evolve_Level[123] = 48;
    global.Dex_Hatching[123] = "True";

    // Pokemon 124 - "Jynx"
    global.Dex_Evolve_Level[124] = -1;
    global.Dex_Hatching[124] = "False";

    // Pokemon 125 - "Electabuzz"
    global.Dex_Evolve_Level[125] = -1;
    global.Dex_Hatching[125] = "False";

    // Pokemon 126 - "Magmar"
    global.Dex_Evolve_Level[126] = -1;
    global.Dex_Hatching[126] = "False";

    // Pokemon 127 - "Pinsir"
    global.Dex_Evolve_Level[127] = -1;
    global.Dex_Hatching[127] = "True";

    // Pokemon 128 - "Tauros"
    global.Dex_Evolve_Level[128] = -1;
    global.Dex_Hatching[128] = "True";

    // Pokemon 129 - "Magikarp"
    global.Dex_Evolve_Level[129] = 20;
    global.Dex_Hatching[129] = "True";

    // Pokemon 130 - "Gyarados"
    global.Dex_Evolve_Level[130] = -1;
    global.Dex_Hatching[130] = "False";

    // Pokemon 131 - "Lapras"
    global.Dex_Evolve_Level[131] = -1;
    global.Dex_Hatching[131] = "True";

    // Pokemon 132 - "Ditto"
    global.Dex_Evolve_Level[132] = -1;
    global.Dex_Hatching[132] = "True";

    // Pokemon 133 - "Eevee"
    global.Dex_Evolve_Level[133] = 36;
    global.Dex_Hatching[133] = "True";

    // Pokemon 134 - "Vaporeon"
    global.Dex_Evolve_Level[134] = -1;
    global.Dex_Hatching[134] = "False";

    // Pokemon 135 - "Jolteon"
    global.Dex_Evolve_Level[135] = -1;
    global.Dex_Hatching[135] = "False";

    // Pokemon 136 - "Flareon"
    global.Dex_Evolve_Level[136] = -1;
    global.Dex_Hatching[136] = "False";

    // Pokemon 137 - "Porygon"
    global.Dex_Evolve_Level[137] = 40;
    global.Dex_Hatching[137] = "True";

    // Pokemon 138 - "Omanyte"
    global.Dex_Evolve_Level[138] = 40;
    global.Dex_Hatching[138] = "True";

    // Pokemon 139 - "Omastar"
    global.Dex_Evolve_Level[139] = -1;
    global.Dex_Hatching[139] = "False";

    // Pokemon 140 - "Kabuto"
    global.Dex_Evolve_Level[140] = 40;
    global.Dex_Hatching[140] = "True";

    // Pokemon 141 - "Kabutops"
    global.Dex_Evolve_Level[141] = -1;
    global.Dex_Hatching[141] = "False";

    // Pokemon 142 - "Aerodactyl"
    global.Dex_Evolve_Level[142] = -1;
    global.Dex_Hatching[142] = "True";

    // Pokemon 143 - "Snorlax"
    global.Dex_Evolve_Level[143] = -1;
    global.Dex_Hatching[143] = "True";

    // Pokemon 144 - "Articuno" (LEGENDARY)
    global.Dex_Evolve_Level[144] = -1;
    global.Dex_Hatching[144] = "False";  // F-026: Start as non-hatchable
    global.Dex_Legendary[144] = true;   // F-026: Mark as legendary

    // Pokemon 145 - "Zapdos" (LEGENDARY)
    global.Dex_Evolve_Level[145] = -1;
    global.Dex_Hatching[145] = "False";  // F-026: Start as non-hatchable
    global.Dex_Legendary[145] = true;   // F-026: Mark as legendary

    // Pokemon 146 - "Moltres" (LEGENDARY)
    global.Dex_Evolve_Level[146] = -1;
    global.Dex_Hatching[146] = "False";  // F-026: Start as non-hatchable
    global.Dex_Legendary[146] = true;   // F-026: Mark as legendary

    // Pokemon 147 - "Dratini"
    global.Dex_Evolve_Level[147] = 30;
    global.Dex_Hatching[147] = "True";

    // Pokemon 148 - "Dragonair"
    global.Dex_Evolve_Level[148] = 55;
    global.Dex_Hatching[148] = "False";

    // Pokemon 149 - "Dragonite"
    global.Dex_Evolve_Level[149] = -1;
    global.Dex_Hatching[149] = "False";

    // Pokemon 150 - "Mewtwo" (LEGENDARY)
    global.Dex_Evolve_Level[150] = -1;
    global.Dex_Hatching[150] = "False";  // F-026: Start as non-hatchable
    global.Dex_Legendary[150] = true;   // F-026: Mark as legendary

    // Pokemon 151 - "Mew" (LEGENDARY)
    global.Dex_Evolve_Level[151] = -1;
    global.Dex_Hatching[151] = "False";  // F-026: Start as non-hatchable
    global.Dex_Legendary[151] = true;   // F-026: Mark as legendary
}