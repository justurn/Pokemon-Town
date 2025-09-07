/*
 * SCR_Pokemon_Basic_Gen3.gml
 * 
 * POKEMON DATA MODULE - Generation 3 Basic Information
 * 
 * This script initializes Generation 3 Pokemon basic data (IDs 252-386):
 * - Names, sprites, and portraits
 * - Primary and secondary types
 * 
 * Uses original Pokedex structure for maximum clarity and consistency.
 * 
 * EDITING GUIDELINES:
 * - Pokemon are in sequential order (252, 253, 254, 255...)
 * - Use official Pokemon names and types from bulbapedia.net
 * - Set secondary type to "" for single-type Pokemon
 * - Sprite constants will be added later during sprite integration
 * 
 * CREATED: September 2025
 * POKEMON COUNT: 135 (Hoenn Region)
 * PURPOSE: Generation 3 Pokemon implementation for F-025
 */

function SCR_Pokemon_Basic_Gen3() {
    // Pokemon 252 - "Treecko"
    global.Dex_Names[252] = "Treecko";
    global.Dex_Sprites[252] = SPR_Treecko;
    global.Dex_Primary_Types[252] = "Grass";
    global.Dex_Secondary_Types[252] = "";
    global.Dex_Portrait[252] = ICO_0252;

    // Pokemon 253 - "Grovyle"
    global.Dex_Names[253] = "Grovyle";
    global.Dex_Sprites[253] = SPR_Grovyle;
    global.Dex_Primary_Types[253] = "Grass";
    global.Dex_Secondary_Types[253] = "";
    global.Dex_Portrait[253] = ICO_0253;

    // Pokemon 254 - "Sceptile"
    global.Dex_Names[254] = "Sceptile";
    global.Dex_Sprites[254] = SPR_Sceptile;
    global.Dex_Primary_Types[254] = "Grass";
    global.Dex_Secondary_Types[254] = "";
    global.Dex_Portrait[254] = ICO_0254;

    // Pokemon 255 - "Torchic"
    global.Dex_Names[255] = "Torchic";
    global.Dex_Sprites[255] = SPR_Torchic;
    global.Dex_Primary_Types[255] = "Fire";
    global.Dex_Secondary_Types[255] = "";
    global.Dex_Portrait[255] = ICO_0255;

    // Pokemon 256 - "Combusken"
    global.Dex_Names[256] = "Combusken";
    global.Dex_Sprites[256] = SPR_Combusken;
    global.Dex_Primary_Types[256] = "Fire";
    global.Dex_Secondary_Types[256] = "Fighting";
    global.Dex_Portrait[256] = ICO_0256;

    // Pokemon 257 - "Blaziken"
    global.Dex_Names[257] = "Blaziken";
    global.Dex_Sprites[257] = SPR_Blaziken;
    global.Dex_Primary_Types[257] = "Fire";
    global.Dex_Secondary_Types[257] = "Fighting";
    global.Dex_Portrait[257] = ICO_0257;

    // Pokemon 258 - "Mudkip"
    global.Dex_Names[258] = "Mudkip";
    global.Dex_Sprites[258] = SPR_Mudkip;
    global.Dex_Primary_Types[258] = "Water";
    global.Dex_Secondary_Types[258] = "";
    global.Dex_Portrait[258] = ICO_0258;

    // Pokemon 259 - "Marshtomp"
    global.Dex_Names[259] = "Marshtomp";
    global.Dex_Sprites[259] = SPR_Marshtomp;
    global.Dex_Primary_Types[259] = "Water";
    global.Dex_Secondary_Types[259] = "Ground";
    global.Dex_Portrait[259] = ICO_0259;

    // Pokemon 260 - "Swampert"
    global.Dex_Names[260] = "Swampert";
    global.Dex_Sprites[260] = SPR_Swampert;
    global.Dex_Primary_Types[260] = "Water";
    global.Dex_Secondary_Types[260] = "Ground";
    global.Dex_Portrait[260] = ICO_0260;

    // Pokemon 261 - "Poochyena"
    global.Dex_Names[261] = "Poochyena";
    global.Dex_Sprites[261] = SPR_Poochyena;
    global.Dex_Primary_Types[261] = "Dark";
    global.Dex_Secondary_Types[261] = "";
    global.Dex_Portrait[261] = ICO_0261;

    // Pokemon 262 - "Mightyena"
    global.Dex_Names[262] = "Mightyena";
    global.Dex_Sprites[262] = SPR_Mightyena;
    global.Dex_Primary_Types[262] = "Dark";
    global.Dex_Secondary_Types[262] = "";
    global.Dex_Portrait[262] = ICO_0262;

    // Pokemon 263 - "Zigzagoon"
    global.Dex_Names[263] = "Zigzagoon";
    global.Dex_Sprites[263] = SPR_Zigzagoon;
    global.Dex_Primary_Types[263] = "Normal";
    global.Dex_Secondary_Types[263] = "";
    global.Dex_Portrait[263] = ICO_0263;

    // Pokemon 264 - "Linoone"
    global.Dex_Names[264] = "Linoone";
    global.Dex_Sprites[264] = SPR_Linoone;
    global.Dex_Primary_Types[264] = "Normal";
    global.Dex_Secondary_Types[264] = "";
    global.Dex_Portrait[264] = ICO_0264;

    // Pokemon 265 - "Wurmple"
    global.Dex_Names[265] = "Wurmple";
    global.Dex_Sprites[265] = SPR_Wurmple;
    global.Dex_Primary_Types[265] = "Bug";
    global.Dex_Secondary_Types[265] = "";
    global.Dex_Portrait[265] = ICO_0265;

    // Pokemon 266 - "Silcoon"
    global.Dex_Names[266] = "Silcoon";
    global.Dex_Sprites[266] = SPR_Silcoon;
    global.Dex_Primary_Types[266] = "Bug";
    global.Dex_Secondary_Types[266] = "";
    global.Dex_Portrait[266] = ICO_0266;

    // Pokemon 267 - "Beautifly"
    global.Dex_Names[267] = "Beautifly";
    global.Dex_Sprites[267] = SPR_Beautifly;
    global.Dex_Primary_Types[267] = "Bug";
    global.Dex_Secondary_Types[267] = "Flying";
    global.Dex_Portrait[267] = ICO_0267;

    // Pokemon 268 - "Cascoon"
    global.Dex_Names[268] = "Cascoon";
    global.Dex_Sprites[268] = SPR_Cascoon;
    global.Dex_Primary_Types[268] = "Bug";
    global.Dex_Secondary_Types[268] = "";
    global.Dex_Portrait[268] = ICO_0268;

    // Pokemon 269 - "Dustox"
    global.Dex_Names[269] = "Dustox";
    global.Dex_Sprites[269] = SPR_Dustox;
    global.Dex_Primary_Types[269] = "Bug";
    global.Dex_Secondary_Types[269] = "Poison";
    global.Dex_Portrait[269] = ICO_0269;

    // Pokemon 270 - "Lotad"
    global.Dex_Names[270] = "Lotad";
    global.Dex_Sprites[270] = SPR_Lotad;
    global.Dex_Primary_Types[270] = "Water";
    global.Dex_Secondary_Types[270] = "Grass";
    global.Dex_Portrait[270] = ICO_0270;

    // Pokemon 271 - "Lombre"
    global.Dex_Names[271] = "Lombre";
    global.Dex_Sprites[271] = SPR_Lombre;
    global.Dex_Primary_Types[271] = "Water";
    global.Dex_Secondary_Types[271] = "Grass";
    global.Dex_Portrait[271] = ICO_0271;

    // Pokemon 272 - "Ludicolo"
    global.Dex_Names[272] = "Ludicolo";
    global.Dex_Sprites[272] = SPR_Ludicolo;
    global.Dex_Primary_Types[272] = "Water";
    global.Dex_Secondary_Types[272] = "Grass";
    global.Dex_Portrait[272] = ICO_0272;

    // Pokemon 273 - "Seedot"
    global.Dex_Names[273] = "Seedot";
    global.Dex_Sprites[273] = SPR_Seedot;
    global.Dex_Primary_Types[273] = "Grass";
    global.Dex_Secondary_Types[273] = "";
    global.Dex_Portrait[273] = ICO_0273;

    // Pokemon 274 - "Nuzleaf"
    global.Dex_Names[274] = "Nuzleaf";
    global.Dex_Sprites[274] = SPR_Nuzleaf;
    global.Dex_Primary_Types[274] = "Grass";
    global.Dex_Secondary_Types[274] = "Dark";
    global.Dex_Portrait[274] = ICO_0274;

    // Pokemon 275 - "Shiftry"
    global.Dex_Names[275] = "Shiftry";
    global.Dex_Sprites[275] = SPR_Shiftry;
    global.Dex_Primary_Types[275] = "Grass";
    global.Dex_Secondary_Types[275] = "Dark";
    global.Dex_Portrait[275] = ICO_0275;

    // Pokemon 276 - "Taillow"
    global.Dex_Names[276] = "Taillow";
    global.Dex_Sprites[276] = SPR_Taillow;
    global.Dex_Primary_Types[276] = "Normal";
    global.Dex_Secondary_Types[276] = "Flying";
    global.Dex_Portrait[276] = ICO_0276;

    // Pokemon 277 - "Swellow"
    global.Dex_Names[277] = "Swellow";
    global.Dex_Sprites[277] = SPR_Swellow;
    global.Dex_Primary_Types[277] = "Normal";
    global.Dex_Secondary_Types[277] = "Flying";
    global.Dex_Portrait[277] = ICO_0277;

    // Pokemon 278 - "Wingull"
    global.Dex_Names[278] = "Wingull";
    global.Dex_Sprites[278] = SPR_Wingull;
    global.Dex_Primary_Types[278] = "Water";
    global.Dex_Secondary_Types[278] = "Flying";
    global.Dex_Portrait[278] = ICO_0278;

    // Pokemon 279 - "Pelipper"
    global.Dex_Names[279] = "Pelipper";
    global.Dex_Sprites[279] = SPR_Pelipper;
    global.Dex_Primary_Types[279] = "Water";
    global.Dex_Secondary_Types[279] = "Flying";
    global.Dex_Portrait[279] = ICO_0279;

    // Pokemon 280 - "Ralts"
    global.Dex_Names[280] = "Ralts";
    global.Dex_Sprites[280] = SPR_Ralts;
    global.Dex_Primary_Types[280] = "Psychic";
    global.Dex_Secondary_Types[280] = "";
    global.Dex_Portrait[280] = ICO_0280;

    // Pokemon 281 - "Kirlia"
    global.Dex_Names[281] = "Kirlia";
    global.Dex_Sprites[281] = SPR_Kirlia;
    global.Dex_Primary_Types[281] = "Psychic";
    global.Dex_Secondary_Types[281] = "";
    global.Dex_Portrait[281] = ICO_0281;

    // Pokemon 282 - "Gardevoir"
    global.Dex_Names[282] = "Gardevoir";
    global.Dex_Sprites[282] = SPR_Gardevoir;
    global.Dex_Primary_Types[282] = "Psychic";
    global.Dex_Secondary_Types[282] = "";
    global.Dex_Portrait[282] = ICO_0282;

    // Pokemon 283 - "Surskit"
    global.Dex_Names[283] = "Surskit";
    global.Dex_Sprites[283] = SPR_Surskit;
    global.Dex_Primary_Types[283] = "Bug";
    global.Dex_Secondary_Types[283] = "Water";
    global.Dex_Portrait[283] = ICO_0283;

    // Pokemon 284 - "Masquerain"
    global.Dex_Names[284] = "Masquerain";
    global.Dex_Sprites[284] = SPR_Masquerain;
    global.Dex_Primary_Types[284] = "Bug";
    global.Dex_Secondary_Types[284] = "Flying";
    global.Dex_Portrait[284] = ICO_0284;

    // Pokemon 285 - "Shroomish"
    global.Dex_Names[285] = "Shroomish";
    global.Dex_Sprites[285] = SPR_Shroomish;
    global.Dex_Primary_Types[285] = "Grass";
    global.Dex_Secondary_Types[285] = "";
    global.Dex_Portrait[285] = ICO_0285;

    // Pokemon 286 - "Breloom"
    global.Dex_Names[286] = "Breloom";
    global.Dex_Sprites[286] = SPR_Breloom;
    global.Dex_Primary_Types[286] = "Grass";
    global.Dex_Secondary_Types[286] = "Fighting";
    global.Dex_Portrait[286] = ICO_0286;

    // Pokemon 287 - "Slakoth"
    global.Dex_Names[287] = "Slakoth";
    global.Dex_Sprites[287] = SPR_Slakoth;
    global.Dex_Primary_Types[287] = "Normal";
    global.Dex_Secondary_Types[287] = "";
    global.Dex_Portrait[287] = ICO_0287;

    // Pokemon 288 - "Vigoroth"
    global.Dex_Names[288] = "Vigoroth";
    global.Dex_Sprites[288] = SPR_Vigoroth;
    global.Dex_Primary_Types[288] = "Normal";
    global.Dex_Secondary_Types[288] = "";
    global.Dex_Portrait[288] = ICO_0288;

    // Pokemon 289 - "Slaking"
    global.Dex_Names[289] = "Slaking";
    global.Dex_Sprites[289] = SPR_Slaking;
    global.Dex_Primary_Types[289] = "Normal";
    global.Dex_Secondary_Types[289] = "";
    global.Dex_Portrait[289] = ICO_0289;

    // Pokemon 290 - "Nincada"
    global.Dex_Names[290] = "Nincada";
    global.Dex_Sprites[290] = SPR_Nincada;
    global.Dex_Primary_Types[290] = "Bug";
    global.Dex_Secondary_Types[290] = "Ground";
    global.Dex_Portrait[290] = ICO_0290;

    // Pokemon 291 - "Ninjask"
    global.Dex_Names[291] = "Ninjask";
    global.Dex_Sprites[291] = SPR_Ninjask;
    global.Dex_Primary_Types[291] = "Bug";
    global.Dex_Secondary_Types[291] = "Flying";
    global.Dex_Portrait[291] = ICO_0291;

    // Pokemon 292 - "Shedinja"
    global.Dex_Names[292] = "Shedinja";
    global.Dex_Sprites[292] = SPR_Shedinja;
    global.Dex_Primary_Types[292] = "Bug";
    global.Dex_Secondary_Types[292] = "Ghost";
    global.Dex_Portrait[292] = ICO_0292;

    // Pokemon 293 - "Whismur"
    global.Dex_Names[293] = "Whismur";
    global.Dex_Sprites[293] = SPR_Whismur;
    global.Dex_Primary_Types[293] = "Normal";
    global.Dex_Secondary_Types[293] = "";
    global.Dex_Portrait[293] = ICO_0293;

    // Pokemon 294 - "Loudred"
    global.Dex_Names[294] = "Loudred";
    global.Dex_Sprites[294] = SPR_Loudred;
    global.Dex_Primary_Types[294] = "Normal";
    global.Dex_Secondary_Types[294] = "";
    global.Dex_Portrait[294] = ICO_0294;

    // Pokemon 295 - "Exploud"
    global.Dex_Names[295] = "Exploud";
    global.Dex_Sprites[295] = SPR_Exploud;
    global.Dex_Primary_Types[295] = "Normal";
    global.Dex_Secondary_Types[295] = "";
    global.Dex_Portrait[295] = ICO_0295;

    // Pokemon 296 - "Makuhita"
    global.Dex_Names[296] = "Makuhita";
    global.Dex_Sprites[296] = SPR_Makuhita;
    global.Dex_Primary_Types[296] = "Fighting";
    global.Dex_Secondary_Types[296] = "";
    global.Dex_Portrait[296] = ICO_0296;

    // Pokemon 297 - "Hariyama"
    global.Dex_Names[297] = "Hariyama";
    global.Dex_Sprites[297] = SPR_Hariyama;
    global.Dex_Primary_Types[297] = "Fighting";
    global.Dex_Secondary_Types[297] = "";
    global.Dex_Portrait[297] = ICO_0297;

    // Pokemon 298 - "Azurill"
    global.Dex_Names[298] = "Azurill";
    global.Dex_Sprites[298] = SPR_Azurill;
    global.Dex_Primary_Types[298] = "Normal";
    global.Dex_Secondary_Types[298] = "";
    global.Dex_Portrait[298] = ICO_0298;

    // Pokemon 299 - "Nosepass"
    global.Dex_Names[299] = "Nosepass";
    global.Dex_Sprites[299] = SPR_Nosepass;
    global.Dex_Primary_Types[299] = "Rock";
    global.Dex_Secondary_Types[299] = "";
    global.Dex_Portrait[299] = ICO_0299;

    // Pokemon 300 - "Skitty"
    global.Dex_Names[300] = "Skitty";
    global.Dex_Sprites[300] = SPR_Skitty;
    global.Dex_Primary_Types[300] = "Normal";
    global.Dex_Secondary_Types[300] = "";
    global.Dex_Portrait[300] = ICO_0300;

    // Pokemon 301 - "Delcatty"
    global.Dex_Names[301] = "Delcatty";
    global.Dex_Sprites[301] = SPR_Delcatty;
    global.Dex_Primary_Types[301] = "Normal";
    global.Dex_Secondary_Types[301] = "";
    global.Dex_Portrait[301] = ICO_0301;

    // Pokemon 302 - "Sableye"
    global.Dex_Names[302] = "Sableye";
    global.Dex_Sprites[302] = SPR_Sableye;
    global.Dex_Primary_Types[302] = "Dark";
    global.Dex_Secondary_Types[302] = "Ghost";
    global.Dex_Portrait[302] = ICO_0302;

    // Pokemon 303 - "Mawile"
    global.Dex_Names[303] = "Mawile";
    global.Dex_Sprites[303] = SPR_Mawile;
    global.Dex_Primary_Types[303] = "Steel";
    global.Dex_Secondary_Types[303] = "";
    global.Dex_Portrait[303] = ICO_0303;

    // Pokemon 304 - "Aron"
    global.Dex_Names[304] = "Aron";
    global.Dex_Sprites[304] = SPR_Aron;
    global.Dex_Primary_Types[304] = "Steel";
    global.Dex_Secondary_Types[304] = "Rock";
    global.Dex_Portrait[304] = ICO_0304;

    // Pokemon 305 - "Lairon"
    global.Dex_Names[305] = "Lairon";
    global.Dex_Sprites[305] = SPR_Lairon;
    global.Dex_Primary_Types[305] = "Steel";
    global.Dex_Secondary_Types[305] = "Rock";
    global.Dex_Portrait[305] = ICO_0305;

    // Pokemon 306 - "Aggron"
    global.Dex_Names[306] = "Aggron";
    global.Dex_Sprites[306] = SPR_Aggron;
    global.Dex_Primary_Types[306] = "Steel";
    global.Dex_Secondary_Types[306] = "Rock";
    global.Dex_Portrait[306] = ICO_0306;

    // Pokemon 307 - "Meditite"
    global.Dex_Names[307] = "Meditite";
    global.Dex_Sprites[307] = SPR_Meditite;
    global.Dex_Primary_Types[307] = "Fighting";
    global.Dex_Secondary_Types[307] = "Psychic";
    global.Dex_Portrait[307] = ICO_0307;

    // Pokemon 308 - "Medicham"
    global.Dex_Names[308] = "Medicham";
    global.Dex_Sprites[308] = SPR_Medicham;
    global.Dex_Primary_Types[308] = "Fighting";
    global.Dex_Secondary_Types[308] = "Psychic";
    global.Dex_Portrait[308] = ICO_0308;

    // Pokemon 309 - "Electrike"
    global.Dex_Names[309] = "Electrike";
    global.Dex_Sprites[309] = SPR_Electrike;
    global.Dex_Primary_Types[309] = "Electric";
    global.Dex_Secondary_Types[309] = "";
    global.Dex_Portrait[309] = ICO_0309;

    // Pokemon 310 - "Manectric"
    global.Dex_Names[310] = "Manectric";
    global.Dex_Sprites[310] = SPR_Manectric;
    global.Dex_Primary_Types[310] = "Electric";
    global.Dex_Secondary_Types[310] = "";
    global.Dex_Portrait[310] = ICO_0310;

    // Pokemon 311 - "Plusle"
    global.Dex_Names[311] = "Plusle";
    global.Dex_Sprites[311] = SPR_Plusle;
    global.Dex_Primary_Types[311] = "Electric";
    global.Dex_Secondary_Types[311] = "";
    global.Dex_Portrait[311] = ICO_0311;

    // Pokemon 312 - "Minun"
    global.Dex_Names[312] = "Minun";
    global.Dex_Sprites[312] = SPR_Minun;
    global.Dex_Primary_Types[312] = "Electric";
    global.Dex_Secondary_Types[312] = "";
    global.Dex_Portrait[312] = ICO_0312;

    // Pokemon 313 - "Volbeat"
    global.Dex_Names[313] = "Volbeat";
    global.Dex_Sprites[313] = SPR_Volbeat;
    global.Dex_Primary_Types[313] = "Bug";
    global.Dex_Secondary_Types[313] = "";
    global.Dex_Portrait[313] = ICO_0313;

    // Pokemon 314 - "Illumise"
    global.Dex_Names[314] = "Illumise";
    global.Dex_Sprites[314] = SPR_Illumise;
    global.Dex_Primary_Types[314] = "Bug";
    global.Dex_Secondary_Types[314] = "";
    global.Dex_Portrait[314] = ICO_0314;

    // Pokemon 315 - "Roselia"
    global.Dex_Names[315] = "Roselia";
    global.Dex_Sprites[315] = SPR_Roselia;
    global.Dex_Primary_Types[315] = "Grass";
    global.Dex_Secondary_Types[315] = "Poison";
    global.Dex_Portrait[315] = ICO_0315;

    // Pokemon 316 - "Gulpin"
    global.Dex_Names[316] = "Gulpin";
    global.Dex_Sprites[316] = SPR_Gulpin;
    global.Dex_Primary_Types[316] = "Poison";
    global.Dex_Secondary_Types[316] = "";
    global.Dex_Portrait[316] = ICO_0316;

    // Pokemon 317 - "Swalot"
    global.Dex_Names[317] = "Swalot";
    global.Dex_Sprites[317] = SPR_Swalot;
    global.Dex_Primary_Types[317] = "Poison";
    global.Dex_Secondary_Types[317] = "";
    global.Dex_Portrait[317] = ICO_0317;

    // Pokemon 318 - "Carvanha"
    global.Dex_Names[318] = "Carvanha";
    global.Dex_Sprites[318] = SPR_Carvanha;
    global.Dex_Primary_Types[318] = "Water";
    global.Dex_Secondary_Types[318] = "Dark";
    global.Dex_Portrait[318] = ICO_0318;

    // Pokemon 319 - "Sharpedo"
    global.Dex_Names[319] = "Sharpedo";
    global.Dex_Sprites[319] = SPR_Sharpedo;
    global.Dex_Primary_Types[319] = "Water";
    global.Dex_Secondary_Types[319] = "Dark";
    global.Dex_Portrait[319] = ICO_0319;

    // Pokemon 320 - "Wailmer"
    global.Dex_Names[320] = "Wailmer";
    global.Dex_Sprites[320] = SPR_Wailmer;
    global.Dex_Primary_Types[320] = "Water";
    global.Dex_Secondary_Types[320] = "";
    global.Dex_Portrait[320] = ICO_0320;

    // Pokemon 321 - "Wailord"
    global.Dex_Names[321] = "Wailord";
    global.Dex_Sprites[321] = SPR_Wailord;
    global.Dex_Primary_Types[321] = "Water";
    global.Dex_Secondary_Types[321] = "";
    global.Dex_Portrait[321] = ICO_0321;

    // Pokemon 322 - "Numel"
    global.Dex_Names[322] = "Numel";
    global.Dex_Sprites[322] = SPR_Numel;
    global.Dex_Primary_Types[322] = "Fire";
    global.Dex_Secondary_Types[322] = "Ground";
    global.Dex_Portrait[322] = ICO_0322;

    // Pokemon 323 - "Camerupt"
    global.Dex_Names[323] = "Camerupt";
    global.Dex_Sprites[323] = SPR_Camerupt;
    global.Dex_Primary_Types[323] = "Fire";
    global.Dex_Secondary_Types[323] = "Ground";
    global.Dex_Portrait[323] = ICO_0323;

    // Pokemon 324 - "Torkoal"
    global.Dex_Names[324] = "Torkoal";
    global.Dex_Sprites[324] = SPR_Torkoal;
    global.Dex_Primary_Types[324] = "Fire";
    global.Dex_Secondary_Types[324] = "";
    global.Dex_Portrait[324] = ICO_0324;

    // Pokemon 325 - "Spoink"
    global.Dex_Names[325] = "Spoink";
    global.Dex_Sprites[325] = SPR_Spoink;
    global.Dex_Primary_Types[325] = "Psychic";
    global.Dex_Secondary_Types[325] = "";
    global.Dex_Portrait[325] = ICO_0325;

    // Pokemon 326 - "Grumpig"
    global.Dex_Names[326] = "Grumpig";
    global.Dex_Sprites[326] = SPR_Grumpig;
    global.Dex_Primary_Types[326] = "Psychic";
    global.Dex_Secondary_Types[326] = "";
    global.Dex_Portrait[326] = ICO_0326;

    // Pokemon 327 - "Spinda"
    global.Dex_Names[327] = "Spinda";
    global.Dex_Sprites[327] = SPR_Spinda;
    global.Dex_Primary_Types[327] = "Normal";
    global.Dex_Secondary_Types[327] = "";
    global.Dex_Portrait[327] = ICO_0327;

    // Pokemon 328 - "Trapinch"
    global.Dex_Names[328] = "Trapinch";
    global.Dex_Sprites[328] = SPR_Trapinch;
    global.Dex_Primary_Types[328] = "Ground";
    global.Dex_Secondary_Types[328] = "";
    global.Dex_Portrait[328] = ICO_0328;

    // Pokemon 329 - "Vibrava"
    global.Dex_Names[329] = "Vibrava";
    global.Dex_Sprites[329] = SPR_Vibrava;
    global.Dex_Primary_Types[329] = "Ground";
    global.Dex_Secondary_Types[329] = "Dragon";
    global.Dex_Portrait[329] = ICO_0329;

    // Pokemon 330 - "Flygon"
    global.Dex_Names[330] = "Flygon";
    global.Dex_Sprites[330] = SPR_Flygon;
    global.Dex_Primary_Types[330] = "Ground";
    global.Dex_Secondary_Types[330] = "Dragon";
    global.Dex_Portrait[330] = ICO_0330;

    // Pokemon 331 - "Cacnea"
    global.Dex_Names[331] = "Cacnea";
    global.Dex_Sprites[331] = SPR_Cacnea;
    global.Dex_Primary_Types[331] = "Grass";
    global.Dex_Secondary_Types[331] = "";
    global.Dex_Portrait[331] = ICO_0331;

    // Pokemon 332 - "Cacturne"
    global.Dex_Names[332] = "Cacturne";
    global.Dex_Sprites[332] = SPR_Cacturne;
    global.Dex_Primary_Types[332] = "Grass";
    global.Dex_Secondary_Types[332] = "Dark";
    global.Dex_Portrait[332] = ICO_0332;

    // Pokemon 333 - "Swablu"
    global.Dex_Names[333] = "Swablu";
    global.Dex_Sprites[333] = SPR_Swablu;
    global.Dex_Primary_Types[333] = "Normal";
    global.Dex_Secondary_Types[333] = "Flying";
    global.Dex_Portrait[333] = ICO_0333;

    // Pokemon 334 - "Altaria"
    global.Dex_Names[334] = "Altaria";
    global.Dex_Sprites[334] = SPR_Altaria;
    global.Dex_Primary_Types[334] = "Dragon";
    global.Dex_Secondary_Types[334] = "Flying";
    global.Dex_Portrait[334] = ICO_0334;

    // Pokemon 335 - "Zangoose"
    global.Dex_Names[335] = "Zangoose";
    global.Dex_Sprites[335] = SPR_Zangoose;
    global.Dex_Primary_Types[335] = "Normal";
    global.Dex_Secondary_Types[335] = "";
    global.Dex_Portrait[335] = ICO_0335;

    // Pokemon 336 - "Seviper"
    global.Dex_Names[336] = "Seviper";
    global.Dex_Sprites[336] = SPR_Seviper;
    global.Dex_Primary_Types[336] = "Poison";
    global.Dex_Secondary_Types[336] = "";
    global.Dex_Portrait[336] = ICO_0336;

    // Pokemon 337 - "Lunatone"
    global.Dex_Names[337] = "Lunatone";
    global.Dex_Sprites[337] = SPR_Lunatone;
    global.Dex_Primary_Types[337] = "Rock";
    global.Dex_Secondary_Types[337] = "Psychic";
    global.Dex_Portrait[337] = ICO_0337;

    // Pokemon 338 - "Solrock"
    global.Dex_Names[338] = "Solrock";
    global.Dex_Sprites[338] = SPR_Solrock;
    global.Dex_Primary_Types[338] = "Rock";
    global.Dex_Secondary_Types[338] = "Psychic";
    global.Dex_Portrait[338] = ICO_0338;

    // Pokemon 339 - "Barboach"
    global.Dex_Names[339] = "Barboach";
    global.Dex_Sprites[339] = SPR_Barboach;
    global.Dex_Primary_Types[339] = "Water";
    global.Dex_Secondary_Types[339] = "Ground";
    global.Dex_Portrait[339] = ICO_0339;

    // Pokemon 340 - "Whiscash"
    global.Dex_Names[340] = "Whiscash";
    global.Dex_Sprites[340] = SPR_Whiscash;
    global.Dex_Primary_Types[340] = "Water";
    global.Dex_Secondary_Types[340] = "Ground";
    global.Dex_Portrait[340] = ICO_0340;

    // Pokemon 341 - "Corphish"
    global.Dex_Names[341] = "Corphish";
    global.Dex_Sprites[341] = SPR_Corphish;
    global.Dex_Primary_Types[341] = "Water";
    global.Dex_Secondary_Types[341] = "";
    global.Dex_Portrait[341] = ICO_0341;

    // Pokemon 342 - "Crawdaunt"
    global.Dex_Names[342] = "Crawdaunt";
    global.Dex_Sprites[342] = SPR_Crawdaunt;
    global.Dex_Primary_Types[342] = "Water";
    global.Dex_Secondary_Types[342] = "Dark";
    global.Dex_Portrait[342] = ICO_0342;

    // Pokemon 343 - "Baltoy"
    global.Dex_Names[343] = "Baltoy";
    global.Dex_Sprites[343] = SPR_Baltoy;
    global.Dex_Primary_Types[343] = "Ground";
    global.Dex_Secondary_Types[343] = "Psychic";
    global.Dex_Portrait[343] = ICO_0343;

    // Pokemon 344 - "Claydol"
    global.Dex_Names[344] = "Claydol";
    global.Dex_Sprites[344] = SPR_Claydol;
    global.Dex_Primary_Types[344] = "Ground";
    global.Dex_Secondary_Types[344] = "Psychic";
    global.Dex_Portrait[344] = ICO_0344;

    // Pokemon 345 - "Lileep"
    global.Dex_Names[345] = "Lileep";
    global.Dex_Sprites[345] = SPR_Lileep;
    global.Dex_Primary_Types[345] = "Rock";
    global.Dex_Secondary_Types[345] = "Grass";
    global.Dex_Portrait[345] = ICO_0345;

    // Pokemon 346 - "Cradily"
    global.Dex_Names[346] = "Cradily";
    global.Dex_Sprites[346] = SPR_Cradily;
    global.Dex_Primary_Types[346] = "Rock";
    global.Dex_Secondary_Types[346] = "Grass";
    global.Dex_Portrait[346] = ICO_0346;

    // Pokemon 347 - "Anorith"
    global.Dex_Names[347] = "Anorith";
    global.Dex_Sprites[347] = SPR_Anorith;
    global.Dex_Primary_Types[347] = "Rock";
    global.Dex_Secondary_Types[347] = "Bug";
    global.Dex_Portrait[347] = ICO_0347;

    // Pokemon 348 - "Armaldo"
    global.Dex_Names[348] = "Armaldo";
    global.Dex_Sprites[348] = SPR_Armaldo;
    global.Dex_Primary_Types[348] = "Rock";
    global.Dex_Secondary_Types[348] = "Bug";
    global.Dex_Portrait[348] = ICO_0348;

    // Pokemon 349 - "Feebas"
    global.Dex_Names[349] = "Feebas";
    global.Dex_Sprites[349] = SPR_Feebas;
    global.Dex_Primary_Types[349] = "Water";
    global.Dex_Secondary_Types[349] = "";
    global.Dex_Portrait[349] = ICO_0349;

    // Pokemon 350 - "Milotic"
    global.Dex_Names[350] = "Milotic";
    global.Dex_Sprites[350] = SPR_Milotic;
    global.Dex_Primary_Types[350] = "Water";
    global.Dex_Secondary_Types[350] = "";
    global.Dex_Portrait[350] = ICO_0350;

    // Pokemon 351 - "Castform"
    global.Dex_Names[351] = "Castform";
    global.Dex_Sprites[351] = SPR_Castform;
    global.Dex_Primary_Types[351] = "Normal";
    global.Dex_Secondary_Types[351] = "";
    global.Dex_Portrait[351] = ICO_0351;

    // Pokemon 352 - "Kecleon"
    global.Dex_Names[352] = "Kecleon";
    global.Dex_Sprites[352] = SPR_Kecleon;
    global.Dex_Primary_Types[352] = "Normal";
    global.Dex_Secondary_Types[352] = "";
    global.Dex_Portrait[352] = ICO_0352;

    // Pokemon 353 - "Shuppet"
    global.Dex_Names[353] = "Shuppet";
    global.Dex_Sprites[353] = SPR_Shuppet;
    global.Dex_Primary_Types[353] = "Ghost";
    global.Dex_Secondary_Types[353] = "";
    global.Dex_Portrait[353] = ICO_0353;

    // Pokemon 354 - "Banette"
    global.Dex_Names[354] = "Banette";
    global.Dex_Sprites[354] = SPR_Banette;
    global.Dex_Primary_Types[354] = "Ghost";
    global.Dex_Secondary_Types[354] = "";
    global.Dex_Portrait[354] = ICO_0354;

    // Pokemon 355 - "Duskull"
    global.Dex_Names[355] = "Duskull";
    global.Dex_Sprites[355] = SPR_Duskull;
    global.Dex_Primary_Types[355] = "Ghost";
    global.Dex_Secondary_Types[355] = "";
    global.Dex_Portrait[355] = ICO_0355;

    // Pokemon 356 - "Dusclops"
    global.Dex_Names[356] = "Dusclops";
    global.Dex_Sprites[356] = SPR_Dusclops;
    global.Dex_Primary_Types[356] = "Ghost";
    global.Dex_Secondary_Types[356] = "";
    global.Dex_Portrait[356] = ICO_0356;

    // Pokemon 357 - "Tropius"
    global.Dex_Names[357] = "Tropius";
    global.Dex_Sprites[357] = SPR_Tropius;
    global.Dex_Primary_Types[357] = "Grass";
    global.Dex_Secondary_Types[357] = "Flying";
    global.Dex_Portrait[357] = ICO_0357;

    // Pokemon 358 - "Chimecho"
    global.Dex_Names[358] = "Chimecho";
    global.Dex_Sprites[358] = SPR_Chimecho;
    global.Dex_Primary_Types[358] = "Psychic";
    global.Dex_Secondary_Types[358] = "";
    global.Dex_Portrait[358] = ICO_0358;

    // Pokemon 359 - "Absol"
    global.Dex_Names[359] = "Absol";
    global.Dex_Sprites[359] = SPR_Absol;
    global.Dex_Primary_Types[359] = "Dark";
    global.Dex_Secondary_Types[359] = "";
    global.Dex_Portrait[359] = ICO_0359;

    // Pokemon 360 - "Wynaut"
    global.Dex_Names[360] = "Wynaut";
    global.Dex_Sprites[360] = SPR_Wynaut;
    global.Dex_Primary_Types[360] = "Psychic";
    global.Dex_Secondary_Types[360] = "";
    global.Dex_Portrait[360] = ICO_0360;

    // Pokemon 361 - "Snorunt"
    global.Dex_Names[361] = "Snorunt";
    global.Dex_Sprites[361] = SPR_Snorunt;
    global.Dex_Primary_Types[361] = "Ice";
    global.Dex_Secondary_Types[361] = "";
    global.Dex_Portrait[361] = ICO_0361;

    // Pokemon 362 - "Glalie"
    global.Dex_Names[362] = "Glalie";
    global.Dex_Sprites[362] = SPR_Glalie;
    global.Dex_Primary_Types[362] = "Ice";
    global.Dex_Secondary_Types[362] = "";
    global.Dex_Portrait[362] = ICO_0362;

    // Pokemon 363 - "Spheal"
    global.Dex_Names[363] = "Spheal";
    global.Dex_Sprites[363] = SPR_Spheal;
    global.Dex_Primary_Types[363] = "Ice";
    global.Dex_Secondary_Types[363] = "Water";
    global.Dex_Portrait[363] = ICO_0363;

    // Pokemon 364 - "Sealeo"
    global.Dex_Names[364] = "Sealeo";
    global.Dex_Sprites[364] = SPR_Sealeo;
    global.Dex_Primary_Types[364] = "Ice";
    global.Dex_Secondary_Types[364] = "Water";
    global.Dex_Portrait[364] = ICO_0364;

    // Pokemon 365 - "Walrein"
    global.Dex_Names[365] = "Walrein";
    global.Dex_Sprites[365] = SPR_Walrein;
    global.Dex_Primary_Types[365] = "Ice";
    global.Dex_Secondary_Types[365] = "Water";
    global.Dex_Portrait[365] = ICO_0365;

    // Pokemon 366 - "Clamperl"
    global.Dex_Names[366] = "Clamperl";
    global.Dex_Sprites[366] = SPR_Clamperl;
    global.Dex_Primary_Types[366] = "Water";
    global.Dex_Secondary_Types[366] = "";
    global.Dex_Portrait[366] = ICO_0366;

    // Pokemon 367 - "Huntail"
    global.Dex_Names[367] = "Huntail";
    global.Dex_Sprites[367] = SPR_Huntail;
    global.Dex_Primary_Types[367] = "Water";
    global.Dex_Secondary_Types[367] = "";
    global.Dex_Portrait[367] = ICO_0367;

    // Pokemon 368 - "Gorebyss"
    global.Dex_Names[368] = "Gorebyss";
    global.Dex_Sprites[368] = SPR_Gorebyss;
    global.Dex_Primary_Types[368] = "Water";
    global.Dex_Secondary_Types[368] = "";
    global.Dex_Portrait[368] = ICO_0368;

    // Pokemon 369 - "Relicanth"
    global.Dex_Names[369] = "Relicanth";
    global.Dex_Sprites[369] = SPR_Relicanth;
    global.Dex_Primary_Types[369] = "Water";
    global.Dex_Secondary_Types[369] = "Rock";
    global.Dex_Portrait[369] = ICO_0369;

    // Pokemon 370 - "Luvdisc"
    global.Dex_Names[370] = "Luvdisc";
    global.Dex_Sprites[370] = SPR_Luvdisc;
    global.Dex_Primary_Types[370] = "Water";
    global.Dex_Secondary_Types[370] = "";
    global.Dex_Portrait[370] = ICO_0370;

    // Pokemon 371 - "Bagon"
    global.Dex_Names[371] = "Bagon";
    global.Dex_Sprites[371] = SPR_Bagon;
    global.Dex_Primary_Types[371] = "Dragon";
    global.Dex_Secondary_Types[371] = "";
    global.Dex_Portrait[371] = ICO_0371;

    // Pokemon 372 - "Shelgon"
    global.Dex_Names[372] = "Shelgon";
    global.Dex_Sprites[372] = SPR_Shelgon;
    global.Dex_Primary_Types[372] = "Dragon";
    global.Dex_Secondary_Types[372] = "";
    global.Dex_Portrait[372] = ICO_0372;

    // Pokemon 373 - "Salamence"
    global.Dex_Names[373] = "Salamence";
    global.Dex_Sprites[373] = SPR_Salamence;
    global.Dex_Primary_Types[373] = "Dragon";
    global.Dex_Secondary_Types[373] = "Flying";
    global.Dex_Portrait[373] = ICO_0373;

    // Pokemon 374 - "Beldum"
    global.Dex_Names[374] = "Beldum";
    global.Dex_Sprites[374] = SPR_Beldum;
    global.Dex_Primary_Types[374] = "Steel";
    global.Dex_Secondary_Types[374] = "Psychic";
    global.Dex_Portrait[374] = ICO_0374;

    // Pokemon 375 - "Metang"
    global.Dex_Names[375] = "Metang";
    global.Dex_Sprites[375] = SPR_Metang;
    global.Dex_Primary_Types[375] = "Steel";
    global.Dex_Secondary_Types[375] = "Psychic";
    global.Dex_Portrait[375] = ICO_0375;

    // Pokemon 376 - "Metagross"
    global.Dex_Names[376] = "Metagross";
    global.Dex_Sprites[376] = SPR_Metagross;
    global.Dex_Primary_Types[376] = "Steel";
    global.Dex_Secondary_Types[376] = "Psychic";
    global.Dex_Portrait[376] = ICO_0376;

    // Pokemon 377 - "Regirock"
    global.Dex_Names[377] = "Regirock";
    global.Dex_Sprites[377] = SPR_Regirock;
    global.Dex_Primary_Types[377] = "Rock";
    global.Dex_Secondary_Types[377] = "";
    global.Dex_Portrait[377] = ICO_0377;

    // Pokemon 378 - "Regice"
    global.Dex_Names[378] = "Regice";
    global.Dex_Sprites[378] = SPR_Regice;
    global.Dex_Primary_Types[378] = "Ice";
    global.Dex_Secondary_Types[378] = "";
    global.Dex_Portrait[378] = ICO_0378;

    // Pokemon 379 - "Registeel"
    global.Dex_Names[379] = "Registeel";
    global.Dex_Sprites[379] = SPR_Registeel;
    global.Dex_Primary_Types[379] = "Steel";
    global.Dex_Secondary_Types[379] = "";
    global.Dex_Portrait[379] = ICO_0379;

    // Pokemon 380 - "Latias"
    global.Dex_Names[380] = "Latias";
    global.Dex_Sprites[380] = SPR_Latias;
    global.Dex_Primary_Types[380] = "Dragon";
    global.Dex_Secondary_Types[380] = "Psychic";
    global.Dex_Portrait[380] = ICO_0380;

    // Pokemon 381 - "Latios"
    global.Dex_Names[381] = "Latios";
    global.Dex_Sprites[381] = SPR_Latios;
    global.Dex_Primary_Types[381] = "Dragon";
    global.Dex_Secondary_Types[381] = "Psychic";
    global.Dex_Portrait[381] = ICO_0381;

    // Pokemon 382 - "Kyogre"
    global.Dex_Names[382] = "Kyogre";
    global.Dex_Sprites[382] = SPR_Kyogre;
    global.Dex_Primary_Types[382] = "Water";
    global.Dex_Secondary_Types[382] = "";
    global.Dex_Portrait[382] = ICO_0382;

    // Pokemon 383 - "Groudon"
    global.Dex_Names[383] = "Groudon";
    global.Dex_Sprites[383] = SPR_Groudon;
    global.Dex_Primary_Types[383] = "Ground";
    global.Dex_Secondary_Types[383] = "";
    global.Dex_Portrait[383] = ICO_0383;

    // Pokemon 384 - "Rayquaza"
    global.Dex_Names[384] = "Rayquaza";
    global.Dex_Sprites[384] = SPR_Rayquaza;
    global.Dex_Primary_Types[384] = "Dragon";
    global.Dex_Secondary_Types[384] = "Flying";
    global.Dex_Portrait[384] = ICO_0384;

    // Pokemon 385 - "Jirachi"
    global.Dex_Names[385] = "Jirachi";
    global.Dex_Sprites[385] = SPR_Jirachi;
    global.Dex_Primary_Types[385] = "Steel";
    global.Dex_Secondary_Types[385] = "Psychic";
    global.Dex_Portrait[385] = ICO_0385;

    // Pokemon 386 - "Deoxys"
    global.Dex_Names[386] = "Deoxys";
    global.Dex_Sprites[386] = SPR_Deoxys;
    global.Dex_Primary_Types[386] = "Psychic";
    global.Dex_Secondary_Types[386] = "";
    global.Dex_Portrait[386] = ICO_0386;
}