/*
 * SCR_Pokemon_Evolution_Gen3.gml
 * 
 * POKEMON DATA MODULE - Generation 3 Evolution & Breeding
 * 
 * This script initializes Generation 3 Pokemon evolution and breeding data (IDs 252-386):
 * - Evolution levels (-1 for final evolutions)
 * - Egg hatching availability ("True" or "False")
 * 
 * Uses original Pokedex structure for maximum clarity and consistency.
 * 
 * EDITING GUIDELINES:
 * - Pokemon are in sequential order (252, 253, 254, 255...)
 * - Use -1 for Pokemon that don't evolve (final forms)
 * - Use "True" for Pokemon that can hatch from eggs
 * - Use "False" for Pokemon that cannot hatch from eggs
 * 
 * CREATED: September 2025
 * POKEMON COUNT: 135 (Hoenn Region)
 * PURPOSE: Generation 3 Pokemon implementation for F-025
 */

function SCR_Pokemon_Evolution_Gen3() {
    // Pokemon 252 - "Treecko"
    global.Dex_Evolve_Level[252] = 16;
    global.Dex_Hatching[252] = "True";

    // Pokemon 253 - "Grovyle"
    global.Dex_Evolve_Level[253] = 36;
    global.Dex_Hatching[253] = "False";

    // Pokemon 254 - "Sceptile"
    global.Dex_Evolve_Level[254] = -1;
    global.Dex_Hatching[254] = "False";

    // Pokemon 255 - "Torchic"
    global.Dex_Evolve_Level[255] = 16;
    global.Dex_Hatching[255] = "True";

    // Pokemon 256 - "Combusken"
    global.Dex_Evolve_Level[256] = 36;
    global.Dex_Hatching[256] = "False";

    // Pokemon 257 - "Blaziken"
    global.Dex_Evolve_Level[257] = -1;
    global.Dex_Hatching[257] = "False";

    // Pokemon 258 - "Mudkip"
    global.Dex_Evolve_Level[258] = 16;
    global.Dex_Hatching[258] = "True";

    // Pokemon 259 - "Marshtomp"
    global.Dex_Evolve_Level[259] = 36;
    global.Dex_Hatching[259] = "False";

    // Pokemon 260 - "Swampert"
    global.Dex_Evolve_Level[260] = -1;
    global.Dex_Hatching[260] = "False";

    // Pokemon 261 - "Poochyena"
    global.Dex_Evolve_Level[261] = 18;
    global.Dex_Hatching[261] = "True";

    // Pokemon 262 - "Mightyena"
    global.Dex_Evolve_Level[262] = -1;
    global.Dex_Hatching[262] = "False";

    // Pokemon 263 - "Zigzagoon"
    global.Dex_Evolve_Level[263] = 20;
    global.Dex_Hatching[263] = "True";

    // Pokemon 264 - "Linoone"
    global.Dex_Evolve_Level[264] = -1;
    global.Dex_Hatching[264] = "False";

    // Pokemon 265 - "Wurmple"
    global.Dex_Evolve_Level[265] = 7;
    global.Dex_Hatching[265] = "True";

    // Pokemon 266 - "Silcoon"
    global.Dex_Evolve_Level[266] = 10;
    global.Dex_Hatching[266] = "False";

    // Pokemon 267 - "Beautifly"
    global.Dex_Evolve_Level[267] = -1;
    global.Dex_Hatching[267] = "False";

    // Pokemon 268 - "Cascoon"
    global.Dex_Evolve_Level[268] = 10;
    global.Dex_Hatching[268] = "False";

    // Pokemon 269 - "Dustox"
    global.Dex_Evolve_Level[269] = -1;
    global.Dex_Hatching[269] = "False";

    // Pokemon 270 - "Lotad"
    global.Dex_Evolve_Level[270] = 14;
    global.Dex_Hatching[270] = "True";

    // Pokemon 271 - "Lombre"
    global.Dex_Evolve_Level[271] = -1;
    global.Dex_Hatching[271] = "False";

    // Pokemon 272 - "Ludicolo"
    global.Dex_Evolve_Level[272] = -1;
    global.Dex_Hatching[272] = "False";

    // Pokemon 273 - "Seedot"
    global.Dex_Evolve_Level[273] = 14;
    global.Dex_Hatching[273] = "True";

    // Pokemon 274 - "Nuzleaf"
    global.Dex_Evolve_Level[274] = -1;
    global.Dex_Hatching[274] = "False";

    // Pokemon 275 - "Shiftry"
    global.Dex_Evolve_Level[275] = -1;
    global.Dex_Hatching[275] = "False";

    // Pokemon 276 - "Taillow"
    global.Dex_Evolve_Level[276] = 22;
    global.Dex_Hatching[276] = "True";

    // Pokemon 277 - "Swellow"
    global.Dex_Evolve_Level[277] = -1;
    global.Dex_Hatching[277] = "False";

    // Pokemon 278 - "Wingull"
    global.Dex_Evolve_Level[278] = 25;
    global.Dex_Hatching[278] = "True";

    // Pokemon 279 - "Pelipper"
    global.Dex_Evolve_Level[279] = -1;
    global.Dex_Hatching[279] = "False";

    // Pokemon 280 - "Ralts"
    global.Dex_Evolve_Level[280] = 20;
    global.Dex_Hatching[280] = "True";

    // Pokemon 281 - "Kirlia"
    global.Dex_Evolve_Level[281] = 30;
    global.Dex_Hatching[281] = "False";

    // Pokemon 282 - "Gardevoir"
    global.Dex_Evolve_Level[282] = -1;
    global.Dex_Hatching[282] = "False";

    // Pokemon 283 - "Surskit"
    global.Dex_Evolve_Level[283] = 22;
    global.Dex_Hatching[283] = "True";

    // Pokemon 284 - "Masquerain"
    global.Dex_Evolve_Level[284] = -1;
    global.Dex_Hatching[284] = "False";

    // Pokemon 285 - "Shroomish"
    global.Dex_Evolve_Level[285] = 23;
    global.Dex_Hatching[285] = "True";

    // Pokemon 286 - "Breloom"
    global.Dex_Evolve_Level[286] = -1;
    global.Dex_Hatching[286] = "False";

    // Pokemon 287 - "Slakoth"
    global.Dex_Evolve_Level[287] = 18;
    global.Dex_Hatching[287] = "True";

    // Pokemon 288 - "Vigoroth"
    global.Dex_Evolve_Level[288] = 36;
    global.Dex_Hatching[288] = "False";

    // Pokemon 289 - "Slaking"
    global.Dex_Evolve_Level[289] = -1;
    global.Dex_Hatching[289] = "False";

    // Pokemon 290 - "Nincada"
    global.Dex_Evolve_Level[290] = 20;
    global.Dex_Hatching[290] = "True";

    // Pokemon 291 - "Ninjask"
    global.Dex_Evolve_Level[291] = -1;
    global.Dex_Hatching[291] = "False";

    // Pokemon 292 - "Shedinja"
    global.Dex_Evolve_Level[292] = -1;
    global.Dex_Hatching[292] = "False";

    // Pokemon 293 - "Whismur"
    global.Dex_Evolve_Level[293] = 20;
    global.Dex_Hatching[293] = "True";

    // Pokemon 294 - "Loudred"
    global.Dex_Evolve_Level[294] = 40;
    global.Dex_Hatching[294] = "False";

    // Pokemon 295 - "Exploud"
    global.Dex_Evolve_Level[295] = -1;
    global.Dex_Hatching[295] = "False";

    // Pokemon 296 - "Makuhita"
    global.Dex_Evolve_Level[296] = 24;
    global.Dex_Hatching[296] = "True";

    // Pokemon 297 - "Hariyama"
    global.Dex_Evolve_Level[297] = -1;
    global.Dex_Hatching[297] = "False";

    // Pokemon 298 - "Azurill"
    global.Dex_Evolve_Level[298] = -1;
    global.Dex_Hatching[298] = "True";

    // Pokemon 299 - "Nosepass"
    global.Dex_Evolve_Level[299] = -1;
    global.Dex_Hatching[299] = "True";

    // Pokemon 300 - "Skitty"
    global.Dex_Evolve_Level[300] = -1;
    global.Dex_Hatching[300] = "True";

    // Pokemon 301 - "Delcatty"
    global.Dex_Evolve_Level[301] = -1;
    global.Dex_Hatching[301] = "False";

    // Pokemon 302 - "Sableye"
    global.Dex_Evolve_Level[302] = -1;
    global.Dex_Hatching[302] = "True";

    // Pokemon 303 - "Mawile"
    global.Dex_Evolve_Level[303] = -1;
    global.Dex_Hatching[303] = "True";

    // Pokemon 304 - "Aron"
    global.Dex_Evolve_Level[304] = 32;
    global.Dex_Hatching[304] = "True";

    // Pokemon 305 - "Lairon"
    global.Dex_Evolve_Level[305] = 42;
    global.Dex_Hatching[305] = "False";

    // Pokemon 306 - "Aggron"
    global.Dex_Evolve_Level[306] = -1;
    global.Dex_Hatching[306] = "False";

    // Pokemon 307 - "Meditite"
    global.Dex_Evolve_Level[307] = 37;
    global.Dex_Hatching[307] = "True";

    // Pokemon 308 - "Medicham"
    global.Dex_Evolve_Level[308] = -1;
    global.Dex_Hatching[308] = "False";

    // Pokemon 309 - "Electrike"
    global.Dex_Evolve_Level[309] = 26;
    global.Dex_Hatching[309] = "True";

    // Pokemon 310 - "Manectric"
    global.Dex_Evolve_Level[310] = -1;
    global.Dex_Hatching[310] = "False";

    // Pokemon 311 - "Plusle"
    global.Dex_Evolve_Level[311] = -1;
    global.Dex_Hatching[311] = "True";

    // Pokemon 312 - "Minun"
    global.Dex_Evolve_Level[312] = -1;
    global.Dex_Hatching[312] = "True";

    // Pokemon 313 - "Volbeat"
    global.Dex_Evolve_Level[313] = -1;
    global.Dex_Hatching[313] = "True";

    // Pokemon 314 - "Illumise"
    global.Dex_Evolve_Level[314] = -1;
    global.Dex_Hatching[314] = "True";

    // Pokemon 315 - "Roselia"
    global.Dex_Evolve_Level[315] = -1;
    global.Dex_Hatching[315] = "True";

    // Pokemon 316 - "Gulpin"
    global.Dex_Evolve_Level[316] = 26;
    global.Dex_Hatching[316] = "True";

    // Pokemon 317 - "Swalot"
    global.Dex_Evolve_Level[317] = -1;
    global.Dex_Hatching[317] = "False";

    // Pokemon 318 - "Carvanha"
    global.Dex_Evolve_Level[318] = 30;
    global.Dex_Hatching[318] = "True";

    // Pokemon 319 - "Sharpedo"
    global.Dex_Evolve_Level[319] = -1;
    global.Dex_Hatching[319] = "False";

    // Pokemon 320 - "Wailmer"
    global.Dex_Evolve_Level[320] = 40;
    global.Dex_Hatching[320] = "True";

    // Pokemon 321 - "Wailord"
    global.Dex_Evolve_Level[321] = -1;
    global.Dex_Hatching[321] = "False";

    // Pokemon 322 - "Numel"
    global.Dex_Evolve_Level[322] = 33;
    global.Dex_Hatching[322] = "True";

    // Pokemon 323 - "Camerupt"
    global.Dex_Evolve_Level[323] = -1;
    global.Dex_Hatching[323] = "False";

    // Pokemon 324 - "Torkoal"
    global.Dex_Evolve_Level[324] = -1;
    global.Dex_Hatching[324] = "True";

    // Pokemon 325 - "Spoink"
    global.Dex_Evolve_Level[325] = 32;
    global.Dex_Hatching[325] = "True";

    // Pokemon 326 - "Grumpig"
    global.Dex_Evolve_Level[326] = -1;
    global.Dex_Hatching[326] = "False";

    // Pokemon 327 - "Spinda"
    global.Dex_Evolve_Level[327] = -1;
    global.Dex_Hatching[327] = "True";

    // Pokemon 328 - "Trapinch"
    global.Dex_Evolve_Level[328] = 35;
    global.Dex_Hatching[328] = "True";

    // Pokemon 329 - "Vibrava"
    global.Dex_Evolve_Level[329] = 45;
    global.Dex_Hatching[329] = "False";

    // Pokemon 330 - "Flygon"
    global.Dex_Evolve_Level[330] = -1;
    global.Dex_Hatching[330] = "False";

    // Pokemon 331 - "Cacnea"
    global.Dex_Evolve_Level[331] = 32;
    global.Dex_Hatching[331] = "True";

    // Pokemon 332 - "Cacturne"
    global.Dex_Evolve_Level[332] = -1;
    global.Dex_Hatching[332] = "False";

    // Pokemon 333 - "Swablu"
    global.Dex_Evolve_Level[333] = 35;
    global.Dex_Hatching[333] = "True";

    // Pokemon 334 - "Altaria"
    global.Dex_Evolve_Level[334] = -1;
    global.Dex_Hatching[334] = "False";

    // Pokemon 335 - "Zangoose"
    global.Dex_Evolve_Level[335] = -1;
    global.Dex_Hatching[335] = "True";

    // Pokemon 336 - "Seviper"
    global.Dex_Evolve_Level[336] = -1;
    global.Dex_Hatching[336] = "True";

    // Pokemon 337 - "Lunatone"
    global.Dex_Evolve_Level[337] = -1;
    global.Dex_Hatching[337] = "True";

    // Pokemon 338 - "Solrock"
    global.Dex_Evolve_Level[338] = -1;
    global.Dex_Hatching[338] = "True";

    // Pokemon 339 - "Barboach"
    global.Dex_Evolve_Level[339] = 30;
    global.Dex_Hatching[339] = "True";

    // Pokemon 340 - "Whiscash"
    global.Dex_Evolve_Level[340] = -1;
    global.Dex_Hatching[340] = "False";

    // Pokemon 341 - "Corphish"
    global.Dex_Evolve_Level[341] = 30;
    global.Dex_Hatching[341] = "True";

    // Pokemon 342 - "Crawdaunt"
    global.Dex_Evolve_Level[342] = -1;
    global.Dex_Hatching[342] = "False";

    // Pokemon 343 - "Baltoy"
    global.Dex_Evolve_Level[343] = 36;
    global.Dex_Hatching[343] = "True";

    // Pokemon 344 - "Claydol"
    global.Dex_Evolve_Level[344] = -1;
    global.Dex_Hatching[344] = "False";

    // Pokemon 345 - "Lileep"
    global.Dex_Evolve_Level[345] = 40;
    global.Dex_Hatching[345] = "True";

    // Pokemon 346 - "Cradily"
    global.Dex_Evolve_Level[346] = -1;
    global.Dex_Hatching[346] = "False";

    // Pokemon 347 - "Anorith"
    global.Dex_Evolve_Level[347] = 40;
    global.Dex_Hatching[347] = "True";

    // Pokemon 348 - "Armaldo"
    global.Dex_Evolve_Level[348] = -1;
    global.Dex_Hatching[348] = "False";

    // Pokemon 349 - "Feebas"
    global.Dex_Evolve_Level[349] = -1;
    global.Dex_Hatching[349] = "True";

    // Pokemon 350 - "Milotic"
    global.Dex_Evolve_Level[350] = -1;
    global.Dex_Hatching[350] = "False";

    // Pokemon 351 - "Castform"
    global.Dex_Evolve_Level[351] = -1;
    global.Dex_Hatching[351] = "True";

    // Pokemon 352 - "Kecleon"
    global.Dex_Evolve_Level[352] = -1;
    global.Dex_Hatching[352] = "True";

    // Pokemon 353 - "Shuppet"
    global.Dex_Evolve_Level[353] = 37;
    global.Dex_Hatching[353] = "True";

    // Pokemon 354 - "Banette"
    global.Dex_Evolve_Level[354] = -1;
    global.Dex_Hatching[354] = "False";

    // Pokemon 355 - "Duskull"
    global.Dex_Evolve_Level[355] = 37;
    global.Dex_Hatching[355] = "True";

    // Pokemon 356 - "Dusclops"
    global.Dex_Evolve_Level[356] = -1;
    global.Dex_Hatching[356] = "False";

    // Pokemon 357 - "Tropius"
    global.Dex_Evolve_Level[357] = -1;
    global.Dex_Hatching[357] = "True";

    // Pokemon 358 - "Chimecho"
    global.Dex_Evolve_Level[358] = -1;
    global.Dex_Hatching[358] = "True";

    // Pokemon 359 - "Absol"
    global.Dex_Evolve_Level[359] = -1;
    global.Dex_Hatching[359] = "True";

    // Pokemon 360 - "Wynaut"
    global.Dex_Evolve_Level[360] = 15;
    global.Dex_Hatching[360] = "True";

    // Pokemon 361 - "Snorunt"
    global.Dex_Evolve_Level[361] = 42;
    global.Dex_Hatching[361] = "True";

    // Pokemon 362 - "Glalie"
    global.Dex_Evolve_Level[362] = -1;
    global.Dex_Hatching[362] = "False";

    // Pokemon 363 - "Spheal"
    global.Dex_Evolve_Level[363] = 32;
    global.Dex_Hatching[363] = "True";

    // Pokemon 364 - "Sealeo"
    global.Dex_Evolve_Level[364] = 44;
    global.Dex_Hatching[364] = "False";

    // Pokemon 365 - "Walrein"
    global.Dex_Evolve_Level[365] = -1;
    global.Dex_Hatching[365] = "False";

    // Pokemon 366 - "Clamperl"
    global.Dex_Evolve_Level[366] = -1;
    global.Dex_Hatching[366] = "True";

    // Pokemon 367 - "Huntail"
    global.Dex_Evolve_Level[367] = -1;
    global.Dex_Hatching[367] = "False";

    // Pokemon 368 - "Gorebyss"
    global.Dex_Evolve_Level[368] = -1;
    global.Dex_Hatching[368] = "False";

    // Pokemon 369 - "Relicanth"
    global.Dex_Evolve_Level[369] = -1;
    global.Dex_Hatching[369] = "True";

    // Pokemon 370 - "Luvdisc"
    global.Dex_Evolve_Level[370] = -1;
    global.Dex_Hatching[370] = "True";

    // Pokemon 371 - "Bagon"
    global.Dex_Evolve_Level[371] = 30;
    global.Dex_Hatching[371] = "True";

    // Pokemon 372 - "Shelgon"
    global.Dex_Evolve_Level[372] = 50;
    global.Dex_Hatching[372] = "False";

    // Pokemon 373 - "Salamence"
    global.Dex_Evolve_Level[373] = -1;
    global.Dex_Hatching[373] = "False";

    // Pokemon 374 - "Beldum"
    global.Dex_Evolve_Level[374] = 20;
    global.Dex_Hatching[374] = "True";

    // Pokemon 375 - "Metang"
    global.Dex_Evolve_Level[375] = 45;
    global.Dex_Hatching[375] = "False";

    // Pokemon 376 - "Metagross"
    global.Dex_Evolve_Level[376] = -1;
    global.Dex_Hatching[376] = "False";

    // Pokemon 377 - "Regirock"
    global.Dex_Evolve_Level[377] = -1;
    global.Dex_Hatching[377] = "False";

    // Pokemon 378 - "Regice"
    global.Dex_Evolve_Level[378] = -1;
    global.Dex_Hatching[378] = "False";

    // Pokemon 379 - "Registeel"
    global.Dex_Evolve_Level[379] = -1;
    global.Dex_Hatching[379] = "False";

    // Pokemon 380 - "Latias"
    global.Dex_Evolve_Level[380] = -1;
    global.Dex_Hatching[380] = "False";

    // Pokemon 381 - "Latios"
    global.Dex_Evolve_Level[381] = -1;
    global.Dex_Hatching[381] = "False";

    // Pokemon 382 - "Kyogre"
    global.Dex_Evolve_Level[382] = -1;
    global.Dex_Hatching[382] = "False";

    // Pokemon 383 - "Groudon"
    global.Dex_Evolve_Level[383] = -1;
    global.Dex_Hatching[383] = "False";

    // Pokemon 384 - "Rayquaza"
    global.Dex_Evolve_Level[384] = -1;
    global.Dex_Hatching[384] = "False";

    // Pokemon 385 - "Jirachi"
    global.Dex_Evolve_Level[385] = -1;
    global.Dex_Hatching[385] = "False";

    // Pokemon 386 - "Deoxys"
    global.Dex_Evolve_Level[386] = -1;
    global.Dex_Hatching[386] = "False";
}