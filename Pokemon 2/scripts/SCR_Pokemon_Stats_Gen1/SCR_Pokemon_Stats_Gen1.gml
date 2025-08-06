/*
 * SCR_Pokemon_Stats_Gen1.gml
 * 
 * POKEMON DATA MODULE - Generation 1 Base Stats
 * 
 * This script initializes Generation 1 Pokemon base stats (IDs 1-151).
 * Each entry follows the format: [ID, HP, ATK, DEF, SPA, SPD, SPE]
 * 
 * STAT ABBREVIATIONS:
 * HP  = Hit Points (Health)
 * ATK = Attack (Physical damage)
 * DEF = Defense (Physical resistance)  
 * SPA = Special Attack (Special damage)
 * SPD = Special Defense (Special resistance)
 * SPE = Speed (Turn order)
 * BST = Base Stat Total (sum of all 6 stats)
 * 
 * EDITING GUIDELINES:
 * - Pokemon are in sequential order (1, 2, 3, 4...)
 * - Use official Pokemon base stats from bulbapedia.net
 * - BST comments help verify stat accuracy
 * 
 * CREATED: August 2025
 * POKEMON COUNT: 151 (Kanto Region)
 * EXTRACTED: From original SCR_Pokedex.gml via automation
 */

function SCR_Pokemon_Stats_Gen1() {
    // Pokemon 1 - "Bulbasaur"
    global.Dex_Health[1] = 45;
    global.Dex_Attack[1] = 49;
    global.Dex_Defence[1] = 49;
    global.Dex_SPattack[1] = 65;
    global.Dex_SPdefence[1] = 65;
    global.Dex_Speed[1] = 45;

    // Pokemon 2 - "Ivysaur"
    global.Dex_Health[2] = 60;
    global.Dex_Attack[2] = 62;
    global.Dex_Defence[2] = 63;
    global.Dex_SPattack[2] = 80;
    global.Dex_SPdefence[2] = 80;
    global.Dex_Speed[2] = 60;

    // Pokemon 3 - "Venusaur"
    global.Dex_Health[3] = 80;
    global.Dex_Attack[3] = 82;
    global.Dex_Defence[3] = 83;
    global.Dex_SPattack[3] = 100;
    global.Dex_SPdefence[3] = 100;
    global.Dex_Speed[3] = 80;

    // Pokemon 4 - "Charmander"
    global.Dex_Health[4] = 39;
    global.Dex_Attack[4] = 52;
    global.Dex_Defence[4] = 43;
    global.Dex_SPattack[4] = 60;
    global.Dex_SPdefence[4] = 50;
    global.Dex_Speed[4] = 65;

    // Pokemon 5 - "Charmeleon"
    global.Dex_Health[5] = 58;
    global.Dex_Attack[5] = 64;
    global.Dex_Defence[5] = 58;
    global.Dex_SPattack[5] = 80;
    global.Dex_SPdefence[5] = 65;
    global.Dex_Speed[5] = 80;

    // Pokemon 6 - "Charizard"
    global.Dex_Health[6] = 78;
    global.Dex_Attack[6] = 84;
    global.Dex_Defence[6] = 78;
    global.Dex_SPattack[6] = 109;
    global.Dex_SPdefence[6] = 85;
    global.Dex_Speed[6] = 100;

    // Pokemon 7 - "Squirtle"
    global.Dex_Health[7] = 44;
    global.Dex_Attack[7] = 48;
    global.Dex_Defence[7] = 65;
    global.Dex_SPattack[7] = 50;
    global.Dex_SPdefence[7] = 64;
    global.Dex_Speed[7] = 43;

    // Pokemon 8 - "Wartortle"
    global.Dex_Health[8] = 59;
    global.Dex_Attack[8] = 63;
    global.Dex_Defence[8] = 80;
    global.Dex_SPattack[8] = 65;
    global.Dex_SPdefence[8] = 80;
    global.Dex_Speed[8] = 58;

    // Pokemon 9 - "Blastoise"
    global.Dex_Health[9] = 79;
    global.Dex_Attack[9] = 83;
    global.Dex_Defence[9] = 100;
    global.Dex_SPattack[9] = 85;
    global.Dex_SPdefence[9] = 105;
    global.Dex_Speed[9] = 78;

    // Pokemon 10 - "Caterpie"
    global.Dex_Health[10] = 45;
    global.Dex_Attack[10] = 30;
    global.Dex_Defence[10] = 35;
    global.Dex_SPattack[10] = 20;
    global.Dex_SPdefence[10] = 20;
    global.Dex_Speed[10] = 45;

    // Pokemon 11 - "Metapod"
    global.Dex_Health[11] = 50;
    global.Dex_Attack[11] = 20;
    global.Dex_Defence[11] = 55;
    global.Dex_SPattack[11] = 25;
    global.Dex_SPdefence[11] = 25;
    global.Dex_Speed[11] = 30;

    // Pokemon 12 - "Butterfree"
    global.Dex_Health[12] = 60;
    global.Dex_Attack[12] = 45;
    global.Dex_Defence[12] = 50;
    global.Dex_SPattack[12] = 90;
    global.Dex_SPdefence[12] = 80;
    global.Dex_Speed[12] = 70;

    // Pokemon 13 - "Weedle"
    global.Dex_Health[13] = 40;
    global.Dex_Attack[13] = 35;
    global.Dex_Defence[13] = 30;
    global.Dex_SPattack[13] = 20;
    global.Dex_SPdefence[13] = 20;
    global.Dex_Speed[13] = 50;

    // Pokemon 14 - "Kakuna"
    global.Dex_Health[14] = 45;
    global.Dex_Attack[14] = 25;
    global.Dex_Defence[14] = 50;
    global.Dex_SPattack[14] = 25;
    global.Dex_SPdefence[14] = 25;
    global.Dex_Speed[14] = 35;

    // Pokemon 15 - "Beedrill"
    global.Dex_Health[15] = 65;
    global.Dex_Attack[15] = 90;
    global.Dex_Defence[15] = 40;
    global.Dex_SPattack[15] = 45;
    global.Dex_SPdefence[15] = 80;
    global.Dex_Speed[15] = 75;

    // Pokemon 16 - "Pidgey"
    global.Dex_Health[16] = 40;
    global.Dex_Attack[16] = 45;
    global.Dex_Defence[16] = 40;
    global.Dex_SPattack[16] = 35;
    global.Dex_SPdefence[16] = 35;
    global.Dex_Speed[16] = 56;

    // Pokemon 17 - "Pidgeotto"
    global.Dex_Health[17] = 63;
    global.Dex_Attack[17] = 60;
    global.Dex_Defence[17] = 55;
    global.Dex_SPattack[17] = 50;
    global.Dex_SPdefence[17] = 50;
    global.Dex_Speed[17] = 71;

    // Pokemon 18 - "Pidgeot"
    global.Dex_Health[18] = 83;
    global.Dex_Attack[18] = 80;
    global.Dex_Defence[18] = 75;
    global.Dex_SPattack[18] = 70;
    global.Dex_SPdefence[18] = 70;
    global.Dex_Speed[18] = 101;

    // Pokemon 19 - "Rattata"
    global.Dex_Health[19] = 30;
    global.Dex_Attack[19] = 56;
    global.Dex_Defence[19] = 35;
    global.Dex_SPattack[19] = 25;
    global.Dex_SPdefence[19] = 35;
    global.Dex_Speed[19] = 72;

    // Pokemon 20 - "Raticate"
    global.Dex_Health[20] = 55;
    global.Dex_Attack[20] = 81;
    global.Dex_Defence[20] = 60;
    global.Dex_SPattack[20] = 50;
    global.Dex_SPdefence[20] = 70;
    global.Dex_Speed[20] = 97;

    // Pokemon 21 - "Spearow"
    global.Dex_Health[21] = 40;
    global.Dex_Attack[21] = 60;
    global.Dex_Defence[21] = 30;
    global.Dex_SPattack[21] = 31;
    global.Dex_SPdefence[21] = 31;
    global.Dex_Speed[21] = 70;

    // Pokemon 22 - "Fearow"
    global.Dex_Health[22] = 65;
    global.Dex_Attack[22] = 90;
    global.Dex_Defence[22] = 65;
    global.Dex_SPattack[22] = 61;
    global.Dex_SPdefence[22] = 61;
    global.Dex_Speed[22] = 100;

    // Pokemon 23 - "Ekans"
    global.Dex_Health[23] = 35;
    global.Dex_Attack[23] = 60;
    global.Dex_Defence[23] = 44;
    global.Dex_SPattack[23] = 40;
    global.Dex_SPdefence[23] = 54;
    global.Dex_Speed[23] = 55;

    // Pokemon 24 - "Arbok"
    global.Dex_Health[24] = 60;
    global.Dex_Attack[24] = 95;
    global.Dex_Defence[24] = 69;
    global.Dex_SPattack[24] = 65;
    global.Dex_SPdefence[24] = 79;
    global.Dex_Speed[24] = 80;

    // Pokemon 25 - "Pikachu"
    global.Dex_Health[25] = 35;
    global.Dex_Attack[25] = 55;
    global.Dex_Defence[25] = 40;
    global.Dex_SPattack[25] = 50;
    global.Dex_SPdefence[25] = 50;
    global.Dex_Speed[25] = 90;

    // Pokemon 26 - "Raichu"
    global.Dex_Health[26] = 60;
    global.Dex_Attack[26] = 90;
    global.Dex_Defence[26] = 55;
    global.Dex_SPattack[26] = 90;
    global.Dex_SPdefence[26] = 80;
    global.Dex_Speed[26] = 110;

    // Pokemon 27 - "Sandshrew"
    global.Dex_Health[27] = 50;
    global.Dex_Attack[27] = 75;
    global.Dex_Defence[27] = 85;
    global.Dex_SPattack[27] = 20;
    global.Dex_SPdefence[27] = 30;
    global.Dex_Speed[27] = 40;

    // Pokemon 28 - "Sandslash"
    global.Dex_Health[28] = 75;
    global.Dex_Attack[28] = 100;
    global.Dex_Defence[28] = 110;
    global.Dex_SPattack[28] = 45;
    global.Dex_SPdefence[28] = 55;
    global.Dex_Speed[28] = 65;

    // Pokemon 29 - "Nidoran♀"
    global.Dex_Health[29] = 55;
    global.Dex_Attack[29] = 47;
    global.Dex_Defence[29] = 52;
    global.Dex_SPattack[29] = 40;
    global.Dex_SPdefence[29] = 40;
    global.Dex_Speed[29] = 41;

    // Pokemon 30 - "Nidorina"
    global.Dex_Health[30] = 70;
    global.Dex_Attack[30] = 62;
    global.Dex_Defence[30] = 67;
    global.Dex_SPattack[30] = 55;
    global.Dex_SPdefence[30] = 55;
    global.Dex_Speed[30] = 56;

    // Pokemon 31 - "Nidoqueen"
    global.Dex_Health[31] = 90;
    global.Dex_Attack[31] = 92;
    global.Dex_Defence[31] = 87;
    global.Dex_SPattack[31] = 75;
    global.Dex_SPdefence[31] = 85;
    global.Dex_Speed[31] = 76;

    // Pokemon 32 - "Nidoran♂"
    global.Dex_Health[32] = 46;
    global.Dex_Attack[32] = 57;
    global.Dex_Defence[32] = 40;
    global.Dex_SPattack[32] = 40;
    global.Dex_SPdefence[32] = 40;
    global.Dex_Speed[32] = 50;

    // Pokemon 33 - "Nidorino"
    global.Dex_Health[33] = 61;
    global.Dex_Attack[33] = 72;
    global.Dex_Defence[33] = 57;
    global.Dex_SPattack[33] = 55;
    global.Dex_SPdefence[33] = 55;
    global.Dex_Speed[33] = 65;

    // Pokemon 34 - "Nidoking"
    global.Dex_Health[34] = 81;
    global.Dex_Attack[34] = 102;
    global.Dex_Defence[34] = 77;
    global.Dex_SPattack[34] = 85;
    global.Dex_SPdefence[34] = 75;
    global.Dex_Speed[34] = 85;

    // Pokemon 35 - "Clefairy"
    global.Dex_Health[35] = 70;
    global.Dex_Attack[35] = 45;
    global.Dex_Defence[35] = 48;
    global.Dex_SPattack[35] = 60;
    global.Dex_SPdefence[35] = 65;
    global.Dex_Speed[35] = 35;

    // Pokemon 36 - "Clefable"
    global.Dex_Health[36] = 95;
    global.Dex_Attack[36] = 70;
    global.Dex_Defence[36] = 73;
    global.Dex_SPattack[36] = 95;
    global.Dex_SPdefence[36] = 90;
    global.Dex_Speed[36] = 60;

    // Pokemon 37 - "Vulpix"
    global.Dex_Health[37] = 38;
    global.Dex_Attack[37] = 41;
    global.Dex_Defence[37] = 40;
    global.Dex_SPattack[37] = 50;
    global.Dex_SPdefence[37] = 65;
    global.Dex_Speed[37] = 65;

    // Pokemon 38 - "Ninetales"
    global.Dex_Health[38] = 73;
    global.Dex_Attack[38] = 76;
    global.Dex_Defence[38] = 75;
    global.Dex_SPattack[38] = 81;
    global.Dex_SPdefence[38] = 100;
    global.Dex_Speed[38] = 100;

    // Pokemon 39 - "Jigglypuff"
    global.Dex_Health[39] = 115;
    global.Dex_Attack[39] = 45;
    global.Dex_Defence[39] = 20;
    global.Dex_SPattack[39] = 45;
    global.Dex_SPdefence[39] = 25;
    global.Dex_Speed[39] = 20;

    // Pokemon 40 - "Wigglytuff"
    global.Dex_Health[40] = 140;
    global.Dex_Attack[40] = 70;
    global.Dex_Defence[40] = 45;
    global.Dex_SPattack[40] = 85;
    global.Dex_SPdefence[40] = 50;
    global.Dex_Speed[40] = 45;

    // Pokemon 41 - "Zubat"
    global.Dex_Health[41] = 40;
    global.Dex_Attack[41] = 45;
    global.Dex_Defence[41] = 35;
    global.Dex_SPattack[41] = 30;
    global.Dex_SPdefence[41] = 40;
    global.Dex_Speed[41] = 55;

    // Pokemon 42 - "Golbat"
    global.Dex_Health[42] = 75;
    global.Dex_Attack[42] = 80;
    global.Dex_Defence[42] = 70;
    global.Dex_SPattack[42] = 65;
    global.Dex_SPdefence[42] = 75;
    global.Dex_Speed[42] = 90;

    // Pokemon 43 - "Oddish"
    global.Dex_Health[43] = 45;
    global.Dex_Attack[43] = 50;
    global.Dex_Defence[43] = 55;
    global.Dex_SPattack[43] = 75;
    global.Dex_SPdefence[43] = 65;
    global.Dex_Speed[43] = 30;

    // Pokemon 44 - "Gloom"
    global.Dex_Health[44] = 60;
    global.Dex_Attack[44] = 65;
    global.Dex_Defence[44] = 70;
    global.Dex_SPattack[44] = 85;
    global.Dex_SPdefence[44] = 75;
    global.Dex_Speed[44] = 40;

    // Pokemon 45 - "Vileplume"
    global.Dex_Health[45] = 75;
    global.Dex_Attack[45] = 80;
    global.Dex_Defence[45] = 85;
    global.Dex_SPattack[45] = 110;
    global.Dex_SPdefence[45] = 90;
    global.Dex_Speed[45] = 50;

    // Pokemon 46 - "Paras"
    global.Dex_Health[46] = 35;
    global.Dex_Attack[46] = 70;
    global.Dex_Defence[46] = 55;
    global.Dex_SPattack[46] = 45;
    global.Dex_SPdefence[46] = 55;
    global.Dex_Speed[46] = 25;

    // Pokemon 47 - "Parasect"
    global.Dex_Health[47] = 60;
    global.Dex_Attack[47] = 95;
    global.Dex_Defence[47] = 80;
    global.Dex_SPattack[47] = 60;
    global.Dex_SPdefence[47] = 80;
    global.Dex_Speed[47] = 30;

    // Pokemon 48 - "Venonat"
    global.Dex_Health[48] = 60;
    global.Dex_Attack[48] = 55;
    global.Dex_Defence[48] = 50;
    global.Dex_SPattack[48] = 40;
    global.Dex_SPdefence[48] = 55;
    global.Dex_Speed[48] = 45;

    // Pokemon 49 - "Venomoth"
    global.Dex_Health[49] = 70;
    global.Dex_Attack[49] = 65;
    global.Dex_Defence[49] = 60;
    global.Dex_SPattack[49] = 90;
    global.Dex_SPdefence[49] = 75;
    global.Dex_Speed[49] = 90;

    // Pokemon 50 - "Diglett"
    global.Dex_Health[50] = 10;
    global.Dex_Attack[50] = 55;
    global.Dex_Defence[50] = 25;
    global.Dex_SPattack[50] = 35;
    global.Dex_SPdefence[50] = 45;
    global.Dex_Speed[50] = 95;

    // Pokemon 51 - "Dugtrio"
    global.Dex_Health[51] = 35;
    global.Dex_Attack[51] = 100;
    global.Dex_Defence[51] = 50;
    global.Dex_SPattack[51] = 50;
    global.Dex_SPdefence[51] = 70;
    global.Dex_Speed[51] = 120;

    // Pokemon 52 - "Meowth"
    global.Dex_Health[52] = 40;
    global.Dex_Attack[52] = 45;
    global.Dex_Defence[52] = 35;
    global.Dex_SPattack[52] = 40;
    global.Dex_SPdefence[52] = 40;
    global.Dex_Speed[52] = 90;

    // Pokemon 53 - "Persian"
    global.Dex_Health[53] = 65;
    global.Dex_Attack[53] = 70;
    global.Dex_Defence[53] = 60;
    global.Dex_SPattack[53] = 65;
    global.Dex_SPdefence[53] = 65;
    global.Dex_Speed[53] = 115;

    // Pokemon 54 - "Psyduck"
    global.Dex_Health[54] = 50;
    global.Dex_Attack[54] = 52;
    global.Dex_Defence[54] = 48;
    global.Dex_SPattack[54] = 65;
    global.Dex_SPdefence[54] = 50;
    global.Dex_Speed[54] = 55;

    // Pokemon 55 - "Golduck"
    global.Dex_Health[55] = 80;
    global.Dex_Attack[55] = 82;
    global.Dex_Defence[55] = 78;
    global.Dex_SPattack[55] = 95;
    global.Dex_SPdefence[55] = 80;
    global.Dex_Speed[55] = 85;

    // Pokemon 56 - "Mankey"
    global.Dex_Health[56] = 40;
    global.Dex_Attack[56] = 80;
    global.Dex_Defence[56] = 35;
    global.Dex_SPattack[56] = 35;
    global.Dex_SPdefence[56] = 45;
    global.Dex_Speed[56] = 70;

    // Pokemon 57 - "Primeape"
    global.Dex_Health[57] = 65;
    global.Dex_Attack[57] = 105;
    global.Dex_Defence[57] = 60;
    global.Dex_SPattack[57] = 60;
    global.Dex_SPdefence[57] = 70;
    global.Dex_Speed[57] = 95;

    // Pokemon 58 - "Growlithe"
    global.Dex_Health[58] = 55;
    global.Dex_Attack[58] = 70;
    global.Dex_Defence[58] = 45;
    global.Dex_SPattack[58] = 70;
    global.Dex_SPdefence[58] = 50;
    global.Dex_Speed[58] = 60;

    // Pokemon 59 - "Arcanine"
    global.Dex_Health[59] = 90;
    global.Dex_Attack[59] = 110;
    global.Dex_Defence[59] = 80;
    global.Dex_SPattack[59] = 100;
    global.Dex_SPdefence[59] = 80;
    global.Dex_Speed[59] = 95;

    // Pokemon 60 - "Poliwag"
    global.Dex_Health[60] = 40;
    global.Dex_Attack[60] = 50;
    global.Dex_Defence[60] = 40;
    global.Dex_SPattack[60] = 40;
    global.Dex_SPdefence[60] = 40;
    global.Dex_Speed[60] = 90;

    // Pokemon 61 - "Poliwhirl"
    global.Dex_Health[61] = 65;
    global.Dex_Attack[61] = 65;
    global.Dex_Defence[61] = 65;
    global.Dex_SPattack[61] = 50;
    global.Dex_SPdefence[61] = 50;
    global.Dex_Speed[61] = 90;

    // Pokemon 62 - "Poliwrath"
    global.Dex_Health[62] = 90;
    global.Dex_Attack[62] = 95;
    global.Dex_Defence[62] = 95;
    global.Dex_SPattack[62] = 70;
    global.Dex_SPdefence[62] = 90;
    global.Dex_Speed[62] = 70;

    // Pokemon 63 - "Abra"
    global.Dex_Health[63] = 25;
    global.Dex_Attack[63] = 20;
    global.Dex_Defence[63] = 15;
    global.Dex_SPattack[63] = 105;
    global.Dex_SPdefence[63] = 55;
    global.Dex_Speed[63] = 90;

    // Pokemon 64 - "Kadabra"
    global.Dex_Health[64] = 40;
    global.Dex_Attack[64] = 35;
    global.Dex_Defence[64] = 30;
    global.Dex_SPattack[64] = 120;
    global.Dex_SPdefence[64] = 70;
    global.Dex_Speed[64] = 105;

    // Pokemon 65 - "Alakazam"
    global.Dex_Health[65] = 55;
    global.Dex_Attack[65] = 50;
    global.Dex_Defence[65] = 45;
    global.Dex_SPattack[65] = 135;
    global.Dex_SPdefence[65] = 95;
    global.Dex_Speed[65] = 120;

    // Pokemon 66 - "Machop"
    global.Dex_Health[66] = 70;
    global.Dex_Attack[66] = 80;
    global.Dex_Defence[66] = 50;
    global.Dex_SPattack[66] = 35;
    global.Dex_SPdefence[66] = 35;
    global.Dex_Speed[66] = 35;

    // Pokemon 67 - "Machoke"
    global.Dex_Health[67] = 80;
    global.Dex_Attack[67] = 100;
    global.Dex_Defence[67] = 70;
    global.Dex_SPattack[67] = 50;
    global.Dex_SPdefence[67] = 60;
    global.Dex_Speed[67] = 45;

    // Pokemon 68 - "Machamp"
    global.Dex_Health[68] = 90;
    global.Dex_Attack[68] = 130;
    global.Dex_Defence[68] = 80;
    global.Dex_SPattack[68] = 65;
    global.Dex_SPdefence[68] = 85;
    global.Dex_Speed[68] = 55;

    // Pokemon 69 - "Bellsprout"
    global.Dex_Health[69] = 50;
    global.Dex_Attack[69] = 75;
    global.Dex_Defence[69] = 35;
    global.Dex_SPattack[69] = 70;
    global.Dex_SPdefence[69] = 30;
    global.Dex_Speed[69] = 40;

    // Pokemon 70 - "Weepinbell"
    global.Dex_Health[70] = 65;
    global.Dex_Attack[70] = 90;
    global.Dex_Defence[70] = 50;
    global.Dex_SPattack[70] = 85;
    global.Dex_SPdefence[70] = 45;
    global.Dex_Speed[70] = 55;

    // Pokemon 71 - "Victreebel"
    global.Dex_Health[71] = 80;
    global.Dex_Attack[71] = 105;
    global.Dex_Defence[71] = 65;
    global.Dex_SPattack[71] = 100;
    global.Dex_SPdefence[71] = 70;
    global.Dex_Speed[71] = 70;

    // Pokemon 72 - "Tentacool"
    global.Dex_Health[72] = 40;
    global.Dex_Attack[72] = 40;
    global.Dex_Defence[72] = 35;
    global.Dex_SPattack[72] = 50;
    global.Dex_SPdefence[72] = 100;
    global.Dex_Speed[72] = 70;

    // Pokemon 73 - "Tentacruel"
    global.Dex_Health[73] = 80;
    global.Dex_Attack[73] = 70;
    global.Dex_Defence[73] = 65;
    global.Dex_SPattack[73] = 80;
    global.Dex_SPdefence[73] = 120;
    global.Dex_Speed[73] = 100;

    // Pokemon 74 - "Geodude"
    global.Dex_Health[74] = 40;
    global.Dex_Attack[74] = 80;
    global.Dex_Defence[74] = 100;
    global.Dex_SPattack[74] = 30;
    global.Dex_SPdefence[74] = 30;
    global.Dex_Speed[74] = 20;

    // Pokemon 75 - "Graveler"
    global.Dex_Health[75] = 55;
    global.Dex_Attack[75] = 95;
    global.Dex_Defence[75] = 115;
    global.Dex_SPattack[75] = 45;
    global.Dex_SPdefence[75] = 45;
    global.Dex_Speed[75] = 35;

    // Pokemon 76 - "Golem"
    global.Dex_Health[76] = 80;
    global.Dex_Attack[76] = 120;
    global.Dex_Defence[76] = 130;
    global.Dex_SPattack[76] = 55;
    global.Dex_SPdefence[76] = 65;
    global.Dex_Speed[76] = 45;

    // Pokemon 77 - "Ponyta"
    global.Dex_Health[77] = 50;
    global.Dex_Attack[77] = 85;
    global.Dex_Defence[77] = 55;
    global.Dex_SPattack[77] = 65;
    global.Dex_SPdefence[77] = 65;
    global.Dex_Speed[77] = 90;

    // Pokemon 78 - "Rapidash"
    global.Dex_Health[78] = 65;
    global.Dex_Attack[78] = 100;
    global.Dex_Defence[78] = 70;
    global.Dex_SPattack[78] = 80;
    global.Dex_SPdefence[78] = 80;
    global.Dex_Speed[78] = 105;

    // Pokemon 79 - "Slowpoke"
    global.Dex_Health[79] = 90;
    global.Dex_Attack[79] = 65;
    global.Dex_Defence[79] = 65;
    global.Dex_SPattack[79] = 40;
    global.Dex_SPdefence[79] = 40;
    global.Dex_Speed[79] = 15;

    // Pokemon 80 - "Slowbro"
    global.Dex_Health[80] = 95;
    global.Dex_Attack[80] = 75;
    global.Dex_Defence[80] = 110;
    global.Dex_SPattack[80] = 100;
    global.Dex_SPdefence[80] = 80;
    global.Dex_Speed[80] = 30;

    // Pokemon 81 - "Magnemite"
    global.Dex_Health[81] = 25;
    global.Dex_Attack[81] = 35;
    global.Dex_Defence[81] = 70;
    global.Dex_SPattack[81] = 95;
    global.Dex_SPdefence[81] = 55;
    global.Dex_Speed[81] = 45;

    // Pokemon 82 - "Magneton"
    global.Dex_Health[82] = 50;
    global.Dex_Attack[82] = 60;
    global.Dex_Defence[82] = 95;
    global.Dex_SPattack[82] = 120;
    global.Dex_SPdefence[82] = 70;
    global.Dex_Speed[82] = 70;

    // Pokemon 83 - "Farfetch'd"
    global.Dex_Health[83] = 52;
    global.Dex_Attack[83] = 90;
    global.Dex_Defence[83] = 55;
    global.Dex_SPattack[83] = 58;
    global.Dex_SPdefence[83] = 62;
    global.Dex_Speed[83] = 60;

    // Pokemon 84 - "Doduo"
    global.Dex_Health[84] = 35;
    global.Dex_Attack[84] = 85;
    global.Dex_Defence[84] = 45;
    global.Dex_SPattack[84] = 35;
    global.Dex_SPdefence[84] = 35;
    global.Dex_Speed[84] = 75;

    // Pokemon 85 - "Dodrio"
    global.Dex_Health[85] = 60;
    global.Dex_Attack[85] = 110;
    global.Dex_Defence[85] = 70;
    global.Dex_SPattack[85] = 60;
    global.Dex_SPdefence[85] = 60;
    global.Dex_Speed[85] = 110;

    // Pokemon 86 - "Seel"
    global.Dex_Health[86] = 65;
    global.Dex_Attack[86] = 45;
    global.Dex_Defence[86] = 55;
    global.Dex_SPattack[86] = 45;
    global.Dex_SPdefence[86] = 70;
    global.Dex_Speed[86] = 45;

    // Pokemon 87 - "Dewgong"
    global.Dex_Health[87] = 90;
    global.Dex_Attack[87] = 70;
    global.Dex_Defence[87] = 80;
    global.Dex_SPattack[87] = 70;
    global.Dex_SPdefence[87] = 95;
    global.Dex_Speed[87] = 70;

    // Pokemon 88 - "Grimer"
    global.Dex_Health[88] = 80;
    global.Dex_Attack[88] = 80;
    global.Dex_Defence[88] = 50;
    global.Dex_SPattack[88] = 40;
    global.Dex_SPdefence[88] = 50;
    global.Dex_Speed[88] = 25;

    // Pokemon 89 - "Muk"
    global.Dex_Health[89] = 105;
    global.Dex_Attack[89] = 105;
    global.Dex_Defence[89] = 75;
    global.Dex_SPattack[89] = 65;
    global.Dex_SPdefence[89] = 100;
    global.Dex_Speed[89] = 50;

    // Pokemon 90 - "Shellder"
    global.Dex_Health[90] = 30;
    global.Dex_Attack[90] = 65;
    global.Dex_Defence[90] = 100;
    global.Dex_SPattack[90] = 45;
    global.Dex_SPdefence[90] = 25;
    global.Dex_Speed[90] = 40;

    // Pokemon 91 - "Cloyster"
    global.Dex_Health[91] = 50;
    global.Dex_Attack[91] = 95;
    global.Dex_Defence[91] = 180;
    global.Dex_SPattack[91] = 85;
    global.Dex_SPdefence[91] = 45;
    global.Dex_Speed[91] = 70;

    // Pokemon 92 - "Gastly"
    global.Dex_Health[92] = 30;
    global.Dex_Attack[92] = 35;
    global.Dex_Defence[92] = 30;
    global.Dex_SPattack[92] = 100;
    global.Dex_SPdefence[92] = 35;
    global.Dex_Speed[92] = 80;

    // Pokemon 93 - "Haunter"
    global.Dex_Health[93] = 45;
    global.Dex_Attack[93] = 50;
    global.Dex_Defence[93] = 45;
    global.Dex_SPattack[93] = 115;
    global.Dex_SPdefence[93] = 55;
    global.Dex_Speed[93] = 95;

    // Pokemon 94 - "Gengar"
    global.Dex_Health[94] = 60;
    global.Dex_Attack[94] = 65;
    global.Dex_Defence[94] = 60;
    global.Dex_SPattack[94] = 130;
    global.Dex_SPdefence[94] = 75;
    global.Dex_Speed[94] = 110;

    // Pokemon 95 - "Onix"
    global.Dex_Health[95] = 35;
    global.Dex_Attack[95] = 45;
    global.Dex_Defence[95] = 160;
    global.Dex_SPattack[95] = 30;
    global.Dex_SPdefence[95] = 45;
    global.Dex_Speed[95] = 70;

    // Pokemon 96 - "Drowzee"
    global.Dex_Health[96] = 60;
    global.Dex_Attack[96] = 48;
    global.Dex_Defence[96] = 45;
    global.Dex_SPattack[96] = 43;
    global.Dex_SPdefence[96] = 90;
    global.Dex_Speed[96] = 42;

    // Pokemon 97 - "Hypno"
    global.Dex_Health[97] = 85;
    global.Dex_Attack[97] = 73;
    global.Dex_Defence[97] = 70;
    global.Dex_SPattack[97] = 73;
    global.Dex_SPdefence[97] = 115;
    global.Dex_Speed[97] = 67;

    // Pokemon 98 - "Krabby"
    global.Dex_Health[98] = 30;
    global.Dex_Attack[98] = 105;
    global.Dex_Defence[98] = 90;
    global.Dex_SPattack[98] = 25;
    global.Dex_SPdefence[98] = 25;
    global.Dex_Speed[98] = 50;

    // Pokemon 99 - "Kingler"
    global.Dex_Health[99] = 55;
    global.Dex_Attack[99] = 130;
    global.Dex_Defence[99] = 115;
    global.Dex_SPattack[99] = 50;
    global.Dex_SPdefence[99] = 50;
    global.Dex_Speed[99] = 75;

    // Pokemon 100 - "Voltorb"
    global.Dex_Health[100] = 40;
    global.Dex_Attack[100] = 30;
    global.Dex_Defence[100] = 50;
    global.Dex_SPattack[100] = 55;
    global.Dex_SPdefence[100] = 55;
    global.Dex_Speed[100] = 100;

    // Pokemon 101 - "Electrode"
    global.Dex_Health[101] = 60;
    global.Dex_Attack[101] = 50;
    global.Dex_Defence[101] = 70;
    global.Dex_SPattack[101] = 80;
    global.Dex_SPdefence[101] = 80;
    global.Dex_Speed[101] = 150;

    // Pokemon 102 - "Exeggcute"
    global.Dex_Health[102] = 60;
    global.Dex_Attack[102] = 40;
    global.Dex_Defence[102] = 80;
    global.Dex_SPattack[102] = 60;
    global.Dex_SPdefence[102] = 45;
    global.Dex_Speed[102] = 40;

    // Pokemon 103 - "Exeggutor"
    global.Dex_Health[103] = 95;
    global.Dex_Attack[103] = 95;
    global.Dex_Defence[103] = 85;
    global.Dex_SPattack[103] = 125;
    global.Dex_SPdefence[103] = 75;
    global.Dex_Speed[103] = 55;

    // Pokemon 104 - "Cubone"
    global.Dex_Health[104] = 50;
    global.Dex_Attack[104] = 50;
    global.Dex_Defence[104] = 95;
    global.Dex_SPattack[104] = 40;
    global.Dex_SPdefence[104] = 50;
    global.Dex_Speed[104] = 35;

    // Pokemon 105 - "Marowak"
    global.Dex_Health[105] = 60;
    global.Dex_Attack[105] = 80;
    global.Dex_Defence[105] = 110;
    global.Dex_SPattack[105] = 50;
    global.Dex_SPdefence[105] = 80;
    global.Dex_Speed[105] = 45;

    // Pokemon 106 - "Hitmonlee"
    global.Dex_Health[106] = 50;
    global.Dex_Attack[106] = 120;
    global.Dex_Defence[106] = 53;
    global.Dex_SPattack[106] = 35;
    global.Dex_SPdefence[106] = 110;
    global.Dex_Speed[106] = 87;

    // Pokemon 107 - "Hitmonchan"
    global.Dex_Health[107] = 50;
    global.Dex_Attack[107] = 105;
    global.Dex_Defence[107] = 79;
    global.Dex_SPattack[107] = 35;
    global.Dex_SPdefence[107] = 110;
    global.Dex_Speed[107] = 76;

    // Pokemon 108 - "Lickitung"
    global.Dex_Health[108] = 90;
    global.Dex_Attack[108] = 55;
    global.Dex_Defence[108] = 75;
    global.Dex_SPattack[108] = 60;
    global.Dex_SPdefence[108] = 75;
    global.Dex_Speed[108] = 30;

    // Pokemon 109 - "Koffing"
    global.Dex_Health[109] = 40;
    global.Dex_Attack[109] = 65;
    global.Dex_Defence[109] = 95;
    global.Dex_SPattack[109] = 60;
    global.Dex_SPdefence[109] = 45;
    global.Dex_Speed[109] = 35;

    // Pokemon 110 - "Weezing"
    global.Dex_Health[110] = 65;
    global.Dex_Attack[110] = 90;
    global.Dex_Defence[110] = 120;
    global.Dex_SPattack[110] = 85;
    global.Dex_SPdefence[110] = 70;
    global.Dex_Speed[110] = 60;

    // Pokemon 111 - "Rhyhorn"
    global.Dex_Health[111] = 80;
    global.Dex_Attack[111] = 85;
    global.Dex_Defence[111] = 95;
    global.Dex_SPattack[111] = 30;
    global.Dex_SPdefence[111] = 30;
    global.Dex_Speed[111] = 25;

    // Pokemon 112 - "Rhydon"
    global.Dex_Health[112] = 105;
    global.Dex_Attack[112] = 130;
    global.Dex_Defence[112] = 120;
    global.Dex_SPattack[112] = 45;
    global.Dex_SPdefence[112] = 45;
    global.Dex_Speed[112] = 40;

    // Pokemon 113 - "Chansey"
    global.Dex_Health[113] = 250;
    global.Dex_Attack[113] = 5;
    global.Dex_Defence[113] = 5;
    global.Dex_SPattack[113] = 35;
    global.Dex_SPdefence[113] = 105;
    global.Dex_Speed[113] = 50;

    // Pokemon 114 - "Tangela"
    global.Dex_Health[114] = 65;
    global.Dex_Attack[114] = 55;
    global.Dex_Defence[114] = 115;
    global.Dex_SPattack[114] = 100;
    global.Dex_SPdefence[114] = 40;
    global.Dex_Speed[114] = 60;

    // Pokemon 115 - "Kangaskhan"
    global.Dex_Health[115] = 105;
    global.Dex_Attack[115] = 95;
    global.Dex_Defence[115] = 80;
    global.Dex_SPattack[115] = 40;
    global.Dex_SPdefence[115] = 80;
    global.Dex_Speed[115] = 90;

    // Pokemon 116 - "Horsea"
    global.Dex_Health[116] = 30;
    global.Dex_Attack[116] = 40;
    global.Dex_Defence[116] = 70;
    global.Dex_SPattack[116] = 70;
    global.Dex_SPdefence[116] = 25;
    global.Dex_Speed[116] = 60;

    // Pokemon 117 - "Seadra"
    global.Dex_Health[117] = 55;
    global.Dex_Attack[117] = 65;
    global.Dex_Defence[117] = 95;
    global.Dex_SPattack[117] = 95;
    global.Dex_SPdefence[117] = 45;
    global.Dex_Speed[117] = 85;

    // Pokemon 118 - "Goldeen"
    global.Dex_Health[118] = 45;
    global.Dex_Attack[118] = 67;
    global.Dex_Defence[118] = 60;
    global.Dex_SPattack[118] = 35;
    global.Dex_SPdefence[118] = 50;
    global.Dex_Speed[118] = 63;

    // Pokemon 119 - "Seaking"
    global.Dex_Health[119] = 80;
    global.Dex_Attack[119] = 92;
    global.Dex_Defence[119] = 65;
    global.Dex_SPattack[119] = 65;
    global.Dex_SPdefence[119] = 80;
    global.Dex_Speed[119] = 68;

    // Pokemon 120 - "Staryu"
    global.Dex_Health[120] = 30;
    global.Dex_Attack[120] = 45;
    global.Dex_Defence[120] = 55;
    global.Dex_SPattack[120] = 70;
    global.Dex_SPdefence[120] = 55;
    global.Dex_Speed[120] = 85;

    // Pokemon 121 - "Starmie"
    global.Dex_Health[121] = 60;
    global.Dex_Attack[121] = 75;
    global.Dex_Defence[121] = 85;
    global.Dex_SPattack[121] = 100;
    global.Dex_SPdefence[121] = 85;
    global.Dex_Speed[121] = 115;

    // Pokemon 122 - "Mr. Mime"
    global.Dex_Health[122] = 40;
    global.Dex_Attack[122] = 45;
    global.Dex_Defence[122] = 65;
    global.Dex_SPattack[122] = 100;
    global.Dex_SPdefence[122] = 120;
    global.Dex_Speed[122] = 90;

    // Pokemon 123 - "Scyther"
    global.Dex_Health[123] = 70;
    global.Dex_Attack[123] = 110;
    global.Dex_Defence[123] = 80;
    global.Dex_SPattack[123] = 55;
    global.Dex_SPdefence[123] = 80;
    global.Dex_Speed[123] = 105;

    // Pokemon 124 - "Jynx"
    global.Dex_Health[124] = 65;
    global.Dex_Attack[124] = 50;
    global.Dex_Defence[124] = 35;
    global.Dex_SPattack[124] = 115;
    global.Dex_SPdefence[124] = 95;
    global.Dex_Speed[124] = 95;

    // Pokemon 125 - "Electabuzz"
    global.Dex_Health[125] = 65;
    global.Dex_Attack[125] = 83;
    global.Dex_Defence[125] = 57;
    global.Dex_SPattack[125] = 95;
    global.Dex_SPdefence[125] = 85;
    global.Dex_Speed[125] = 105;

    // Pokemon 126 - "Magmar"
    global.Dex_Health[126] = 65;
    global.Dex_Attack[126] = 95;
    global.Dex_Defence[126] = 57;
    global.Dex_SPattack[126] = 100;
    global.Dex_SPdefence[126] = 85;
    global.Dex_Speed[126] = 93;

    // Pokemon 127 - "Pinsir"
    global.Dex_Health[127] = 65;
    global.Dex_Attack[127] = 125;
    global.Dex_Defence[127] = 100;
    global.Dex_SPattack[127] = 55;
    global.Dex_SPdefence[127] = 70;
    global.Dex_Speed[127] = 85;

    // Pokemon 128 - "Tauros"
    global.Dex_Health[128] = 75;
    global.Dex_Attack[128] = 100;
    global.Dex_Defence[128] = 95;
    global.Dex_SPattack[128] = 40;
    global.Dex_SPdefence[128] = 70;
    global.Dex_Speed[128] = 110;

    // Pokemon 129 - "Magikarp"
    global.Dex_Health[129] = 20;
    global.Dex_Attack[129] = 10;
    global.Dex_Defence[129] = 55;
    global.Dex_SPattack[129] = 15;
    global.Dex_SPdefence[129] = 20;
    global.Dex_Speed[129] = 80;

    // Pokemon 130 - "Gyarados"
    global.Dex_Health[130] = 95;
    global.Dex_Attack[130] = 125;
    global.Dex_Defence[130] = 79;
    global.Dex_SPattack[130] = 60;
    global.Dex_SPdefence[130] = 100;
    global.Dex_Speed[130] = 81;

    // Pokemon 131 - "Lapras"
    global.Dex_Health[131] = 130;
    global.Dex_Attack[131] = 85;
    global.Dex_Defence[131] = 80;
    global.Dex_SPattack[131] = 85;
    global.Dex_SPdefence[131] = 95;
    global.Dex_Speed[131] = 60;

    // Pokemon 132 - "Ditto"
    global.Dex_Health[132] = 48;
    global.Dex_Attack[132] = 48;
    global.Dex_Defence[132] = 48;
    global.Dex_SPattack[132] = 48;
    global.Dex_SPdefence[132] = 48;
    global.Dex_Speed[132] = 48;

    // Pokemon 133 - "Eevee"
    global.Dex_Health[133] = 55;
    global.Dex_Attack[133] = 55;
    global.Dex_Defence[133] = 50;
    global.Dex_SPattack[133] = 45;
    global.Dex_SPdefence[133] = 65;
    global.Dex_Speed[133] = 55;

    // Pokemon 134 - "Vaporeon"
    global.Dex_Health[134] = 130;
    global.Dex_Attack[134] = 65;
    global.Dex_Defence[134] = 60;
    global.Dex_SPattack[134] = 110;
    global.Dex_SPdefence[134] = 95;
    global.Dex_Speed[134] = 65;

    // Pokemon 135 - "Jolteon"
    global.Dex_Health[135] = 65;
    global.Dex_Attack[135] = 65;
    global.Dex_Defence[135] = 60;
    global.Dex_SPattack[135] = 110;
    global.Dex_SPdefence[135] = 95;
    global.Dex_Speed[135] = 130;

    // Pokemon 136 - "Flareon"
    global.Dex_Health[136] = 65;
    global.Dex_Attack[136] = 130;
    global.Dex_Defence[136] = 60;
    global.Dex_SPattack[136] = 95;
    global.Dex_SPdefence[136] = 110;
    global.Dex_Speed[136] = 65;

    // Pokemon 137 - "Porygon"
    global.Dex_Health[137] = 65;
    global.Dex_Attack[137] = 60;
    global.Dex_Defence[137] = 70;
    global.Dex_SPattack[137] = 85;
    global.Dex_SPdefence[137] = 75;
    global.Dex_Speed[137] = 40;

    // Pokemon 138 - "Omanyte"
    global.Dex_Health[138] = 35;
    global.Dex_Attack[138] = 40;
    global.Dex_Defence[138] = 100;
    global.Dex_SPattack[138] = 90;
    global.Dex_SPdefence[138] = 55;
    global.Dex_Speed[138] = 35;

    // Pokemon 139 - "Omastar"
    global.Dex_Health[139] = 70;
    global.Dex_Attack[139] = 60;
    global.Dex_Defence[139] = 125;
    global.Dex_SPattack[139] = 115;
    global.Dex_SPdefence[139] = 70;
    global.Dex_Speed[139] = 55;

    // Pokemon 140 - "Kabuto"
    global.Dex_Health[140] = 30;
    global.Dex_Attack[140] = 80;
    global.Dex_Defence[140] = 90;
    global.Dex_SPattack[140] = 55;
    global.Dex_SPdefence[140] = 45;
    global.Dex_Speed[140] = 55;

    // Pokemon 141 - "Kabutops"
    global.Dex_Health[141] = 60;
    global.Dex_Attack[141] = 115;
    global.Dex_Defence[141] = 105;
    global.Dex_SPattack[141] = 65;
    global.Dex_SPdefence[141] = 70;
    global.Dex_Speed[141] = 80;

    // Pokemon 142 - "Aerodactyl"
    global.Dex_Health[142] = 80;
    global.Dex_Attack[142] = 105;
    global.Dex_Defence[142] = 65;
    global.Dex_SPattack[142] = 60;
    global.Dex_SPdefence[142] = 75;
    global.Dex_Speed[142] = 130;

    // Pokemon 143 - "Snorlax"
    global.Dex_Health[143] = 160;
    global.Dex_Attack[143] = 110;
    global.Dex_Defence[143] = 65;
    global.Dex_SPattack[143] = 65;
    global.Dex_SPdefence[143] = 110;
    global.Dex_Speed[143] = 30;

    // Pokemon 144 - "Articuno"
    global.Dex_Health[144] = 90;
    global.Dex_Attack[144] = 85;
    global.Dex_Defence[144] = 100;
    global.Dex_SPattack[144] = 95;
    global.Dex_SPdefence[144] = 125;
    global.Dex_Speed[144] = 85;

    // Pokemon 145 - "Zapdos"
    global.Dex_Health[145] = 90;
    global.Dex_Attack[145] = 90;
    global.Dex_Defence[145] = 85;
    global.Dex_SPattack[145] = 125;
    global.Dex_SPdefence[145] = 90;
    global.Dex_Speed[145] = 100;

    // Pokemon 146 - "Moltres"
    global.Dex_Health[146] = 90;
    global.Dex_Attack[146] = 100;
    global.Dex_Defence[146] = 90;
    global.Dex_SPattack[146] = 125;
    global.Dex_SPdefence[146] = 85;
    global.Dex_Speed[146] = 90;

    // Pokemon 147 - "Dratini"
    global.Dex_Health[147] = 41;
    global.Dex_Attack[147] = 64;
    global.Dex_Defence[147] = 45;
    global.Dex_SPattack[147] = 50;
    global.Dex_SPdefence[147] = 50;
    global.Dex_Speed[147] = 50;

    // Pokemon 148 - "Dragonair"
    global.Dex_Health[148] = 61;
    global.Dex_Attack[148] = 84;
    global.Dex_Defence[148] = 65;
    global.Dex_SPattack[148] = 70;
    global.Dex_SPdefence[148] = 70;
    global.Dex_Speed[148] = 70;

    // Pokemon 149 - "Dragonite"
    global.Dex_Health[149] = 91;
    global.Dex_Attack[149] = 134;
    global.Dex_Defence[149] = 95;
    global.Dex_SPattack[149] = 100;
    global.Dex_SPdefence[149] = 100;
    global.Dex_Speed[149] = 80;

    // Pokemon 150 - "Mewtwo"
    global.Dex_Health[150] = 106;
    global.Dex_Attack[150] = 110;
    global.Dex_Defence[150] = 90;
    global.Dex_SPattack[150] = 154;
    global.Dex_SPdefence[150] = 90;
    global.Dex_Speed[150] = 130;

    // Pokemon 151 - "Mew"
    global.Dex_Health[151] = 100;
    global.Dex_Attack[151] = 100;
    global.Dex_Defence[151] = 100;
    global.Dex_SPattack[151] = 100;
    global.Dex_SPdefence[151] = 100;
    global.Dex_Speed[151] = 100;
}