function SCR_Pokedex()
{
	// Pokemon Names
	global.Dex_Names[1] = "Bulbasaur";
    global.Dex_Names[2] = "Ivysaur";
    global.Dex_Names[3] = "Venusaur";
    global.Dex_Names[4] = "Charmander";
    global.Dex_Names[5] = "Charmeleon";
    global.Dex_Names[6] = "Charizard";
    global.Dex_Names[7] = "Squirtle";
    global.Dex_Names[8] = "Wartortle";
    global.Dex_Names[9] = "Blastoise";
    global.Dex_Names[10] = "Caterpie";
    global.Dex_Names[11] = "Metapod";
    global.Dex_Names[12] = "Butterfree";
    global.Dex_Names[13] = "Weedle";
    global.Dex_Names[14] = "Kakuna";
    global.Dex_Names[15] = "Beedrill";
    global.Dex_Names[16] = "Pidgey";
    global.Dex_Names[17] = "Pidgeotto";
    global.Dex_Names[18] = "Pidgeot";
    global.Dex_Names[19] = "Rattata";
    global.Dex_Names[20] = "Raticate";
    global.Dex_Names[21] = "Spearow";
    global.Dex_Names[22] = "Fearow";
    global.Dex_Names[23] = "Ekans";
    global.Dex_Names[24] = "Arbok";
    global.Dex_Names[25] = "Pikachu";
    global.Dex_Names[26] = "Raichu";
    global.Dex_Names[27] = "Sandshrew";
    global.Dex_Names[28] = "Sandslash";
    global.Dex_Names[29] = "Nidoran ♀";
    global.Dex_Names[30] = "Nidorina";
    global.Dex_Names[31] = "Nidoqueen";
    global.Dex_Names[32] = "Nidoran ♂";
    global.Dex_Names[33] = "Nidorino";
    global.Dex_Names[34] = "Nidoking";
    global.Dex_Names[35] = "Clefairy";
    global.Dex_Names[36] = "Clefable";
    global.Dex_Names[37] = "Vulpix";
    global.Dex_Names[38] = "Ninetales";
    global.Dex_Names[39] = "Jigglypuff";
    global.Dex_Names[40] = "Wigglytuff";
    global.Dex_Names[41] = "Zubat";
    global.Dex_Names[42] = "Golbat";
    global.Dex_Names[43] = "Oddish";
    global.Dex_Names[44] = "Gloom";
    global.Dex_Names[45] = "Vileplume";
    global.Dex_Names[46] = "Paras";
    global.Dex_Names[47] = "Parasect";
    global.Dex_Names[48] = "Venonat";
    global.Dex_Names[49] = "Venomoth";
    global.Dex_Names[50] = "Diglett";
    global.Dex_Names[51] = "Dugtrio";
    global.Dex_Names[52] = "Meowth";
    global.Dex_Names[53] = "Persian";
    global.Dex_Names[54] = "Psyduck";
    global.Dex_Names[55] = "Golduck";
    global.Dex_Names[56] = "Mankey";
    global.Dex_Names[57] = "Primeape";
    global.Dex_Names[58] = "Growlithe";
    global.Dex_Names[59] = "Arcanine";
    global.Dex_Names[60] = "Poliwag";
    global.Dex_Names[61] = "Poliwhirl";
    global.Dex_Names[62] = "Poliwrath";
    global.Dex_Names[63] = "Abra";
    global.Dex_Names[64] = "Kadabra";
    global.Dex_Names[65] = "Alakazam";
    global.Dex_Names[66] = "Machop";
    global.Dex_Names[67] = "Machoke";
    global.Dex_Names[68] = "Machamp";
    global.Dex_Names[69] = "Bellsprout";
    global.Dex_Names[70] = "Weepinbell";
    global.Dex_Names[71] = "Victreebel";
    global.Dex_Names[72] = "Tentacool";
    global.Dex_Names[73] = "Tentacruel";
    global.Dex_Names[74] = "Geodude";
    global.Dex_Names[75] = "Graveler";
    global.Dex_Names[76] = "Golem";
    global.Dex_Names[77] = "Ponyta";
    global.Dex_Names[78] = "Rapidash";
    global.Dex_Names[79] = "Slowpoke";
    global.Dex_Names[80] = "Slowbro";
    global.Dex_Names[81] = "Magnemite";
    global.Dex_Names[82] = "Magneton";
    global.Dex_Names[83] = "Farfetch'd";
    global.Dex_Names[84] = "Doduo";
    global.Dex_Names[85] = "Dodrio";
    global.Dex_Names[86] = "Seel";
    global.Dex_Names[87] = "Dewgong";
    global.Dex_Names[88] = "Grimer";
    global.Dex_Names[89] = "Muk";
    global.Dex_Names[90] = "Shellder";
    global.Dex_Names[91] = "Cloyster";
    global.Dex_Names[92] = "Gastly";
    global.Dex_Names[93] = "Haunter";
    global.Dex_Names[94] = "Gengar";
    global.Dex_Names[95] = "Onix";
    global.Dex_Names[96] = "Drowzee";
    global.Dex_Names[97] = "Hypno";
    global.Dex_Names[98] = "Krabby";
    global.Dex_Names[99] = "Kingler";
    global.Dex_Names[100] = "Voltorb";
    global.Dex_Names[101] = "Electrode";
    global.Dex_Names[102] = "Exeggcute";
    global.Dex_Names[103] = "Exeggutor";
    global.Dex_Names[104] = "Cubone";
    global.Dex_Names[105] = "Marowak";
    global.Dex_Names[106] = "Hitmonlee";
    global.Dex_Names[107] = "Hitmonchan";
    global.Dex_Names[108] = "Lickitung";
    global.Dex_Names[109] = "Koffing";
    global.Dex_Names[110] = "Weezing";
    global.Dex_Names[111] = "Rhyhorn";
    global.Dex_Names[112] = "Rhydon";
    global.Dex_Names[113] = "Chansey";
    global.Dex_Names[114] = "Tangela";
    global.Dex_Names[115] = "Kangaskhan";
    global.Dex_Names[116] = "Horsea";
    global.Dex_Names[117] = "Seadra";
    global.Dex_Names[118] = "Goldeen";
    global.Dex_Names[119] = "Seaking";
    global.Dex_Names[120] = "Staryu";
    global.Dex_Names[121] = "Starmie";
    global.Dex_Names[122] = "Mr. Mime";
    global.Dex_Names[123] = "Scyther";
    global.Dex_Names[124] = "Jynx";
    global.Dex_Names[125] = "Electabuzz";
    global.Dex_Names[126] = "Magmar";
    global.Dex_Names[127] = "Pinsir";
    global.Dex_Names[128] = "Tauros";
    global.Dex_Names[129] = "Magikarp";
    global.Dex_Names[130] = "Gyarados";
    global.Dex_Names[131] = "Lapras";
    global.Dex_Names[132] = "Ditto";
    global.Dex_Names[133] = "Eevee";
    global.Dex_Names[134] = "Vaporeon";
    global.Dex_Names[135] = "Jolteon";
    global.Dex_Names[136] = "Flareon";
    global.Dex_Names[137] = "Porygon";
    global.Dex_Names[138] = "Omanyte";
    global.Dex_Names[139] = "Omastar";
    global.Dex_Names[140] = "Kabuto";
    global.Dex_Names[141] = "Kabutops";
    global.Dex_Names[142] = "Aerodactyl";
    global.Dex_Names[143] = "Snorlax";
    global.Dex_Names[144] = "Articuno";
    global.Dex_Names[145] = "Zapdos";
    global.Dex_Names[146] = "Moltres";
    global.Dex_Names[147] = "Dratini";
    global.Dex_Names[148] = "Dragonair";
    global.Dex_Names[149] = "Dragonite";
    global.Dex_Names[150] = "Mewtwo";
    global.Dex_Names[151] = "Mew";
	
	// Pokemon Sprites
    global.Dex_Sprites[1] = SPR_Bulbasaur;
    //global.Dex_Sprites[2] = SPR_Ivysaur;
    //global.Dex_Sprites[3] = SPR_Venusaur;
    global.Dex_Sprites[4] = SPR_Charmander;
    //global.Dex_Sprites[5] = SPR_Charmeleon;
    //global.Dex_Sprites[6] = SPR_Charizard;
    global.Dex_Sprites[7] = SPR_Squirtle;
    //global.Dex_Sprites[8] = SPR_Wartortle;
    //global.Dex_Sprites[9] = SPR_Blastoise;
    global.Dex_Sprites[10] = SPR_Caterpie;
    //global.Dex_Sprites[11] = SPR_Metapod;
    //global.Dex_Sprites[12] = SPR_Butterfree;
    global.Dex_Sprites[13] = SPR_Weedle;
    //global.Dex_Sprites[14] = SPR_Kakuna;
    //global.Dex_Sprites[15] = SPR_Beedrill;
    global.Dex_Sprites[16] = SPR_Pidgey;
    //global.Dex_Sprites[17] = SPR_Pidgeotto;
    //global.Dex_Sprites[18] = SPR_Pidgeot;
    global.Dex_Sprites[19] = SPR_Rattata;
    //global.Dex_Sprites[20] = SPR_Raticate;
    global.Dex_Sprites[21] = SPR_Spearow;
    //global.Dex_Sprites[22] = SPR_Fearow;
    global.Dex_Sprites[23] = SPR_Ekans;
    //global.Dex_Sprites[24] = SPR_Arbok;
    global.Dex_Sprites[25] = SPR_Pikachu;
    //global.Dex_Sprites[26] = SPR_Raichu;
    global.Dex_Sprites[27] = SPR_Sandshrew;
    //global.Dex_Sprites[28] = SPR_Sandslash;
    global.Dex_Sprites[29] = SPR_Nidoran_F;
    //global.Dex_Sprites[30] = SPR_Nidorina;
    //global.Dex_Sprites[31] = SPR_Nidoqueen;
    global.Dex_Sprites[32] = SPR_Nidoran_M;
    //global.Dex_Sprites[33] = SPR_Nidorino;
    //global.Dex_Sprites[34] = SPR_Nidoking;
    global.Dex_Sprites[35] = SPR_Clefairy;
    //global.Dex_Sprites[36] = SPR_Clefable;
    global.Dex_Sprites[37] = SPR_Vulpix;
    //global.Dex_Sprites[38] = SPR_Ninetales;
    global.Dex_Sprites[39] = SPR_Jigglypuff;
    //global.Dex_Sprites[40] = SPR_Wigglytuff;
    global.Dex_Sprites[41] = SPR_Zubat;
    //global.Dex_Sprites[42] = SPR_Golbat;
    global.Dex_Sprites[43] = SPR_Oddish;
    //global.Dex_Sprites[44] = SPR_Gloom;
    //global.Dex_Sprites[45] = SPR_Vileplume;
    global.Dex_Sprites[46] = SPR_Paras;
    //global.Dex_Sprites[47] = SPR_Parasect;
    global.Dex_Sprites[48] = SPR_Venonat;
    //global.Dex_Sprites[49] = SPR_Venomoth;
    global.Dex_Sprites[50] = SPR_Diglett;
    //global.Dex_Sprites[51] = SPR_Dugtrio;
    global.Dex_Sprites[52] = SPR_Meowth;
    //global.Dex_Sprites[53] = SPR_Persian;
    global.Dex_Sprites[54] = SPR_Psyduck;
    //global.Dex_Sprites[55] = SPR_Golduck;
    global.Dex_Sprites[56] = SPR_Mankey;
    //global.Dex_Sprites[57] = SPR_Primeape;
    global.Dex_Sprites[58] = SPR_Growlithe;
    //global.Dex_Sprites[59] = SPR_Arcanine;
    global.Dex_Sprites[60] = SPR_Poliwag;
    //global.Dex_Sprites[61] = SPR_Poliwhirl;
    //global.Dex_Sprites[62] = SPR_Poliwrath;
    global.Dex_Sprites[63] = SPR_Abra;
    //global.Dex_Sprites[64] = SPR_Kadabra;
    //global.Dex_Sprites[65] = SPR_Alakazam;
    global.Dex_Sprites[66] = SPR_Machop;
    //global.Dex_Sprites[67] = SPR_Machoke;
    //global.Dex_Sprites[68] = SPR_Machamp;
    global.Dex_Sprites[69] = SPR_Bellsprout;
    //global.Dex_Sprites[70] = SPR_Weepinbell;
    //global.Dex_Sprites[71] = SPR_Victreebel;
    global.Dex_Sprites[72] = SPR_Tentacool;
    //global.Dex_Sprites[73] = SPR_Tentacruel;
    global.Dex_Sprites[74] = SPR_Geodude;
    //global.Dex_Sprites[75] = SPR_Graveler;
    //global.Dex_Sprites[76] = SPR_Golem;
    global.Dex_Sprites[77] = SPR_Ponyta;
    //global.Dex_Sprites[78] = SPR_Rapidash;
    global.Dex_Sprites[79] = SPR_Slowpoke;
    //global.Dex_Sprites[80] = SPR_Slowbro;
    global.Dex_Sprites[81] = SPR_Magnemite;
    //global.Dex_Sprites[82] = SPR_Magneton;
    global.Dex_Sprites[83] = SPR_Farfetchd;
    global.Dex_Sprites[84] = SPR_Doduo;
    //global.Dex_Sprites[85] = SPR_Dodrio;
    global.Dex_Sprites[86] = SPR_Seel;
    //global.Dex_Sprites[87] = SPR_Dewgong;
    global.Dex_Sprites[88] = SPR_Grimer;
    //global.Dex_Sprites[89] = SPR_Muk;
    global.Dex_Sprites[90] = SPR_Shellder;
    //global.Dex_Sprites[91] = SPR_Cloyster;
    global.Dex_Sprites[92] = SPR_Gastly;
    //global.Dex_Sprites[93] = SPR_Haunter;
    //global.Dex_Sprites[94] = SPR_Gengar;
    global.Dex_Sprites[95] = SPR_Onix;
    global.Dex_Sprites[96] = SPR_Drowzee;
    //global.Dex_Sprites[97] = SPR_Hypno;
    global.Dex_Sprites[98] = SPR_Krabby;
    //global.Dex_Sprites[99] = SPR_Kingler;
    global.Dex_Sprites[100] = SPR_Voltorb;
    //global.Dex_Sprites[101] = SPR_Electrode;
    global.Dex_Sprites[102] = SPR_Exeggcute;
    //global.Dex_Sprites[103] = SPR_Exeggutor;
    global.Dex_Sprites[104] = SPR_Cubone;
    //global.Dex_Sprites[105] = SPR_Marowak;
    //global.Dex_Sprites[106] = SPR_Hitmonlee;
    //global.Dex_Sprites[107] = SPR_Hitmonchan;
    global.Dex_Sprites[108] = SPR_Lickitung;
    global.Dex_Sprites[109] = SPR_Koffing;
    //global.Dex_Sprites[110] = SPR_Weezing;
    global.Dex_Sprites[111] = SPR_Rhyhorn;
    //global.Dex_Sprites[112] = SPR_Rhydon;
    global.Dex_Sprites[113] = SPR_Chansey;
    global.Dex_Sprites[114] = SPR_Tangela;
    //global.Dex_Sprites[115] = SPR_Kangaskhan;
    global.Dex_Sprites[116] = SPR_Horsea;
    //global.Dex_Sprites[117] = SPR_Seadra;
    global.Dex_Sprites[118] = SPR_Goldeen;
    //global.Dex_Sprites[119] = SPR_Seaking;
    global.Dex_Sprites[120] = SPR_Staryu;
    //global.Dex_Sprites[121] = SPR_Starmie;
    //global.Dex_Sprites[122] = SPR_Mr_Mime;
    global.Dex_Sprites[123] = SPR_Scyther;
    //global.Dex_Sprites[124] = SPR_Jynx;
    //global.Dex_Sprites[125] = SPR_Electabuzz;
    //global.Dex_Sprites[126] = SPR_Magmar;
    global.Dex_Sprites[127] = SPR_Pinsir;
    global.Dex_Sprites[128] = SPR_Tauros;
    global.Dex_Sprites[129] = SPR_Magikarp;
    //global.Dex_Sprites[130] = SPR_Gyarados;
    //global.Dex_Sprites[131] = SPR_Lapras;
    //global.Dex_Sprites[132] = SPR_Ditto;
    global.Dex_Sprites[133] = SPR_Eevee;
    //global.Dex_Sprites[134] = SPR_Vaporeon;
    //global.Dex_Sprites[135] = SPR_Jolteon;
    //global.Dex_Sprites[136] = SPR_Flareon;
    global.Dex_Sprites[137] = SPR_Porygon;
    global.Dex_Sprites[138] = SPR_Omanyte;
    //global.Dex_Sprites[139] = SPR_Omastar;
    global.Dex_Sprites[140] = SPR_Kabuto;
    //global.Dex_Sprites[141] = SPR_Kabutops;
    //global.Dex_Sprites[142] = SPR_Aerodactyl;
    //global.Dex_Sprites[143] = SPR_Snorlax;
    //global.Dex_Sprites[144] = SPR_Articuno;
    //global.Dex_Sprites[145] = SPR_Zapdos;
    //global.Dex_Sprites[146] = SPR_Moltres;
    global.Dex_Sprites[147] = SPR_Dratini;
    //global.Dex_Sprites[148] = SPR_Dragonair;
    //global.Dex_Sprites[149] = SPR_Dragonite;
    //global.Dex_Sprites[150] = SPR_Mewtwo;
    //global.Dex_Sprites[151] = SPR_Mew;



	// Pokemon Primary Types

	global.Dex_Primary_Types[1] = "Grass"; // Bulbasaur
	global.Dex_Primary_Types[2] = "Grass"; // Ivysaur
	global.Dex_Primary_Types[3] = "Grass"; // Venusaur
	global.Dex_Primary_Types[4] = "Fire";  // Charmander
	global.Dex_Primary_Types[5] = "Fire";  // Charmeleon
	global.Dex_Primary_Types[6] = "Fire";  // Charizard
	global.Dex_Primary_Types[7] = "Water"; // Squirtle
	global.Dex_Primary_Types[8] = "Water"; // Wartortle
	global.Dex_Primary_Types[9] = "Water"; // Blastoise
	global.Dex_Primary_Types[10] = "Bug";  // Caterpie
	global.Dex_Primary_Types[11] = "Bug";  // Metapod
	global.Dex_Primary_Types[12] = "Bug";  // Butterfree
	global.Dex_Primary_Types[13] = "Bug";  // Weedle
	global.Dex_Primary_Types[14] = "Bug";  // Kakuna
	global.Dex_Primary_Types[15] = "Bug";  // Beedrill
	global.Dex_Primary_Types[16] = "Normal"; // Pidgey
	global.Dex_Primary_Types[17] = "Normal"; // Pidgeotto
	global.Dex_Primary_Types[18] = "Normal"; // Pidgeot
	global.Dex_Primary_Types[19] = "Normal"; // Rattata
	global.Dex_Primary_Types[20] = "Normal"; // Raticate
	global.Dex_Primary_Types[21] = "Normal"; // Spearow
	global.Dex_Primary_Types[22] = "Normal"; // Fearow
	global.Dex_Primary_Types[23] = "Poison"; // Ekans
	global.Dex_Primary_Types[24] = "Poison"; // Arbok
	global.Dex_Primary_Types[25] = "Electric"; // Pikachu
	global.Dex_Primary_Types[26] = "Electric"; // Raichu
	global.Dex_Primary_Types[27] = "Ground"; // Sandshrew
	global.Dex_Primary_Types[28] = "Ground"; // Sandslash
	global.Dex_Primary_Types[29] = "Poison"; // Nidoran♀
	global.Dex_Primary_Types[30] = "Poison"; // Nidorina
	global.Dex_Primary_Types[31] = "Poison"; // Nidoqueen
	global.Dex_Primary_Types[32] = "Poison"; // Nidoran♂
	global.Dex_Primary_Types[33] = "Poison"; // Nidorino
	global.Dex_Primary_Types[34] = "Poison"; // Nidoking
	global.Dex_Primary_Types[35] = "Normal";  // Clefairy
	global.Dex_Primary_Types[36] = "Normal";  // Clefable
	global.Dex_Primary_Types[37] = "Fire";   // Vulpix
	global.Dex_Primary_Types[38] = "Fire";   // Ninetales
	global.Dex_Primary_Types[39] = "Normal"; // Jigglypuff
	global.Dex_Primary_Types[40] = "Normal"; // Wigglytuff
	global.Dex_Primary_Types[41] = "Poison"; // Zubat
	global.Dex_Primary_Types[42] = "Poison"; // Golbat
	global.Dex_Primary_Types[43] = "Grass";  // Oddish
	global.Dex_Primary_Types[44] = "Grass";  // Gloom
	global.Dex_Primary_Types[45] = "Grass";  // Vileplume
	global.Dex_Primary_Types[46] = "Bug";    // Paras
	global.Dex_Primary_Types[47] = "Bug";    // Parasect
	global.Dex_Primary_Types[48] = "Bug";    // Venonat
	global.Dex_Primary_Types[49] = "Bug";    // Venomoth
	global.Dex_Primary_Types[50] = "Ground"; // Diglett
	global.Dex_Primary_Types[51] = "Ground"; // Dugtrio
	global.Dex_Primary_Types[52] = "Normal"; // Meowth
	global.Dex_Primary_Types[53] = "Normal"; // Persian
	global.Dex_Primary_Types[54] = "Water";  // Psyduck
	global.Dex_Primary_Types[55] = "Water";  // Golduck
	global.Dex_Primary_Types[56] = "Fighting"; // Mankey
	global.Dex_Primary_Types[57] = "Fighting"; // Primeape
	global.Dex_Primary_Types[58] = "Fire";     // Growlithe
	global.Dex_Primary_Types[59] = "Fire";     // Arcanine
	global.Dex_Primary_Types[60] = "Water";    // Poliwag
	global.Dex_Primary_Types[61] = "Water";    // Poliwhirl
	global.Dex_Primary_Types[62] = "Water";    // Poliwrath
	global.Dex_Primary_Types[63] = "Psychic";  // Abra
	global.Dex_Primary_Types[64] = "Psychic";  // Kadabra
	global.Dex_Primary_Types[65] = "Psychic";  // Alakazam
	global.Dex_Primary_Types[66] = "Fighting"; // Machop
	global.Dex_Primary_Types[67] = "Fighting"; // Machoke
	global.Dex_Primary_Types[68] = "Fighting"; // Machamp
	global.Dex_Primary_Types[69] = "Grass";    // Bellsprout
	global.Dex_Primary_Types[70] = "Grass";    // Weepinbell
	global.Dex_Primary_Types[71] = "Grass";    // Victreebel
	global.Dex_Primary_Types[72] = "Water";    // Tentacool
	global.Dex_Primary_Types[73] = "Water";    // Tentacruel
	global.Dex_Primary_Types[74] = "Rock";     // Geodude
	global.Dex_Primary_Types[75] = "Rock";     // Graveler
	global.Dex_Primary_Types[76] = "Rock";     // Golem
	global.Dex_Primary_Types[77] = "Fire";     // Ponyta
	global.Dex_Primary_Types[78] = "Fire";     // Rapidash
	global.Dex_Primary_Types[79] = "Water";    // Slowpoke
	global.Dex_Primary_Types[80] = "Water";    // Slowbro
	global.Dex_Primary_Types[81] = "Electric"; // Magnemite
	global.Dex_Primary_Types[82] = "Electric"; // Magneton
	global.Dex_Primary_Types[83] = "Normal";   // Farfetch'd
	global.Dex_Primary_Types[84] = "Normal";   // Doduo
	global.Dex_Primary_Types[85] = "Normal";   // Dodrio
	global.Dex_Primary_Types[86] = "Water";    // Seel
	global.Dex_Primary_Types[87] = "Water";    // Dewgong
	global.Dex_Primary_Types[88] = "Poison";   // Grimer
	global.Dex_Primary_Types[89] = "Poison";   // Muk
	global.Dex_Primary_Types[90] = "Water";    // Shellder
	global.Dex_Primary_Types[91] = "Water";    // Cloyster
	global.Dex_Primary_Types[92] = "Ghost";    // Gastly
	global.Dex_Primary_Types[93] = "Ghost";    // Haunter
	global.Dex_Primary_Types[94] = "Ghost";    // Gengar
	global.Dex_Primary_Types[95] = "Rock";     // Onix
	global.Dex_Primary_Types[96] = "Psychic"; // Drowzee
    global.Dex_Primary_Types[97] = "Psychic"; // Hypno
    global.Dex_Primary_Types[98] = "Water"; // Krabby
    global.Dex_Primary_Types[99] = "Water"; // Kingler
    global.Dex_Primary_Types[100] = "Electric"; // Voltorb
    global.Dex_Primary_Types[101] = "Electric"; // Electrode
    global.Dex_Primary_Types[102] = "Grass"; // Exeggcute
    global.Dex_Primary_Types[103] = "Grass"; // Exeggutor
    global.Dex_Primary_Types[104] = "Ground"; // Cubone
    global.Dex_Primary_Types[105] = "Ground"; // Marowak
    global.Dex_Primary_Types[106] = "Fighting"; // Hitmonlee
    global.Dex_Primary_Types[107] = "Fighting"; // Hitmonchan
    global.Dex_Primary_Types[108] = "Normal"; // Lickitung
    global.Dex_Primary_Types[109] = "Poison"; // Koffing
    global.Dex_Primary_Types[110] = "Poison"; // Weezing
    global.Dex_Primary_Types[111] = "Ground"; // Rhyhorn
    global.Dex_Primary_Types[112] = "Ground"; // Rhydon
    global.Dex_Primary_Types[113] = "Normal"; // Chansey
    global.Dex_Primary_Types[114] = "Grass"; // Tangela
    global.Dex_Primary_Types[115] = "Normal"; // Kangaskhan
    global.Dex_Primary_Types[116] = "Water"; // Horsea
    global.Dex_Primary_Types[117] = "Water"; // Seadra
    global.Dex_Primary_Types[118] = "Water"; // Goldeen
    global.Dex_Primary_Types[119] = "Water"; // Seaking
    global.Dex_Primary_Types[120] = "Water"; // Staryu
    global.Dex_Primary_Types[121] = "Water"; // Starmie
    global.Dex_Primary_Types[122] = "Psychic"; // Mr. Mime
    global.Dex_Primary_Types[123] = "Bug"; // Scyther
    global.Dex_Primary_Types[124] = "Ice"; // Jynx
    global.Dex_Primary_Types[125] = "Electric"; // Electabuzz
    global.Dex_Primary_Types[126] = "Fire"; // Magmar
    global.Dex_Primary_Types[127] = "Bug"; // Pinsir
    global.Dex_Primary_Types[128] = "Normal"; // Tauros
    global.Dex_Primary_Types[129] = "Water"; // Magikarp
    global.Dex_Primary_Types[130] = "Water"; // Gyarados
    global.Dex_Primary_Types[131] = "Water"; // Lapras
    global.Dex_Primary_Types[132] = "Normal"; // Ditto
    global.Dex_Primary_Types[133] = "Normal"; // Eevee
    global.Dex_Primary_Types[134] = "Water"; // Vaporeon
    global.Dex_Primary_Types[135] = "Electric"; // Jolteon
    global.Dex_Primary_Types[136] = "Fire"; // Flareon
    global.Dex_Primary_Types[137] = "Normal"; // Porygon
    global.Dex_Primary_Types[138] = "Rock"; // Omanyte
    global.Dex_Primary_Types[139] = "Rock"; // Omastar
    global.Dex_Primary_Types[140] = "Rock"; // Kabuto
    global.Dex_Primary_Types[141] = "Rock"; // Kabutops
	global.Dex_Primary_Types[142] = "Rock"; // Aerodactyl
    global.Dex_Primary_Types[143] = "Normal"; // Snorlax
    global.Dex_Primary_Types[144] = "Ice"; // Articuno
    global.Dex_Primary_Types[145] = "Electric"; // Zapdos
    global.Dex_Primary_Types[146] = "Fire"; // Moltres
    global.Dex_Primary_Types[147] = "Dragon"; // Dratini
    global.Dex_Primary_Types[148] = "Dragon"; // Dragonair
    global.Dex_Primary_Types[149] = "Dragon"; // Dragonite
    global.Dex_Primary_Types[150] = "Psychic"; // Mewtwo
    global.Dex_Primary_Types[151] = "Psychic"; // Mew
	
	// Can Hatch from an Egg
	global.Dex_Hatching[1] = "True";  // Bulbasaur
	global.Dex_Hatching[2] = "False"; // Ivysaur
	global.Dex_Hatching[3] = "False"; // Venusaur
	global.Dex_Hatching[4] = "True";  // Charmander
	global.Dex_Hatching[5] = "False"; // Charmeleon
	global.Dex_Hatching[6] = "False"; // Charizard
	global.Dex_Hatching[7] = "True";  // Squirtle
	global.Dex_Hatching[8] = "False"; // Wartortle
	global.Dex_Hatching[9] = "False"; // Blastoise
	global.Dex_Hatching[10] = "True"; // Caterpie
	global.Dex_Hatching[11] = "False"; // Metapod
	global.Dex_Hatching[12] = "False"; // Butterfree
	global.Dex_Hatching[13] = "True"; // Weedle
	global.Dex_Hatching[14] = "False"; // Kakuna
	global.Dex_Hatching[15] = "False"; // Beedrill
	global.Dex_Hatching[16] = "True"; // Pidgey
	global.Dex_Hatching[17] = "False"; // Pidgeotto
	global.Dex_Hatching[18] = "False"; // Pidgeot
	global.Dex_Hatching[19] = "True"; // Rattata
	global.Dex_Hatching[20] = "False"; // Raticate
	global.Dex_Hatching[21] = "True"; // Spearow
	global.Dex_Hatching[22] = "False"; // Fearow
	global.Dex_Hatching[23] = "True"; // Ekans
	global.Dex_Hatching[24] = "False"; // Arbok
	global.Dex_Hatching[25] = "True"; // Pikachu (Pichu hatches, evolves to Pikachu)
	global.Dex_Hatching[26] = "False"; // Raichu
	global.Dex_Hatching[27] = "True"; // Sandshrew
	global.Dex_Hatching[28] = "False"; // Sandslash
	global.Dex_Hatching[29] = "True"; // Nidoran♀
	global.Dex_Hatching[30] = "False"; // Nidorina
	global.Dex_Hatching[31] = "False"; // Nidoqueen
	global.Dex_Hatching[32] = "True"; // Nidoran♂
	global.Dex_Hatching[33] = "False"; // Nidorino
	global.Dex_Hatching[34] = "False"; // Nidoking
	global.Dex_Hatching[35] = "True"; // Clefairy (Cleffa hatches, evolves to Clefairy)
	global.Dex_Hatching[36] = "False"; // Clefable
	global.Dex_Hatching[37] = "True"; // Vulpix
	global.Dex_Hatching[38] = "False"; // Ninetales
	global.Dex_Hatching[39] = "True"; // Jigglypuff (Igglybuff hatches, evolves to Jigglypuff)
	global.Dex_Hatching[40] = "False"; // Wigglytuff
	global.Dex_Hatching[41] = "True"; // Zubat
	global.Dex_Hatching[42] = "False"; // Golbat
	global.Dex_Hatching[43] = "True"; // Oddish
	global.Dex_Hatching[44] = "False"; // Gloom
	global.Dex_Hatching[45] = "False"; // Vileplume
	global.Dex_Hatching[46] = "True"; // Paras
	global.Dex_Hatching[47] = "False"; // Parasect
	global.Dex_Hatching[48] = "True"; // Venonat
	global.Dex_Hatching[49] = "False"; // Venomoth
	global.Dex_Hatching[50] = "True"; // Diglett
	global.Dex_Hatching[51] = "False"; // Dugtrio
	global.Dex_Hatching[52] = "True"; // Meowth
	global.Dex_Hatching[53] = "False"; // Persian
	global.Dex_Hatching[54] = "True"; // Psyduck
	global.Dex_Hatching[55] = "False"; // Golduck
	global.Dex_Hatching[56] = "True"; // Mankey
	global.Dex_Hatching[57] = "False"; // Primeape
	global.Dex_Hatching[58] = "True"; // Growlithe
	global.Dex_Hatching[59] = "False"; // Arcanine
	global.Dex_Hatching[60] = "True"; // Poliwag
	global.Dex_Hatching[61] = "False"; // Poliwhirl
	global.Dex_Hatching[62] = "False"; // Poliwrath
	global.Dex_Hatching[63] = "True"; // Abra
	global.Dex_Hatching[64] = "False"; // Kadabra
	global.Dex_Hatching[65] = "False"; // Alakazam
	global.Dex_Hatching[66] = "True"; // Machop
	global.Dex_Hatching[67] = "False"; // Machoke
	global.Dex_Hatching[68] = "False"; // Machamp
	global.Dex_Hatching[69] = "True"; // Bellsprout
	global.Dex_Hatching[70] = "False"; // Weepinbell
	global.Dex_Hatching[71] = "False"; // Victreebel
	global.Dex_Hatching[72] = "True"; // Tentacool
	global.Dex_Hatching[73] = "False"; // Tentacruel
	global.Dex_Hatching[74] = "True"; // Geodude
	global.Dex_Hatching[75] = "False"; // Graveler
	global.Dex_Hatching[76] = "False"; // Golem
	global.Dex_Hatching[77] = "True"; // Ponyta
	global.Dex_Hatching[78] = "False"; // Rapidash
	global.Dex_Hatching[79] = "True"; // Slowpoke
	global.Dex_Hatching[80] = "False"; // Slowbro
	global.Dex_Hatching[81] = "True"; // Magnemite
	global.Dex_Hatching[82] = "False"; // Magneton
	global.Dex_Hatching[83] = "True"; // Farfetch'd
	global.Dex_Hatching[84] = "True"; // Doduo
	global.Dex_Hatching[85] = "False"; // Dodrio
	global.Dex_Hatching[86] = "True"; // Seel
	global.Dex_Hatching[87] = "False"; // Dewgong
	global.Dex_Hatching[88] = "True"; // Grimer
	global.Dex_Hatching[89] = "False"; // Muk
	global.Dex_Hatching[90] = "True"; // Shellder
	global.Dex_Hatching[91] = "False"; // Cloyster
	global.Dex_Hatching[92] = "True"; // Gastly
	global.Dex_Hatching[93] = "False"; // Haunter
	global.Dex_Hatching[94] = "False"; // Gengar
	global.Dex_Hatching[95] = "True"; // Onix
	global.Dex_Hatching[96] = "True"; // Drowzee
	global.Dex_Hatching[97] = "False"; // Hypno
	global.Dex_Hatching[98] = "True"; // Krabby
	global.Dex_Hatching[99] = "False"; // Kingler
	global.Dex_Hatching[100] = "True"; // Voltorb
	global.Dex_Hatching[101] = "False"; // Electrode
	global.Dex_Hatching[102] = "True";  // Exeggcute
	global.Dex_Hatching[103] = "False"; // Exeggutor
	global.Dex_Hatching[104] = "True";  // Cubone
	global.Dex_Hatching[105] = "False"; // Marowak
	global.Dex_Hatching[106] = "False"; // Hitmonlee
	global.Dex_Hatching[107] = "False"; // Hitmonchan
	global.Dex_Hatching[108] = "True";  // Lickitung
	global.Dex_Hatching[109] = "True";  // Koffing
	global.Dex_Hatching[110] = "False"; // Weezing
	global.Dex_Hatching[111] = "True";  // Rhyhorn
	global.Dex_Hatching[112] = "False"; // Rhydon
	global.Dex_Hatching[113] = "True";  // Chansey
	global.Dex_Hatching[114] = "True";  // Tangela
	global.Dex_Hatching[115] = "False"; // Kangaskhan
	global.Dex_Hatching[116] = "True";  // Horsea
	global.Dex_Hatching[117] = "False"; // Seadra
	global.Dex_Hatching[118] = "True";  // Goldeen
	global.Dex_Hatching[119] = "False"; // Seaking
	global.Dex_Hatching[120] = "True";  // Staryu
	global.Dex_Hatching[121] = "False"; // Starmie
	global.Dex_Hatching[122] = "False"; // Mr. Mime
	global.Dex_Hatching[123] = "True";  // Scyther
	global.Dex_Hatching[124] = "False"; // Jynx
	global.Dex_Hatching[125] = "False"; // Electabuzz
	global.Dex_Hatching[126] = "False"; // Magmar
	global.Dex_Hatching[127] = "True";  // Pinsir
	global.Dex_Hatching[128] = "True";  // Tauros
	global.Dex_Hatching[129] = "True";  // Magikarp
	global.Dex_Hatching[130] = "False"; // Gyarados
	global.Dex_Hatching[131] = "False"; // Lapras
	global.Dex_Hatching[132] = "False"; // Ditto
	global.Dex_Hatching[133] = "True";  // Eevee
	global.Dex_Hatching[134] = "False"; // Vaporeon
	global.Dex_Hatching[135] = "False"; // Jolteon
	global.Dex_Hatching[136] = "False"; // Flareon
	global.Dex_Hatching[137] = "True";  // Porygon
	global.Dex_Hatching[138] = "True";  // Omanyte
	global.Dex_Hatching[139] = "False"; // Omastar
	global.Dex_Hatching[140] = "True";  // Kabuto
	global.Dex_Hatching[141] = "False"; // Kabutops
	global.Dex_Hatching[142] = "False"; // Aerodactyl
	global.Dex_Hatching[143] = "False"; // Snorlax
	global.Dex_Hatching[144] = "False"; // Articuno
	global.Dex_Hatching[145] = "False"; // Zapdos
	global.Dex_Hatching[146] = "False"; // Moltres
	global.Dex_Hatching[147] = "True";  // Dratini
	global.Dex_Hatching[148] = "False"; // Dragonair
	global.Dex_Hatching[149] = "False"; // Dragonite
	global.Dex_Hatching[150] = "False"; // Mewtwo
	global.Dex_Hatching[151] = "False"; // Mew
	
	// Evolutions (Gen 1)
	global.Dex_Evolve_Level[1] = 16; // Bulbasaur -> Ivysaur
	global.Dex_Evolve_Level[2] = 32; // Ivysaur -> Venusaur
	global.Dex_Evolve_Level[3] = -1; // Venusaur
	global.Dex_Evolve_Level[4] = 16; // Charmander -> Charmeleon
	global.Dex_Evolve_Level[5] = 36; // Charmeleon -> Charizard
	global.Dex_Evolve_Level[6] = -1; // Charizard
	global.Dex_Evolve_Level[7] = 16; // Squirtle -> Wartortle
	global.Dex_Evolve_Level[8] = 36; // Wartortle -> Blastoise
	global.Dex_Evolve_Level[9] = -1; // Blastoise
	global.Dex_Evolve_Level[10] = 7;  // Caterpie -> Metapod
	global.Dex_Evolve_Level[11] = 10; // Metapod -> Butterfree
	global.Dex_Evolve_Level[12] = -1; // Butterfree
	global.Dex_Evolve_Level[13] = 7;  // Weedle -> Kakuna
	global.Dex_Evolve_Level[14] = 10; // Kakuna -> Beedrill
	global.Dex_Evolve_Level[15] = -1; // Beedrill
	global.Dex_Evolve_Level[16] = 18; // Pidgey -> Pidgeotto
	global.Dex_Evolve_Level[17] = 36; // Pidgeotto -> Pidgeot
	global.Dex_Evolve_Level[18] = -1; // Pidgeot
	global.Dex_Evolve_Level[19] = 20; // Rattata -> Raticate
	global.Dex_Evolve_Level[20] = -1; // Raticate
	global.Dex_Evolve_Level[21] = 20; // Spearow -> Fearow
	global.Dex_Evolve_Level[22] = -1; // Fearow
	global.Dex_Evolve_Level[23] = 22; // Ekans -> Arbok
	global.Dex_Evolve_Level[24] = -1; // Arbok
	global.Dex_Evolve_Level[25] = -1; // Pikachu (Needs Thunder Stone)
	global.Dex_Evolve_Level[26] = -1; // Raichu
	global.Dex_Evolve_Level[27] = 22; // Sandshrew -> Sandslash
	global.Dex_Evolve_Level[28] = -1; // Sandslash
	global.Dex_Evolve_Level[29] = 16; // Nidoran♀ -> Nidorina
	global.Dex_Evolve_Level[30] = -1; // Nidorina (Needs Moon Stone)
	global.Dex_Evolve_Level[31] = -1; // Nidoqueen
	global.Dex_Evolve_Level[32] = 16; // Nidoran♂ -> Nidorino
	global.Dex_Evolve_Level[33] = -1; // Nidorino (Needs Moon Stone)
	global.Dex_Evolve_Level[34] = -1; // Nidoking
	global.Dex_Evolve_Level[35] = -1; // Clefairy (Needs Moon Stone)
	global.Dex_Evolve_Level[36] = -1; // Clefable
	global.Dex_Evolve_Level[37] = -1; // Vulpix (Needs Fire Stone)
	global.Dex_Evolve_Level[38] = -1; // Ninetales
	global.Dex_Evolve_Level[39] = -1; // Jigglypuff (Needs Moon Stone)
	global.Dex_Evolve_Level[40] = -1; // Wigglytuff
	global.Dex_Evolve_Level[41] = 22; // Zubat -> Golbat
	global.Dex_Evolve_Level[42] = -1; // Golbat
	global.Dex_Evolve_Level[43] = 21; // Oddish -> Gloom
	global.Dex_Evolve_Level[44] = -1; // Gloom (Needs Leaf/Fire Stone)
	global.Dex_Evolve_Level[45] = -1; // Vileplume
	global.Dex_Evolve_Level[46] = 24; // Paras -> Parasect
	global.Dex_Evolve_Level[47] = -1; // Parasect
	global.Dex_Evolve_Level[48] = 31; // Venonat -> Venomoth
	global.Dex_Evolve_Level[49] = -1; // Venomoth
	global.Dex_Evolve_Level[50] = 26; // Diglett -> Dugtrio
	global.Dex_Evolve_Level[51] = -1; // Dugtrio
	global.Dex_Evolve_Level[52] = 28; // Meowth -> Persian
	global.Dex_Evolve_Level[53] = -1; // Persian
	global.Dex_Evolve_Level[54] = 33; // Psyduck -> Golduck
	global.Dex_Evolve_Level[55] = -1; // Golduck
	global.Dex_Evolve_Level[56] = 28; // Mankey -> Primeape
	global.Dex_Evolve_Level[57] = -1; // Primeape
	global.Dex_Evolve_Level[58] = -1; // Growlithe (Needs Fire Stone)
	global.Dex_Evolve_Level[59] = -1; // Arcanine
	global.Dex_Evolve_Level[60] = 25; // Poliwag -> Poliwhirl
	global.Dex_Evolve_Level[61] = -1; // Poliwhirl (Needs Water Stone)
	global.Dex_Evolve_Level[62] = -1; // Poliwrath
	global.Dex_Evolve_Level[63] = 16; // Abra -> Kadabra
	global.Dex_Evolve_Level[64] = -1; // Kadabra (Trade Evolution)
	global.Dex_Evolve_Level[65] = -1; // Alakazam
	global.Dex_Evolve_Level[66] = 28; // Machop -> Machoke
	global.Dex_Evolve_Level[67] = -1; // Machoke (Trade Evolution)
	global.Dex_Evolve_Level[68] = -1; // Machamp
	global.Dex_Evolve_Level[69] = 21; // Bellsprout -> Weepinbell
	global.Dex_Evolve_Level[70] = -1; // Weepinbell (Needs Leaf Stone)
	global.Dex_Evolve_Level[71] = -1; // Victreebel
	global.Dex_Evolve_Level[72] = 30; // Tentacool -> Tentacruel
	global.Dex_Evolve_Level[73] = -1; // Tentacruel
	global.Dex_Evolve_Level[74] = 25; // Geodude -> Graveler
	global.Dex_Evolve_Level[75] = -1; // Graveler (Trade Evolution)
	global.Dex_Evolve_Level[76] = -1; // Golem
	global.Dex_Evolve_Level[77] = 40; // Ponyta -> Rapidash
	global.Dex_Evolve_Level[78] = -1; // Rapidash
	global.Dex_Evolve_Level[79] = 37; // Slowpoke -> Slowbro
	global.Dex_Evolve_Level[80] = -1; // Slowbro
	global.Dex_Evolve_Level[81] = 30; // Magnemite -> Magneton
	global.Dex_Evolve_Level[82] = -1; // Magneton
	global.Dex_Evolve_Level[83] = -1; // Farfetch'd (No Evolution)
	global.Dex_Evolve_Level[84] = 31; // Doduo -> Dodrio
	global.Dex_Evolve_Level[85] = -1; // Dodrio
	global.Dex_Evolve_Level[86] = 34; // Seel -> Dewgong
	global.Dex_Evolve_Level[87] = -1; // Dewgong
	global.Dex_Evolve_Level[88] = 38; // Grimer -> Muk
	global.Dex_Evolve_Level[89] = -1; // Muk
	global.Dex_Evolve_Level[90] = -1; // Shellder (Needs Water Stone)
	global.Dex_Evolve_Level[91] = -1; // Cloyster
	global.Dex_Evolve_Level[92] = 25; // Gastly -> Haunter
	global.Dex_Evolve_Level[93] = -1; // Haunter (Trade Evolution)
	global.Dex_Evolve_Level[94] = -1; // Gengar
	global.Dex_Evolve_Level[95] = -1; // Onix (No Evolution in Gen 1)
	global.Dex_Evolve_Level[96] = 26; // Drowzee -> Hypno
	global.Dex_Evolve_Level[97] = -1; // Hypno
	global.Dex_Evolve_Level[98] = 28; // Krabby -> Kingler
	global.Dex_Evolve_Level[99] = -1; // Kingler
	global.Dex_Evolve_Level[100] = 30; // Voltorb -> Electrode
	global.Dex_Evolve_Level[101] = -1; // Electrode
	global.Dex_Evolve_Level[102] = -1; // Exeggcute (Needs Leaf Stone)
	global.Dex_Evolve_Level[103] = -1; // Exeggutor
	global.Dex_Evolve_Level[104] = 28; // Cubone -> Marowak
	global.Dex_Evolve_Level[105] = -1; // Marowak
	global.Dex_Evolve_Level[106] = -1; // Hitmonlee (No Evolution)
	global.Dex_Evolve_Level[107] = -1; // Hitmonchan (No Evolution)
	global.Dex_Evolve_Level[108] = -1; // Lickitung (No Evolution in Gen 1)
	global.Dex_Evolve_Level[109] = 35; // Koffing -> Weezing
	global.Dex_Evolve_Level[110] = -1; // Weezing
	global.Dex_Evolve_Level[111] = 42; // Rhyhorn -> Rhydon
	global.Dex_Evolve_Level[112] = -1; // Rhydon
	global.Dex_Evolve_Level[113] = -1; // Chansey (No Evolution in Gen 1)
	global.Dex_Evolve_Level[114] = -1; // Tangela (No Evolution in Gen 1)
	global.Dex_Evolve_Level[115] = -1; // Kangaskhan (No Evolution)
	global.Dex_Evolve_Level[116] = 32; // Horsea -> Seadra
	global.Dex_Evolve_Level[117] = -1; // Seadra
	global.Dex_Evolve_Level[118] = 33; // Goldeen -> Seaking
	global.Dex_Evolve_Level[119] = -1; // Seaking
	global.Dex_Evolve_Level[120] = -1; // Staryu (Needs Water Stone)
	global.Dex_Evolve_Level[121] = -1; // Starmie
	global.Dex_Evolve_Level[122] = -1; // Mr. Mime (No Evolution in Gen 1)
	global.Dex_Evolve_Level[123] = -1; // Scyther (No Evolution in Gen 1)
	global.Dex_Evolve_Level[124] = -1; // Jynx (No Evolution in Gen 1)
	global.Dex_Evolve_Level[125] = -1; // Electabuzz (No Evolution in Gen 1)
	global.Dex_Evolve_Level[126] = -1; // Magmar (No Evolution in Gen 1)
	global.Dex_Evolve_Level[127] = -1; // Pinsir (No Evolution)
	global.Dex_Evolve_Level[128] = -1; // Tauros (No Evolution)
	global.Dex_Evolve_Level[129] = 20; // Magikarp -> Gyarados
	global.Dex_Evolve_Level[130] = -1; // Gyarados
	global.Dex_Evolve_Level[131] = -1; // Lapras (No Evolution)
	global.Dex_Evolve_Level[132] = -1; // Ditto (No Evolution)
	global.Dex_Evolve_Level[133] = -1; // Eevee (Needs Water/Thunder/Fire Stone)
	global.Dex_Evolve_Level[134] = -1; // Vaporeon
	global.Dex_Evolve_Level[135] = -1; // Jolteon
	global.Dex_Evolve_Level[136] = -1; // Flareon
	global.Dex_Evolve_Level[137] = -1; // Porygon (No Evolution in Gen 1)
	global.Dex_Evolve_Level[138] = 40; // Omanyte -> Omastar
	global.Dex_Evolve_Level[139] = -1; // Omastar
	global.Dex_Evolve_Level[140] = 40; // Kabuto -> Kabutops
	global.Dex_Evolve_Level[141] = -1; // Kabutops
	global.Dex_Evolve_Level[142] = -1; // Aerodactyl (No Evolution)
	global.Dex_Evolve_Level[143] = -1; // Snorlax (No Evolution)
	global.Dex_Evolve_Level[144] = -1; // Articuno (Legendary, No Evolution)
	global.Dex_Evolve_Level[145] = -1; // Zapdos (Legendary, No Evolution)
	global.Dex_Evolve_Level[146] = -1; // Moltres (Legendary, No Evolution)
	global.Dex_Evolve_Level[147] = 30; // Dratini -> Dragonair
	global.Dex_Evolve_Level[148] = 55; // Dragonair -> Dragonite
	global.Dex_Evolve_Level[149] = -1; // Dragonite
	global.Dex_Evolve_Level[150] = -1; // Mewtwo (Legendary, No Evolution)
	global.Dex_Evolve_Level[151] = -1; // Mew (Mythical, No Evolution)

	// Bulbasaur
	global.Dex_Health[1] = 45;
	global.Dex_Attack[1] = 49;
	global.Dex_Defence[1] = 49;
	global.Dex_SPattack[1] = 65;
	global.Dex_SPdefence[1] = 65;
	global.Dex_Speed[1] = 45;

	// Charmander
	global.Dex_Health[4] = 39;
	global.Dex_Attack[4] = 52;
	global.Dex_Defence[4] = 43;
	global.Dex_SPattack[4] = 60;
	global.Dex_SPdefence[4] = 50;
	global.Dex_Speed[4] = 65;

	// Squirtle
	global.Dex_Health[7] = 44;
	global.Dex_Attack[7] = 48;
	global.Dex_Defence[7] = 65;
	global.Dex_SPattack[7] = 50;
	global.Dex_SPdefence[7] = 64;
	global.Dex_Speed[7] = 43;

	// Caterpie
	global.Dex_Health[10] = 45;
	global.Dex_Attack[10] = 30;
	global.Dex_Defence[10] = 35;
	global.Dex_SPattack[10] = 20;
	global.Dex_SPdefence[10] = 20;
	global.Dex_Speed[10] = 45;

	// Weedle
	global.Dex_Health[13] = 40;
	global.Dex_Attack[13] = 35;
	global.Dex_Defence[13] = 30;
	global.Dex_SPattack[13] = 20;
	global.Dex_SPdefence[13] = 20;
	global.Dex_Speed[13] = 50;

	// Pidgey
	global.Dex_Health[16] = 40;
	global.Dex_Attack[16] = 45;
	global.Dex_Defence[16] = 40;
	global.Dex_SPattack[16] = 35;
	global.Dex_SPdefence[16] = 35;
	global.Dex_Speed[16] = 56;

	// Rattata
	global.Dex_Health[19] = 30;
	global.Dex_Attack[19] = 56;
	global.Dex_Defence[19] = 35;
	global.Dex_SPattack[19] = 25;
	global.Dex_SPdefence[19] = 35;
	global.Dex_Speed[19] = 72;

	// Spearow
	global.Dex_Health[21] = 40;
	global.Dex_Attack[21] = 60;
	global.Dex_Defence[21] = 30;
	global.Dex_SPattack[21] = 31;
	global.Dex_SPdefence[21] = 31;
	global.Dex_Speed[21] = 70;

	// Ekans
	global.Dex_Health[23] = 35;
	global.Dex_Attack[23] = 60;
	global.Dex_Defence[23] = 44;
	global.Dex_SPattack[23] = 40;
	global.Dex_SPdefence[23] = 54;
	global.Dex_Speed[23] = 55;

	// Pikachu
	global.Dex_Health[25] = 35;
	global.Dex_Attack[25] = 55;
	global.Dex_Defence[25] = 40;
	global.Dex_SPattack[25] = 50;
	global.Dex_SPdefence[25] = 50;
	global.Dex_Speed[25] = 90;

	// Sandshrew
	global.Dex_Health[27] = 50;
	global.Dex_Attack[27] = 75;
	global.Dex_Defence[27] = 85;
	global.Dex_SPattack[27] = 20;
	global.Dex_SPdefence[27] = 30;
	global.Dex_Speed[27] = 40;

	// Nidoran♀
	global.Dex_Health[29] = 55;
	global.Dex_Attack[29] = 47;
	global.Dex_Defence[29] = 52;
	global.Dex_SPattack[29] = 40;
	global.Dex_SPdefence[29] = 50;
	global.Dex_Speed[29] = 41;

	// Nidoran♂
	global.Dex_Health[32] = 46;
	global.Dex_Attack[32] = 57;
	global.Dex_Defence[32] = 40;
	global.Dex_SPattack[32] = 40;
	global.Dex_SPdefence[32] = 50;
	global.Dex_Speed[32] = 50;

	// Clefairy
	global.Dex_Health[35] = 70;
	global.Dex_Attack[35] = 45;
	global.Dex_Defence[35] = 48;
	global.Dex_SPattack[35] = 60;
	global.Dex_SPdefence[35] = 65;
	global.Dex_Speed[35] = 35;

	// Vulpix
	global.Dex_Health[37] = 38;
	global.Dex_Attack[37] = 41;
	global.Dex_Defence[37] = 40;
	global.Dex_SPattack[37] = 50;
	global.Dex_SPdefence[37] = 65;
	global.Dex_Speed[37] = 65;

	// Jigglypuff
	global.Dex_Health[39] = 115;
	global.Dex_Attack[39] = 45;
	global.Dex_Defence[39] = 20;
	global.Dex_SPattack[39] = 45;
	global.Dex_SPdefence[39] = 25;
	global.Dex_Speed[39] = 20;

	// Zubat
	global.Dex_Health[41] = 40;
	global.Dex_Attack[41] = 45;
	global.Dex_Defence[41] = 35;
	global.Dex_SPattack[41] = 30;
	global.Dex_SPdefence[41] = 40;
	global.Dex_Speed[41] = 55;

	// Oddish
	global.Dex_Health[43] = 45;
	global.Dex_Attack[43] = 50;
	global.Dex_Defence[43] = 55;
	global.Dex_SPattack[43] = 75;
	global.Dex_SPdefence[43] = 65;
	global.Dex_Speed[43] = 30;

	// Paras
	global.Dex_Health[46] = 35;
	global.Dex_Attack[46] = 70;
	global.Dex_Defence[46] = 55;
	global.Dex_SPattack[46] = 45;
	global.Dex_SPdefence[46] = 55;
	global.Dex_Speed[46] = 25;

	// Venonat
	global.Dex_Health[48] = 60;
	global.Dex_Attack[48] = 55;
	global.Dex_Defence[48] = 50;
	global.Dex_SPattack[48] = 40;
	global.Dex_SPdefence[48] = 55;
	global.Dex_Speed[48] = 45;

	// Diglett
	global.Dex_Health[50] = 10;
	global.Dex_Attack[50] = 55;
	global.Dex_Defence[50] = 25;
	global.Dex_SPattack[50] = 35;
	global.Dex_SPdefence[50] = 45;
	global.Dex_Speed[50] = 95;

	// Meowth
	global.Dex_Health[52] = 40;
	global.Dex_Attack[52] = 45;
	global.Dex_Defence[52] = 35;
	global.Dex_SPattack[52] = 40;
	global.Dex_SPdefence[52] = 40;
	global.Dex_Speed[52] = 90;

	// Psyduck
	global.Dex_Health[54] = 50;
	global.Dex_Attack[54] = 52;
	global.Dex_Defence[54] = 48;
	global.Dex_SPattack[54] = 65;
	global.Dex_SPdefence[54] = 50;
	global.Dex_Speed[54] = 55;

	// Mankey
	global.Dex_Health[56] = 40;
	global.Dex_Attack[56] = 80;
	global.Dex_Defence[56] = 35;
	global.Dex_SPattack[56] = 35;
	global.Dex_SPdefence[56] = 45;
	global.Dex_Speed[56] = 70;

	// Growlithe
	global.Dex_Health[58] = 55;
	global.Dex_Attack[58] = 70;
	global.Dex_Defence[58] = 45;
	global.Dex_SPattack[58] = 70;
	global.Dex_SPdefence[58] = 50;
	global.Dex_Speed[58] = 60;

	// Poliwag
	global.Dex_Health[60] = 40;
	global.Dex_Attack[60] = 50;
	global.Dex_Defence[60] = 40;
	global.Dex_SPattack[60] = 40;
	global.Dex_SPdefence[60] = 40;
	global.Dex_Speed[60] = 90;

	// Abra
	global.Dex_Health[63] = 25;
	global.Dex_Attack[63] = 20;
	global.Dex_Defence[63] = 15;
	global.Dex_SPattack[63] = 105;
	global.Dex_SPdefence[63] = 55;
	global.Dex_Speed[63] = 90;

	// Machop
	global.Dex_Health[66] = 70;
	global.Dex_Attack[66] = 80;
	global.Dex_Defence[66] = 50;
	global.Dex_SPattack[66] = 35;
	global.Dex_SPdefence[66] = 35;
	global.Dex_Speed[66] = 35;

	// Bellsprout
	global.Dex_Health[69] = 50;
	global.Dex_Attack[69] = 75;
	global.Dex_Defence[69] = 35;
	global.Dex_SPattack[69] = 70;
	global.Dex_SPdefence[69] = 30;
	global.Dex_Speed[69] = 40;

	// Tentacool
	global.Dex_Health[72] = 40;
	global.Dex_Attack[72] = 40;
	global.Dex_Defence[72] = 35;
	global.Dex_SPattack[72] = 50;
	global.Dex_SPdefence[72] = 100;
	global.Dex_Speed[72] = 70;

	// Geodude
	global.Dex_Health[74] = 40;
	global.Dex_Attack[74] = 80;
	global.Dex_Defence[74] = 100;
	global.Dex_SPattack[74] = 30;
	global.Dex_SPdefence[74] = 30;
	global.Dex_Speed[74] = 20;

	// Ponyta
	global.Dex_Health[77] = 50;
	global.Dex_Attack[77] = 85;
	global.Dex_Defence[77] = 55;
	global.Dex_SPattack[77] = 65;
	global.Dex_SPdefence[77] = 50;
	global.Dex_Speed[77] = 90;

	// Slowpoke
	global.Dex_Health[79] = 90;
	global.Dex_Attack[79] = 65;
	global.Dex_Defence[79] = 65;
	global.Dex_SPattack[79] = 40;
	global.Dex_SPdefence[79] = 40;
	global.Dex_Speed[79] = 15;

	// Magnemite
	global.Dex_Health[81] = 25;
	global.Dex_Attack[81] = 35;
	global.Dex_Defence[81] = 70;
	global.Dex_SPattack[81] = 95;
	global.Dex_SPdefence[81] = 55;
	global.Dex_Speed[81] = 45;

	// Farfetch'd
	global.Dex_Health[83] = 52;
	global.Dex_Attack[83] = 65;
	global.Dex_Defence[83] = 55;
	global.Dex_SPattack[83] = 58;
	global.Dex_SPdefence[83] = 50;
	global.Dex_Speed[83] = 60;

	// Doduo
	global.Dex_Health[84] = 35;
	global.Dex_Attack[84] = 85;
	global.Dex_Defence[84] = 45;
	global.Dex_SPattack[84] = 35;
	global.Dex_SPdefence[84] = 35;
	global.Dex_Speed[84] = 75;

	// Seel
	global.Dex_Health[86] = 65;
	global.Dex_Attack[86] = 45;
	global.Dex_Defence[86] = 55;
	global.Dex_SPattack[86] = 45;
	global.Dex_SPdefence[86] = 50;
	global.Dex_Speed[86] = 45;

	// Grimer
	global.Dex_Health[88] = 80;
	global.Dex_Attack[88] = 80;
	global.Dex_Defence[88] = 50;
	global.Dex_SPattack[88] = 40;
	global.Dex_SPdefence[88] = 50;
	global.Dex_Speed[88] = 25;

	// Shellder
	global.Dex_Health[90] = 30;
	global.Dex_Attack[90] = 65;
	global.Dex_Defence[90] = 100;
	global.Dex_SPattack[90] = 45;
	global.Dex_SPdefence[90] = 25;
	global.Dex_Speed[90] = 40;

	// Gastly
	global.Dex_Health[92] = 30;
	global.Dex_Attack[92] = 35;
	global.Dex_Defence[92] = 30;
	global.Dex_SPattack[92] = 100;
	global.Dex_SPdefence[92] = 35;
	global.Dex_Speed[92] = 80;

	// Onix
	global.Dex_Health[95] = 35;
	global.Dex_Attack[95] = 45;
	global.Dex_Defence[95] = 160;
	global.Dex_SPattack[95] = 30;
	global.Dex_SPdefence[95] = 45;
	global.Dex_Speed[95] = 70;

	// Drowzee
	global.Dex_Health[96] = 60;
	global.Dex_Attack[96] = 48;
	global.Dex_Defence[96] = 45;
	global.Dex_SPattack[96] = 43;
	global.Dex_SPdefence[96] = 90;
	global.Dex_Speed[96] = 42;

	// Krabby
	global.Dex_Health[98] = 30;
	global.Dex_Attack[98] = 105;
	global.Dex_Defence[98] = 90;
	global.Dex_SPattack[98] = 25;
	global.Dex_SPdefence[98] = 25;
	global.Dex_Speed[98] = 50;

	// Voltorb
	global.Dex_Health[100] = 40;
	global.Dex_Attack[100] = 30;
	global.Dex_Defence[100] = 35;
	global.Dex_SPattack[100] = 55;
	global.Dex_SPdefence[100] = 35;
	global.Dex_Speed[100] = 100;

	// Exeggcute
	global.Dex_Health[102] = 60;
	global.Dex_Attack[102] = 40;
	global.Dex_Defence[102] = 80;
	global.Dex_SPattack[102] = 60;
	global.Dex_SPdefence[102] = 45;
	global.Dex_Speed[102] = 40;

	// Cubone
	global.Dex_Health[104] = 50;
	global.Dex_Attack[104] = 50;
	global.Dex_Defence[104] = 95;
	global.Dex_SPattack[104] = 40;
	global.Dex_SPdefence[104] = 50;
	global.Dex_Speed[104] = 35;

	// Lickitung
	global.Dex_Health[108] = 90;
	global.Dex_Attack[108] = 55;
	global.Dex_Defence[108] = 75;
	global.Dex_SPattack[108] = 60;
	global.Dex_SPdefence[108] = 75;
	global.Dex_Speed[108] = 30;

	// Koffing
	global.Dex_Health[109] = 40;
	global.Dex_Attack[109] = 65;
	global.Dex_Defence[109] = 95;
	global.Dex_SPattack[109] = 60;
	global.Dex_SPdefence[109] = 45;
	global.Dex_Speed[109] = 35;

	// Rhyhorn
	global.Dex_Health[111] = 80;
	global.Dex_Attack[111] = 85;
	global.Dex_Defence[111] = 95;
	global.Dex_SPattack[111] = 30;
	global.Dex_SPdefence[111] = 30;
	global.Dex_Speed[111] = 25;

	// Chansey
	global.Dex_Health[113] = 250;
	global.Dex_Attack[113] = 5;
	global.Dex_Defence[113] = 5;
	global.Dex_SPattack[113] = 35;
	global.Dex_SPdefence[113] = 105;
	global.Dex_Speed[113] = 50;

	// Tangela
	global.Dex_Health[114] = 65;
	global.Dex_Attack[114] = 55;
	global.Dex_Defence[114] = 115;
	global.Dex_SPattack[114] = 100;
	global.Dex_SPdefence[114] = 40;
	global.Dex_Speed[114] = 60;

	// Horsea
	global.Dex_Health[116] = 30;
	global.Dex_Attack[116] = 40;
	global.Dex_Defence[116] = 35;
	global.Dex_SPattack[116] = 70;
	global.Dex_SPdefence[116] = 25;
	global.Dex_Speed[116] = 60;

	// Goldeen
	global.Dex_Health[118] = 45;
	global.Dex_Attack[118] = 67;
	global.Dex_Defence[118] = 60;
	global.Dex_SPattack[118] = 35;
	global.Dex_SPdefence[118] = 50;
	global.Dex_Speed[118] = 63;

	// Staryu
	global.Dex_Health[120] = 30;
	global.Dex_Attack[120] = 45;
	global.Dex_Defence[120] = 50;
	global.Dex_SPattack[120] = 70;
	global.Dex_SPdefence[120] = 55;
	global.Dex_Speed[120] = 85;

	// Scyther
	global.Dex_Health[123] = 70;
	global.Dex_Attack[123] = 110;
	global.Dex_Defence[123] = 80;
	global.Dex_SPattack[123] = 55;
	global.Dex_SPdefence[123] = 80;
	global.Dex_Speed[123] = 105;

	// Pinsir
	global.Dex_Health[127] = 65;
	global.Dex_Attack[127] = 125;
	global.Dex_Defence[127] = 100;
	global.Dex_SPattack[127] = 55;
	global.Dex_SPdefence[127] = 70;
	global.Dex_Speed[127] = 85;

	// Tauros
	global.Dex_Health[128] = 75;
	global.Dex_Attack[128] = 100;
	global.Dex_Defence[128] = 95;
	global.Dex_SPattack[128] = 40;
	global.Dex_SPdefence[128] = 70;
	global.Dex_Speed[128] = 110;

	// Magikarp
	global.Dex_Health[129] = 20;
	global.Dex_Attack[129] = 10;
	global.Dex_Defence[129] = 55;
	global.Dex_SPattack[129] = 15;
	global.Dex_SPdefence[129] = 20;
	global.Dex_Speed[129] = 80;

	// Eevee
	global.Dex_Health[133] = 55;
	global.Dex_Attack[133] = 55;
	global.Dex_Defence[133] = 50;
	global.Dex_SPattack[133] = 45;
	global.Dex_SPdefence[133] = 50;
	global.Dex_Speed[133] = 55;

	// Porygon
	global.Dex_Health[137] = 65;
	global.Dex_Attack[137] = 60;
	global.Dex_Defence[137] = 70;
	global.Dex_SPattack[137] = 85;
	global.Dex_SPdefence[137] = 75;
	global.Dex_Speed[137] = 40;

	// Omanyte
	global.Dex_Health[138] = 35;
	global.Dex_Attack[138] = 40;
	global.Dex_Defence[138] = 100;
	global.Dex_SPattack[138] = 90;
	global.Dex_SPdefence[138] = 55;
	global.Dex_Speed[138] = 35;

	// Kabuto
	global.Dex_Health[140] = 30;
	global.Dex_Attack[140] = 40;
	global.Dex_Defence[140] = 50;
	global.Dex_SPattack[140] = 35;
	global.Dex_SPdefence[140] = 55;
	global.Dex_Speed[140] = 55;

	// Dratini
	global.Dex_Health[147] = 41;
	global.Dex_Attack[147] = 64;
	global.Dex_Defence[147] = 45;
	global.Dex_SPattack[147] = 50;
	global.Dex_SPdefence[147] = 50;
	global.Dex_Speed[147] = 50;

}
