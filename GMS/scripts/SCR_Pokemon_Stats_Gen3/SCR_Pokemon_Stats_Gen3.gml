/*
 * SCR_Pokemon_Stats_Gen3.gml
 * 
 * POKEMON DATA MODULE - Generation 3 Base Stats
 * 
 * This script initializes Generation 3 Pokemon base stats (IDs 252-386).
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
 * - Pokemon are in sequential order (252, 253, 254, 255...)
 * - Use official Pokemon base stats from bulbapedia.net
 * - BST comments help verify stat accuracy
 * 
 * CREATED: September 2025
 * POKEMON COUNT: 135 (Hoenn Region)
 * PURPOSE: Generation 3 Pokemon implementation for F-025
 */

function SCR_Pokemon_Stats_Gen3() {
    // Pokemon 252 - "Treecko"
    global.Dex_Health[252] = 40;
    global.Dex_Attack[252] = 45;
    global.Dex_Defence[252] = 35;
    global.Dex_SPattack[252] = 65;
    global.Dex_SPdefence[252] = 55;
    global.Dex_Speed[252] = 70;

    // Pokemon 253 - "Grovyle"
    global.Dex_Health[253] = 50;
    global.Dex_Attack[253] = 65;
    global.Dex_Defence[253] = 45;
    global.Dex_SPattack[253] = 85;
    global.Dex_SPdefence[253] = 65;
    global.Dex_Speed[253] = 95;

    // Pokemon 254 - "Sceptile"
    global.Dex_Health[254] = 70;
    global.Dex_Attack[254] = 85;
    global.Dex_Defence[254] = 65;
    global.Dex_SPattack[254] = 105;
    global.Dex_SPdefence[254] = 85;
    global.Dex_Speed[254] = 120;

    // Pokemon 255 - "Torchic"
    global.Dex_Health[255] = 45;
    global.Dex_Attack[255] = 60;
    global.Dex_Defence[255] = 40;
    global.Dex_SPattack[255] = 70;
    global.Dex_SPdefence[255] = 50;
    global.Dex_Speed[255] = 45;

    // Pokemon 256 - "Combusken"
    global.Dex_Health[256] = 60;
    global.Dex_Attack[256] = 85;
    global.Dex_Defence[256] = 60;
    global.Dex_SPattack[256] = 85;
    global.Dex_SPdefence[256] = 60;
    global.Dex_Speed[256] = 55;

    // Pokemon 257 - "Blaziken"
    global.Dex_Health[257] = 80;
    global.Dex_Attack[257] = 120;
    global.Dex_Defence[257] = 70;
    global.Dex_SPattack[257] = 110;
    global.Dex_SPdefence[257] = 70;
    global.Dex_Speed[257] = 80;

    // Pokemon 258 - "Mudkip"
    global.Dex_Health[258] = 50;
    global.Dex_Attack[258] = 70;
    global.Dex_Defence[258] = 50;
    global.Dex_SPattack[258] = 50;
    global.Dex_SPdefence[258] = 50;
    global.Dex_Speed[258] = 40;

    // Pokemon 259 - "Marshtomp"
    global.Dex_Health[259] = 70;
    global.Dex_Attack[259] = 85;
    global.Dex_Defence[259] = 70;
    global.Dex_SPattack[259] = 60;
    global.Dex_SPdefence[259] = 70;
    global.Dex_Speed[259] = 50;

    // Pokemon 260 - "Swampert"
    global.Dex_Health[260] = 100;
    global.Dex_Attack[260] = 110;
    global.Dex_Defence[260] = 90;
    global.Dex_SPattack[260] = 85;
    global.Dex_SPdefence[260] = 90;
    global.Dex_Speed[260] = 60;

    // Pokemon 261 - "Poochyena"
    global.Dex_Health[261] = 35;
    global.Dex_Attack[261] = 55;
    global.Dex_Defence[261] = 35;
    global.Dex_SPattack[261] = 30;
    global.Dex_SPdefence[261] = 30;
    global.Dex_Speed[261] = 35;

    // Pokemon 262 - "Mightyena"
    global.Dex_Health[262] = 70;
    global.Dex_Attack[262] = 90;
    global.Dex_Defence[262] = 70;
    global.Dex_SPattack[262] = 60;
    global.Dex_SPdefence[262] = 60;
    global.Dex_Speed[262] = 70;

    // Pokemon 263 - "Zigzagoon"
    global.Dex_Health[263] = 38;
    global.Dex_Attack[263] = 30;
    global.Dex_Defence[263] = 41;
    global.Dex_SPattack[263] = 30;
    global.Dex_SPdefence[263] = 41;
    global.Dex_Speed[263] = 60;

    // Pokemon 264 - "Linoone"
    global.Dex_Health[264] = 78;
    global.Dex_Attack[264] = 70;
    global.Dex_Defence[264] = 61;
    global.Dex_SPattack[264] = 50;
    global.Dex_SPdefence[264] = 61;
    global.Dex_Speed[264] = 100;

    // Pokemon 265 - "Wurmple"
    global.Dex_Health[265] = 45;
    global.Dex_Attack[265] = 45;
    global.Dex_Defence[265] = 35;
    global.Dex_SPattack[265] = 20;
    global.Dex_SPdefence[265] = 30;
    global.Dex_Speed[265] = 20;

    // Pokemon 266 - "Silcoon"
    global.Dex_Health[266] = 50;
    global.Dex_Attack[266] = 35;
    global.Dex_Defence[266] = 55;
    global.Dex_SPattack[266] = 25;
    global.Dex_SPdefence[266] = 25;
    global.Dex_Speed[266] = 15;

    // Pokemon 267 - "Beautifly"
    global.Dex_Health[267] = 60;
    global.Dex_Attack[267] = 70;
    global.Dex_Defence[267] = 50;
    global.Dex_SPattack[267] = 100;
    global.Dex_SPdefence[267] = 50;
    global.Dex_Speed[267] = 65;

    // Pokemon 268 - "Cascoon"
    global.Dex_Health[268] = 50;
    global.Dex_Attack[268] = 35;
    global.Dex_Defence[268] = 55;
    global.Dex_SPattack[268] = 25;
    global.Dex_SPdefence[268] = 25;
    global.Dex_Speed[268] = 15;

    // Pokemon 269 - "Dustox"
    global.Dex_Health[269] = 60;
    global.Dex_Attack[269] = 50;
    global.Dex_Defence[269] = 70;
    global.Dex_SPattack[269] = 50;
    global.Dex_SPdefence[269] = 90;
    global.Dex_Speed[269] = 65;

    // Pokemon 270 - "Lotad"
    global.Dex_Health[270] = 40;
    global.Dex_Attack[270] = 30;
    global.Dex_Defence[270] = 30;
    global.Dex_SPattack[270] = 40;
    global.Dex_SPdefence[270] = 50;
    global.Dex_Speed[270] = 30;

    // Pokemon 271 - "Lombre"
    global.Dex_Health[271] = 60;
    global.Dex_Attack[271] = 50;
    global.Dex_Defence[271] = 50;
    global.Dex_SPattack[271] = 60;
    global.Dex_SPdefence[271] = 70;
    global.Dex_Speed[271] = 50;

    // Pokemon 272 - "Ludicolo"
    global.Dex_Health[272] = 80;
    global.Dex_Attack[272] = 70;
    global.Dex_Defence[272] = 70;
    global.Dex_SPattack[272] = 90;
    global.Dex_SPdefence[272] = 100;
    global.Dex_Speed[272] = 70;

    // Pokemon 273 - "Seedot"
    global.Dex_Health[273] = 40;
    global.Dex_Attack[273] = 40;
    global.Dex_Defence[273] = 50;
    global.Dex_SPattack[273] = 30;
    global.Dex_SPdefence[273] = 30;
    global.Dex_Speed[273] = 30;

    // Pokemon 274 - "Nuzleaf"
    global.Dex_Health[274] = 70;
    global.Dex_Attack[274] = 70;
    global.Dex_Defence[274] = 40;
    global.Dex_SPattack[274] = 60;
    global.Dex_SPdefence[274] = 40;
    global.Dex_Speed[274] = 60;

    // Pokemon 275 - "Shiftry"
    global.Dex_Health[275] = 90;
    global.Dex_Attack[275] = 100;
    global.Dex_Defence[275] = 60;
    global.Dex_SPattack[275] = 90;
    global.Dex_SPdefence[275] = 60;
    global.Dex_Speed[275] = 80;

    // Pokemon 276 - "Taillow"
    global.Dex_Health[276] = 40;
    global.Dex_Attack[276] = 55;
    global.Dex_Defence[276] = 30;
    global.Dex_SPattack[276] = 30;
    global.Dex_SPdefence[276] = 30;
    global.Dex_Speed[276] = 85;

    // Pokemon 277 - "Swellow"
    global.Dex_Health[277] = 60;
    global.Dex_Attack[277] = 85;
    global.Dex_Defence[277] = 60;
    global.Dex_SPattack[277] = 50;
    global.Dex_SPdefence[277] = 50;
    global.Dex_Speed[277] = 125;

    // Pokemon 278 - "Wingull"
    global.Dex_Health[278] = 40;
    global.Dex_Attack[278] = 30;
    global.Dex_Defence[278] = 30;
    global.Dex_SPattack[278] = 55;
    global.Dex_SPdefence[278] = 30;
    global.Dex_Speed[278] = 85;

    // Pokemon 279 - "Pelipper"
    global.Dex_Health[279] = 60;
    global.Dex_Attack[279] = 50;
    global.Dex_Defence[279] = 100;
    global.Dex_SPattack[279] = 85;
    global.Dex_SPdefence[279] = 70;
    global.Dex_Speed[279] = 65;

    // Pokemon 280 - "Ralts"
    global.Dex_Health[280] = 28;
    global.Dex_Attack[280] = 25;
    global.Dex_Defence[280] = 25;
    global.Dex_SPattack[280] = 45;
    global.Dex_SPdefence[280] = 35;
    global.Dex_Speed[280] = 40;

    // Pokemon 281 - "Kirlia"
    global.Dex_Health[281] = 38;
    global.Dex_Attack[281] = 35;
    global.Dex_Defence[281] = 35;
    global.Dex_SPattack[281] = 65;
    global.Dex_SPdefence[281] = 55;
    global.Dex_Speed[281] = 50;

    // Pokemon 282 - "Gardevoir"
    global.Dex_Health[282] = 68;
    global.Dex_Attack[282] = 65;
    global.Dex_Defence[282] = 65;
    global.Dex_SPattack[282] = 125;
    global.Dex_SPdefence[282] = 115;
    global.Dex_Speed[282] = 80;

    // Pokemon 283 - "Surskit"
    global.Dex_Health[283] = 40;
    global.Dex_Attack[283] = 30;
    global.Dex_Defence[283] = 32;
    global.Dex_SPattack[283] = 50;
    global.Dex_SPdefence[283] = 52;
    global.Dex_Speed[283] = 65;

    // Pokemon 284 - "Masquerain"
    global.Dex_Health[284] = 70;
    global.Dex_Attack[284] = 60;
    global.Dex_Defence[284] = 62;
    global.Dex_SPattack[284] = 80;
    global.Dex_SPdefence[284] = 82;
    global.Dex_Speed[284] = 60;

    // Pokemon 285 - "Shroomish"
    global.Dex_Health[285] = 60;
    global.Dex_Attack[285] = 40;
    global.Dex_Defence[285] = 60;
    global.Dex_SPattack[285] = 40;
    global.Dex_SPdefence[285] = 60;
    global.Dex_Speed[285] = 35;

    // Pokemon 286 - "Breloom"
    global.Dex_Health[286] = 60;
    global.Dex_Attack[286] = 130;
    global.Dex_Defence[286] = 80;
    global.Dex_SPattack[286] = 60;
    global.Dex_SPdefence[286] = 60;
    global.Dex_Speed[286] = 70;

    // Pokemon 287 - "Slakoth"
    global.Dex_Health[287] = 60;
    global.Dex_Attack[287] = 60;
    global.Dex_Defence[287] = 60;
    global.Dex_SPattack[287] = 35;
    global.Dex_SPdefence[287] = 35;
    global.Dex_Speed[287] = 30;

    // Pokemon 288 - "Vigoroth"
    global.Dex_Health[288] = 80;
    global.Dex_Attack[288] = 80;
    global.Dex_Defence[288] = 80;
    global.Dex_SPattack[288] = 55;
    global.Dex_SPdefence[288] = 55;
    global.Dex_Speed[288] = 90;

    // Pokemon 289 - "Slaking"
    global.Dex_Health[289] = 150;
    global.Dex_Attack[289] = 160;
    global.Dex_Defence[289] = 100;
    global.Dex_SPattack[289] = 95;
    global.Dex_SPdefence[289] = 65;
    global.Dex_Speed[289] = 30;

    // Pokemon 290 - "Nincada"
    global.Dex_Health[290] = 31;
    global.Dex_Attack[290] = 45;
    global.Dex_Defence[290] = 90;
    global.Dex_SPattack[290] = 30;
    global.Dex_SPdefence[290] = 30;
    global.Dex_Speed[290] = 40;

    // Pokemon 291 - "Ninjask"
    global.Dex_Health[291] = 61;
    global.Dex_Attack[291] = 45;
    global.Dex_Defence[291] = 50;
    global.Dex_SPattack[291] = 50;
    global.Dex_SPdefence[291] = 50;
    global.Dex_Speed[291] = 160;

    // Pokemon 292 - "Shedinja"
    global.Dex_Health[292] = 1;
    global.Dex_Attack[292] = 90;
    global.Dex_Defence[292] = 45;
    global.Dex_SPattack[292] = 30;
    global.Dex_SPdefence[292] = 30;
    global.Dex_Speed[292] = 40;

    // Pokemon 293 - "Whismur"
    global.Dex_Health[293] = 64;
    global.Dex_Attack[293] = 51;
    global.Dex_Defence[293] = 23;
    global.Dex_SPattack[293] = 51;
    global.Dex_SPdefence[293] = 23;
    global.Dex_Speed[293] = 28;

    // Pokemon 294 - "Loudred"
    global.Dex_Health[294] = 84;
    global.Dex_Attack[294] = 71;
    global.Dex_Defence[294] = 43;
    global.Dex_SPattack[294] = 71;
    global.Dex_SPdefence[294] = 43;
    global.Dex_Speed[294] = 48;

    // Pokemon 295 - "Exploud"
    global.Dex_Health[295] = 104;
    global.Dex_Attack[295] = 91;
    global.Dex_Defence[295] = 63;
    global.Dex_SPattack[295] = 91;
    global.Dex_SPdefence[295] = 63;
    global.Dex_Speed[295] = 68;

    // Pokemon 296 - "Makuhita"
    global.Dex_Health[296] = 72;
    global.Dex_Attack[296] = 60;
    global.Dex_Defence[296] = 30;
    global.Dex_SPattack[296] = 20;
    global.Dex_SPdefence[296] = 30;
    global.Dex_Speed[296] = 25;

    // Pokemon 297 - "Hariyama"
    global.Dex_Health[297] = 144;
    global.Dex_Attack[297] = 120;
    global.Dex_Defence[297] = 60;
    global.Dex_SPattack[297] = 40;
    global.Dex_SPdefence[297] = 60;
    global.Dex_Speed[297] = 50;

    // Pokemon 298 - "Azurill"
    global.Dex_Health[298] = 50;
    global.Dex_Attack[298] = 20;
    global.Dex_Defence[298] = 40;
    global.Dex_SPattack[298] = 20;
    global.Dex_SPdefence[298] = 40;
    global.Dex_Speed[298] = 20;

    // Pokemon 299 - "Nosepass"
    global.Dex_Health[299] = 30;
    global.Dex_Attack[299] = 45;
    global.Dex_Defence[299] = 135;
    global.Dex_SPattack[299] = 45;
    global.Dex_SPdefence[299] = 90;
    global.Dex_Speed[299] = 30;

    // Pokemon 300 - "Skitty"
    global.Dex_Health[300] = 50;
    global.Dex_Attack[300] = 45;
    global.Dex_Defence[300] = 45;
    global.Dex_SPattack[300] = 35;
    global.Dex_SPdefence[300] = 35;
    global.Dex_Speed[300] = 50;

    // Pokemon 301 - "Delcatty"
    global.Dex_Health[301] = 70;
    global.Dex_Attack[301] = 65;
    global.Dex_Defence[301] = 65;
    global.Dex_SPattack[301] = 55;
    global.Dex_SPdefence[301] = 55;
    global.Dex_Speed[301] = 70;

    // Pokemon 302 - "Sableye"
    global.Dex_Health[302] = 50;
    global.Dex_Attack[302] = 75;
    global.Dex_Defence[302] = 75;
    global.Dex_SPattack[302] = 65;
    global.Dex_SPdefence[302] = 65;
    global.Dex_Speed[302] = 50;

    // Pokemon 303 - "Mawile"
    global.Dex_Health[303] = 50;
    global.Dex_Attack[303] = 85;
    global.Dex_Defence[303] = 85;
    global.Dex_SPattack[303] = 55;
    global.Dex_SPdefence[303] = 55;
    global.Dex_Speed[303] = 50;

    // Pokemon 304 - "Aron"
    global.Dex_Health[304] = 50;
    global.Dex_Attack[304] = 70;
    global.Dex_Defence[304] = 100;
    global.Dex_SPattack[304] = 40;
    global.Dex_SPdefence[304] = 40;
    global.Dex_Speed[304] = 30;

    // Pokemon 305 - "Lairon"
    global.Dex_Health[305] = 60;
    global.Dex_Attack[305] = 90;
    global.Dex_Defence[305] = 140;
    global.Dex_SPattack[305] = 50;
    global.Dex_SPdefence[305] = 50;
    global.Dex_Speed[305] = 40;

    // Pokemon 306 - "Aggron"
    global.Dex_Health[306] = 70;
    global.Dex_Attack[306] = 110;
    global.Dex_Defence[306] = 180;
    global.Dex_SPattack[306] = 60;
    global.Dex_SPdefence[306] = 60;
    global.Dex_Speed[306] = 50;

    // Pokemon 307 - "Meditite"
    global.Dex_Health[307] = 30;
    global.Dex_Attack[307] = 40;
    global.Dex_Defence[307] = 55;
    global.Dex_SPattack[307] = 40;
    global.Dex_SPdefence[307] = 55;
    global.Dex_Speed[307] = 60;

    // Pokemon 308 - "Medicham"
    global.Dex_Health[308] = 60;
    global.Dex_Attack[308] = 60;
    global.Dex_Defence[308] = 75;
    global.Dex_SPattack[308] = 60;
    global.Dex_SPdefence[308] = 75;
    global.Dex_Speed[308] = 80;

    // Pokemon 309 - "Electrike"
    global.Dex_Health[309] = 40;
    global.Dex_Attack[309] = 45;
    global.Dex_Defence[309] = 40;
    global.Dex_SPattack[309] = 65;
    global.Dex_SPdefence[309] = 40;
    global.Dex_Speed[309] = 65;

    // Pokemon 310 - "Manectric"
    global.Dex_Health[310] = 70;
    global.Dex_Attack[310] = 75;
    global.Dex_Defence[310] = 60;
    global.Dex_SPattack[310] = 105;
    global.Dex_SPdefence[310] = 60;
    global.Dex_Speed[310] = 105;

    // Pokemon 311 - "Plusle"
    global.Dex_Health[311] = 60;
    global.Dex_Attack[311] = 50;
    global.Dex_Defence[311] = 40;
    global.Dex_SPattack[311] = 85;
    global.Dex_SPdefence[311] = 75;
    global.Dex_Speed[311] = 95;

    // Pokemon 312 - "Minun"
    global.Dex_Health[312] = 60;
    global.Dex_Attack[312] = 40;
    global.Dex_Defence[312] = 50;
    global.Dex_SPattack[312] = 75;
    global.Dex_SPdefence[312] = 85;
    global.Dex_Speed[312] = 95;

    // Pokemon 313 - "Volbeat"
    global.Dex_Health[313] = 65;
    global.Dex_Attack[313] = 73;
    global.Dex_Defence[313] = 55;
    global.Dex_SPattack[313] = 47;
    global.Dex_SPdefence[313] = 75;
    global.Dex_Speed[313] = 85;

    // Pokemon 314 - "Illumise"
    global.Dex_Health[314] = 65;
    global.Dex_Attack[314] = 47;
    global.Dex_Defence[314] = 55;
    global.Dex_SPattack[314] = 73;
    global.Dex_SPdefence[314] = 75;
    global.Dex_Speed[314] = 85;

    // Pokemon 315 - "Roselia"
    global.Dex_Health[315] = 50;
    global.Dex_Attack[315] = 60;
    global.Dex_Defence[315] = 45;
    global.Dex_SPattack[315] = 100;
    global.Dex_SPdefence[315] = 80;
    global.Dex_Speed[315] = 65;

    // Pokemon 316 - "Gulpin"
    global.Dex_Health[316] = 70;
    global.Dex_Attack[316] = 43;
    global.Dex_Defence[316] = 53;
    global.Dex_SPattack[316] = 43;
    global.Dex_SPdefence[316] = 53;
    global.Dex_Speed[316] = 40;

    // Pokemon 317 - "Swalot"
    global.Dex_Health[317] = 100;
    global.Dex_Attack[317] = 73;
    global.Dex_Defence[317] = 83;
    global.Dex_SPattack[317] = 73;
    global.Dex_SPdefence[317] = 83;
    global.Dex_Speed[317] = 55;

    // Pokemon 318 - "Carvanha"
    global.Dex_Health[318] = 45;
    global.Dex_Attack[318] = 90;
    global.Dex_Defence[318] = 20;
    global.Dex_SPattack[318] = 65;
    global.Dex_SPdefence[318] = 20;
    global.Dex_Speed[318] = 65;

    // Pokemon 319 - "Sharpedo"
    global.Dex_Health[319] = 70;
    global.Dex_Attack[319] = 120;
    global.Dex_Defence[319] = 40;
    global.Dex_SPattack[319] = 95;
    global.Dex_SPdefence[319] = 40;
    global.Dex_Speed[319] = 95;

    // Pokemon 320 - "Wailmer"
    global.Dex_Health[320] = 130;
    global.Dex_Attack[320] = 70;
    global.Dex_Defence[320] = 35;
    global.Dex_SPattack[320] = 70;
    global.Dex_SPdefence[320] = 35;
    global.Dex_Speed[320] = 60;

    // Pokemon 321 - "Wailord"
    global.Dex_Health[321] = 170;
    global.Dex_Attack[321] = 90;
    global.Dex_Defence[321] = 45;
    global.Dex_SPattack[321] = 90;
    global.Dex_SPdefence[321] = 45;
    global.Dex_Speed[321] = 60;

    // Pokemon 322 - "Numel"
    global.Dex_Health[322] = 60;
    global.Dex_Attack[322] = 60;
    global.Dex_Defence[322] = 40;
    global.Dex_SPattack[322] = 65;
    global.Dex_SPdefence[322] = 45;
    global.Dex_Speed[322] = 35;

    // Pokemon 323 - "Camerupt"
    global.Dex_Health[323] = 70;
    global.Dex_Attack[323] = 100;
    global.Dex_Defence[323] = 70;
    global.Dex_SPattack[323] = 105;
    global.Dex_SPdefence[323] = 75;
    global.Dex_Speed[323] = 40;

    // Pokemon 324 - "Torkoal"
    global.Dex_Health[324] = 70;
    global.Dex_Attack[324] = 85;
    global.Dex_Defence[324] = 140;
    global.Dex_SPattack[324] = 85;
    global.Dex_SPdefence[324] = 70;
    global.Dex_Speed[324] = 20;

    // Pokemon 325 - "Spoink"
    global.Dex_Health[325] = 60;
    global.Dex_Attack[325] = 25;
    global.Dex_Defence[325] = 35;
    global.Dex_SPattack[325] = 70;
    global.Dex_SPdefence[325] = 80;
    global.Dex_Speed[325] = 60;

    // Pokemon 326 - "Grumpig"
    global.Dex_Health[326] = 80;
    global.Dex_Attack[326] = 45;
    global.Dex_Defence[326] = 65;
    global.Dex_SPattack[326] = 90;
    global.Dex_SPdefence[326] = 110;
    global.Dex_Speed[326] = 80;

    // Pokemon 327 - "Spinda"
    global.Dex_Health[327] = 60;
    global.Dex_Attack[327] = 60;
    global.Dex_Defence[327] = 60;
    global.Dex_SPattack[327] = 60;
    global.Dex_SPdefence[327] = 60;
    global.Dex_Speed[327] = 60;

    // Pokemon 328 - "Trapinch"
    global.Dex_Health[328] = 45;
    global.Dex_Attack[328] = 100;
    global.Dex_Defence[328] = 45;
    global.Dex_SPattack[328] = 45;
    global.Dex_SPdefence[328] = 45;
    global.Dex_Speed[328] = 10;

    // Pokemon 329 - "Vibrava"
    global.Dex_Health[329] = 50;
    global.Dex_Attack[329] = 70;
    global.Dex_Defence[329] = 50;
    global.Dex_SPattack[329] = 50;
    global.Dex_SPdefence[329] = 50;
    global.Dex_Speed[329] = 70;

    // Pokemon 330 - "Flygon"
    global.Dex_Health[330] = 80;
    global.Dex_Attack[330] = 100;
    global.Dex_Defence[330] = 80;
    global.Dex_SPattack[330] = 80;
    global.Dex_SPdefence[330] = 80;
    global.Dex_Speed[330] = 100;

    // Pokemon 331 - "Cacnea"
    global.Dex_Health[331] = 50;
    global.Dex_Attack[331] = 85;
    global.Dex_Defence[331] = 40;
    global.Dex_SPattack[331] = 85;
    global.Dex_SPdefence[331] = 40;
    global.Dex_Speed[331] = 35;

    // Pokemon 332 - "Cacturne"
    global.Dex_Health[332] = 70;
    global.Dex_Attack[332] = 115;
    global.Dex_Defence[332] = 60;
    global.Dex_SPattack[332] = 115;
    global.Dex_SPdefence[332] = 60;
    global.Dex_Speed[332] = 55;

    // Pokemon 333 - "Swablu"
    global.Dex_Health[333] = 45;
    global.Dex_Attack[333] = 40;
    global.Dex_Defence[333] = 60;
    global.Dex_SPattack[333] = 40;
    global.Dex_SPdefence[333] = 75;
    global.Dex_Speed[333] = 50;

    // Pokemon 334 - "Altaria"
    global.Dex_Health[334] = 75;
    global.Dex_Attack[334] = 70;
    global.Dex_Defence[334] = 90;
    global.Dex_SPattack[334] = 70;
    global.Dex_SPdefence[334] = 105;
    global.Dex_Speed[334] = 80;

    // Pokemon 335 - "Zangoose"
    global.Dex_Health[335] = 73;
    global.Dex_Attack[335] = 115;
    global.Dex_Defence[335] = 60;
    global.Dex_SPattack[335] = 60;
    global.Dex_SPdefence[335] = 60;
    global.Dex_Speed[335] = 90;

    // Pokemon 336 - "Seviper"
    global.Dex_Health[336] = 73;
    global.Dex_Attack[336] = 100;
    global.Dex_Defence[336] = 60;
    global.Dex_SPattack[336] = 100;
    global.Dex_SPdefence[336] = 60;
    global.Dex_Speed[336] = 65;

    // Pokemon 337 - "Lunatone"
    global.Dex_Health[337] = 70;
    global.Dex_Attack[337] = 55;
    global.Dex_Defence[337] = 65;
    global.Dex_SPattack[337] = 95;
    global.Dex_SPdefence[337] = 85;
    global.Dex_Speed[337] = 70;

    // Pokemon 338 - "Solrock"
    global.Dex_Health[338] = 70;
    global.Dex_Attack[338] = 95;
    global.Dex_Defence[338] = 85;
    global.Dex_SPattack[338] = 55;
    global.Dex_SPdefence[338] = 65;
    global.Dex_Speed[338] = 70;

    // Pokemon 339 - "Barboach"
    global.Dex_Health[339] = 50;
    global.Dex_Attack[339] = 48;
    global.Dex_Defence[339] = 43;
    global.Dex_SPattack[339] = 46;
    global.Dex_SPdefence[339] = 41;
    global.Dex_Speed[339] = 60;

    // Pokemon 340 - "Whiscash"
    global.Dex_Health[340] = 110;
    global.Dex_Attack[340] = 78;
    global.Dex_Defence[340] = 73;
    global.Dex_SPattack[340] = 76;
    global.Dex_SPdefence[340] = 71;
    global.Dex_Speed[340] = 60;

    // Pokemon 341 - "Corphish"
    global.Dex_Health[341] = 43;
    global.Dex_Attack[341] = 80;
    global.Dex_Defence[341] = 65;
    global.Dex_SPattack[341] = 50;
    global.Dex_SPdefence[341] = 35;
    global.Dex_Speed[341] = 35;

    // Pokemon 342 - "Crawdaunt"
    global.Dex_Health[342] = 63;
    global.Dex_Attack[342] = 120;
    global.Dex_Defence[342] = 85;
    global.Dex_SPattack[342] = 90;
    global.Dex_SPdefence[342] = 55;
    global.Dex_Speed[342] = 55;

    // Pokemon 343 - "Baltoy"
    global.Dex_Health[343] = 40;
    global.Dex_Attack[343] = 40;
    global.Dex_Defence[343] = 55;
    global.Dex_SPattack[343] = 40;
    global.Dex_SPdefence[343] = 70;
    global.Dex_Speed[343] = 55;

    // Pokemon 344 - "Claydol"
    global.Dex_Health[344] = 60;
    global.Dex_Attack[344] = 70;
    global.Dex_Defence[344] = 105;
    global.Dex_SPattack[344] = 70;
    global.Dex_SPdefence[344] = 120;
    global.Dex_Speed[344] = 75;

    // Pokemon 345 - "Lileep"
    global.Dex_Health[345] = 66;
    global.Dex_Attack[345] = 41;
    global.Dex_Defence[345] = 77;
    global.Dex_SPattack[345] = 61;
    global.Dex_SPdefence[345] = 87;
    global.Dex_Speed[345] = 23;

    // Pokemon 346 - "Cradily"
    global.Dex_Health[346] = 86;
    global.Dex_Attack[346] = 81;
    global.Dex_Defence[346] = 97;
    global.Dex_SPattack[346] = 81;
    global.Dex_SPdefence[346] = 107;
    global.Dex_Speed[346] = 43;

    // Pokemon 347 - "Anorith"
    global.Dex_Health[347] = 45;
    global.Dex_Attack[347] = 95;
    global.Dex_Defence[347] = 50;
    global.Dex_SPattack[347] = 40;
    global.Dex_SPdefence[347] = 50;
    global.Dex_Speed[347] = 75;

    // Pokemon 348 - "Armaldo"
    global.Dex_Health[348] = 75;
    global.Dex_Attack[348] = 125;
    global.Dex_Defence[348] = 100;
    global.Dex_SPattack[348] = 70;
    global.Dex_SPdefence[348] = 80;
    global.Dex_Speed[348] = 45;

    // Pokemon 349 - "Feebas"
    global.Dex_Health[349] = 20;
    global.Dex_Attack[349] = 15;
    global.Dex_Defence[349] = 20;
    global.Dex_SPattack[349] = 10;
    global.Dex_SPdefence[349] = 55;
    global.Dex_Speed[349] = 80;

    // Pokemon 350 - "Milotic"
    global.Dex_Health[350] = 95;
    global.Dex_Attack[350] = 60;
    global.Dex_Defence[350] = 79;
    global.Dex_SPattack[350] = 100;
    global.Dex_SPdefence[350] = 125;
    global.Dex_Speed[350] = 81;

    // Pokemon 351 - "Castform"
    global.Dex_Health[351] = 70;
    global.Dex_Attack[351] = 70;
    global.Dex_Defence[351] = 70;
    global.Dex_SPattack[351] = 70;
    global.Dex_SPdefence[351] = 70;
    global.Dex_Speed[351] = 70;

    // Pokemon 352 - "Kecleon"
    global.Dex_Health[352] = 60;
    global.Dex_Attack[352] = 90;
    global.Dex_Defence[352] = 70;
    global.Dex_SPattack[352] = 60;
    global.Dex_SPdefence[352] = 120;
    global.Dex_Speed[352] = 40;

    // Pokemon 353 - "Shuppet"
    global.Dex_Health[353] = 44;
    global.Dex_Attack[353] = 75;
    global.Dex_Defence[353] = 35;
    global.Dex_SPattack[353] = 63;
    global.Dex_SPdefence[353] = 33;
    global.Dex_Speed[353] = 45;

    // Pokemon 354 - "Banette"
    global.Dex_Health[354] = 64;
    global.Dex_Attack[354] = 115;
    global.Dex_Defence[354] = 65;
    global.Dex_SPattack[354] = 83;
    global.Dex_SPdefence[354] = 63;
    global.Dex_Speed[354] = 65;

    // Pokemon 355 - "Duskull"
    global.Dex_Health[355] = 20;
    global.Dex_Attack[355] = 40;
    global.Dex_Defence[355] = 90;
    global.Dex_SPattack[355] = 30;
    global.Dex_SPdefence[355] = 90;
    global.Dex_Speed[355] = 25;

    // Pokemon 356 - "Dusclops"
    global.Dex_Health[356] = 40;
    global.Dex_Attack[356] = 70;
    global.Dex_Defence[356] = 130;
    global.Dex_SPattack[356] = 60;
    global.Dex_SPdefence[356] = 130;
    global.Dex_Speed[356] = 25;

    // Pokemon 357 - "Tropius"
    global.Dex_Health[357] = 99;
    global.Dex_Attack[357] = 68;
    global.Dex_Defence[357] = 83;
    global.Dex_SPattack[357] = 72;
    global.Dex_SPdefence[357] = 87;
    global.Dex_Speed[357] = 51;

    // Pokemon 358 - "Chimecho"
    global.Dex_Health[358] = 65;
    global.Dex_Attack[358] = 50;
    global.Dex_Defence[358] = 70;
    global.Dex_SPattack[358] = 95;
    global.Dex_SPdefence[358] = 80;
    global.Dex_Speed[358] = 65;

    // Pokemon 359 - "Absol"
    global.Dex_Health[359] = 65;
    global.Dex_Attack[359] = 130;
    global.Dex_Defence[359] = 60;
    global.Dex_SPattack[359] = 75;
    global.Dex_SPdefence[359] = 60;
    global.Dex_Speed[359] = 75;

    // Pokemon 360 - "Wynaut"
    global.Dex_Health[360] = 95;
    global.Dex_Attack[360] = 23;
    global.Dex_Defence[360] = 48;
    global.Dex_SPattack[360] = 23;
    global.Dex_SPdefence[360] = 48;
    global.Dex_Speed[360] = 23;

    // Pokemon 361 - "Snorunt"
    global.Dex_Health[361] = 50;
    global.Dex_Attack[361] = 50;
    global.Dex_Defence[361] = 50;
    global.Dex_SPattack[361] = 50;
    global.Dex_SPdefence[361] = 50;
    global.Dex_Speed[361] = 50;

    // Pokemon 362 - "Glalie"
    global.Dex_Health[362] = 80;
    global.Dex_Attack[362] = 80;
    global.Dex_Defence[362] = 80;
    global.Dex_SPattack[362] = 80;
    global.Dex_SPdefence[362] = 80;
    global.Dex_Speed[362] = 80;

    // Pokemon 363 - "Spheal"
    global.Dex_Health[363] = 70;
    global.Dex_Attack[363] = 40;
    global.Dex_Defence[363] = 50;
    global.Dex_SPattack[363] = 55;
    global.Dex_SPdefence[363] = 50;
    global.Dex_Speed[363] = 25;

    // Pokemon 364 - "Sealeo"
    global.Dex_Health[364] = 90;
    global.Dex_Attack[364] = 60;
    global.Dex_Defence[364] = 70;
    global.Dex_SPattack[364] = 75;
    global.Dex_SPdefence[364] = 70;
    global.Dex_Speed[364] = 45;

    // Pokemon 365 - "Walrein"
    global.Dex_Health[365] = 110;
    global.Dex_Attack[365] = 80;
    global.Dex_Defence[365] = 90;
    global.Dex_SPattack[365] = 95;
    global.Dex_SPdefence[365] = 90;
    global.Dex_Speed[365] = 65;

    // Pokemon 366 - "Clamperl"
    global.Dex_Health[366] = 35;
    global.Dex_Attack[366] = 64;
    global.Dex_Defence[366] = 85;
    global.Dex_SPattack[366] = 74;
    global.Dex_SPdefence[366] = 55;
    global.Dex_Speed[366] = 32;

    // Pokemon 367 - "Huntail"
    global.Dex_Health[367] = 55;
    global.Dex_Attack[367] = 104;
    global.Dex_Defence[367] = 105;
    global.Dex_SPattack[367] = 94;
    global.Dex_SPdefence[367] = 75;
    global.Dex_Speed[367] = 52;

    // Pokemon 368 - "Gorebyss"
    global.Dex_Health[368] = 55;
    global.Dex_Attack[368] = 84;
    global.Dex_Defence[368] = 105;
    global.Dex_SPattack[368] = 114;
    global.Dex_SPdefence[368] = 75;
    global.Dex_Speed[368] = 52;

    // Pokemon 369 - "Relicanth"
    global.Dex_Health[369] = 100;
    global.Dex_Attack[369] = 90;
    global.Dex_Defence[369] = 130;
    global.Dex_SPattack[369] = 45;
    global.Dex_SPdefence[369] = 65;
    global.Dex_Speed[369] = 55;

    // Pokemon 370 - "Luvdisc"
    global.Dex_Health[370] = 43;
    global.Dex_Attack[370] = 30;
    global.Dex_Defence[370] = 55;
    global.Dex_SPattack[370] = 40;
    global.Dex_SPdefence[370] = 65;
    global.Dex_Speed[370] = 97;

    // Pokemon 371 - "Bagon"
    global.Dex_Health[371] = 45;
    global.Dex_Attack[371] = 75;
    global.Dex_Defence[371] = 60;
    global.Dex_SPattack[371] = 40;
    global.Dex_SPdefence[371] = 30;
    global.Dex_Speed[371] = 50;

    // Pokemon 372 - "Shelgon"
    global.Dex_Health[372] = 65;
    global.Dex_Attack[372] = 95;
    global.Dex_Defence[372] = 100;
    global.Dex_SPattack[372] = 60;
    global.Dex_SPdefence[372] = 50;
    global.Dex_Speed[372] = 50;

    // Pokemon 373 - "Salamence"
    global.Dex_Health[373] = 95;
    global.Dex_Attack[373] = 135;
    global.Dex_Defence[373] = 80;
    global.Dex_SPattack[373] = 110;
    global.Dex_SPdefence[373] = 80;
    global.Dex_Speed[373] = 100;

    // Pokemon 374 - "Beldum"
    global.Dex_Health[374] = 40;
    global.Dex_Attack[374] = 55;
    global.Dex_Defence[374] = 80;
    global.Dex_SPattack[374] = 35;
    global.Dex_SPdefence[374] = 60;
    global.Dex_Speed[374] = 30;

    // Pokemon 375 - "Metang"
    global.Dex_Health[375] = 60;
    global.Dex_Attack[375] = 75;
    global.Dex_Defence[375] = 100;
    global.Dex_SPattack[375] = 55;
    global.Dex_SPdefence[375] = 80;
    global.Dex_Speed[375] = 50;

    // Pokemon 376 - "Metagross"
    global.Dex_Health[376] = 80;
    global.Dex_Attack[376] = 135;
    global.Dex_Defence[376] = 130;
    global.Dex_SPattack[376] = 95;
    global.Dex_SPdefence[376] = 90;
    global.Dex_Speed[376] = 70;

    // Pokemon 377 - "Regirock"
    global.Dex_Health[377] = 80;
    global.Dex_Attack[377] = 100;
    global.Dex_Defence[377] = 200;
    global.Dex_SPattack[377] = 50;
    global.Dex_SPdefence[377] = 100;
    global.Dex_Speed[377] = 50;

    // Pokemon 378 - "Regice"
    global.Dex_Health[378] = 80;
    global.Dex_Attack[378] = 50;
    global.Dex_Defence[378] = 100;
    global.Dex_SPattack[378] = 100;
    global.Dex_SPdefence[378] = 200;
    global.Dex_Speed[378] = 50;

    // Pokemon 379 - "Registeel"
    global.Dex_Health[379] = 80;
    global.Dex_Attack[379] = 75;
    global.Dex_Defence[379] = 150;
    global.Dex_SPattack[379] = 75;
    global.Dex_SPdefence[379] = 150;
    global.Dex_Speed[379] = 50;

    // Pokemon 380 - "Latias"
    global.Dex_Health[380] = 80;
    global.Dex_Attack[380] = 80;
    global.Dex_Defence[380] = 90;
    global.Dex_SPattack[380] = 110;
    global.Dex_SPdefence[380] = 130;
    global.Dex_Speed[380] = 110;

    // Pokemon 381 - "Latios"
    global.Dex_Health[381] = 80;
    global.Dex_Attack[381] = 90;
    global.Dex_Defence[381] = 80;
    global.Dex_SPattack[381] = 130;
    global.Dex_SPdefence[381] = 110;
    global.Dex_Speed[381] = 110;

    // Pokemon 382 - "Kyogre"
    global.Dex_Health[382] = 100;
    global.Dex_Attack[382] = 100;
    global.Dex_Defence[382] = 90;
    global.Dex_SPattack[382] = 150;
    global.Dex_SPdefence[382] = 140;
    global.Dex_Speed[382] = 90;

    // Pokemon 383 - "Groudon"
    global.Dex_Health[383] = 100;
    global.Dex_Attack[383] = 150;
    global.Dex_Defence[383] = 140;
    global.Dex_SPattack[383] = 100;
    global.Dex_SPdefence[383] = 90;
    global.Dex_Speed[383] = 90;

    // Pokemon 384 - "Rayquaza"
    global.Dex_Health[384] = 105;
    global.Dex_Attack[384] = 150;
    global.Dex_Defence[384] = 90;
    global.Dex_SPattack[384] = 150;
    global.Dex_SPdefence[384] = 90;
    global.Dex_Speed[384] = 95;

    // Pokemon 385 - "Jirachi"
    global.Dex_Health[385] = 100;
    global.Dex_Attack[385] = 100;
    global.Dex_Defence[385] = 100;
    global.Dex_SPattack[385] = 100;
    global.Dex_SPdefence[385] = 100;
    global.Dex_Speed[385] = 100;

    // Pokemon 386 - "Deoxys"
    global.Dex_Health[386] = 50;
    global.Dex_Attack[386] = 150;
    global.Dex_Defence[386] = 50;
    global.Dex_SPattack[386] = 150;
    global.Dex_SPdefence[386] = 50;
    global.Dex_Speed[386] = 150;
}