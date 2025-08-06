/*
 * SCR_Pokemon_Stats_Gen2.gml
 * 
 * POKEMON DATA MODULE - Generation 2 Base Stats
 * 
 * This script initializes Generation 2 Pokemon base stats (IDs 152-251).
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
 * - Pokemon are in sequential order (152, 153, 154, 155...)
 * - Use official Pokemon base stats from bulbapedia.net
 * - BST comments help verify stat accuracy
 * 
 * CREATED: August 2025
 * POKEMON COUNT: 100 (Johto Region)
 * EXTRACTED: From original SCR_Pokedex.gml via automation
 */

function SCR_Pokemon_Stats_Gen2() {
    // Pokemon 152 - "Chikorita"
    global.Dex_Health[152] = 45;
    global.Dex_Attack[152] = 49;
    global.Dex_Defence[152] = 65;
    global.Dex_SPattack[152] = 49;
    global.Dex_SPdefence[152] = 65;
    global.Dex_Speed[152] = 45;

    // Pokemon 153 - "Bayleef"
    global.Dex_Health[153] = 60;
    global.Dex_Attack[153] = 62;
    global.Dex_Defence[153] = 80;
    global.Dex_SPattack[153] = 63;
    global.Dex_SPdefence[153] = 80;
    global.Dex_Speed[153] = 60;

    // Pokemon 154 - "Meganium"
    global.Dex_Health[154] = 80;
    global.Dex_Attack[154] = 82;
    global.Dex_Defence[154] = 100;
    global.Dex_SPattack[154] = 83;
    global.Dex_SPdefence[154] = 100;
    global.Dex_Speed[154] = 80;

    // Pokemon 155 - "Cyndaquil"
    global.Dex_Health[155] = 39;
    global.Dex_Attack[155] = 52;
    global.Dex_Defence[155] = 43;
    global.Dex_SPattack[155] = 60;
    global.Dex_SPdefence[155] = 50;
    global.Dex_Speed[155] = 65;

    // Pokemon 156 - "Quilava"
    global.Dex_Health[156] = 58;
    global.Dex_Attack[156] = 64;
    global.Dex_Defence[156] = 58;
    global.Dex_SPattack[156] = 80;
    global.Dex_SPdefence[156] = 65;
    global.Dex_Speed[156] = 80;

    // Pokemon 157 - "Typhlosion"
    global.Dex_Health[157] = 78;
    global.Dex_Attack[157] = 84;
    global.Dex_Defence[157] = 78;
    global.Dex_SPattack[157] = 109;
    global.Dex_SPdefence[157] = 85;
    global.Dex_Speed[157] = 100;

    // Pokemon 158 - "Totodile"
    global.Dex_Health[158] = 50;
    global.Dex_Attack[158] = 65;
    global.Dex_Defence[158] = 64;
    global.Dex_SPattack[158] = 44;
    global.Dex_SPdefence[158] = 50;
    global.Dex_Speed[158] = 43;

    // Pokemon 159 - "Croconaw"
    global.Dex_Health[159] = 65;
    global.Dex_Attack[159] = 80;
    global.Dex_Defence[159] = 80;
    global.Dex_SPattack[159] = 59;
    global.Dex_SPdefence[159] = 63;
    global.Dex_Speed[159] = 58;

    // Pokemon 160 - "Feraligatr"
    global.Dex_Health[160] = 85;
    global.Dex_Attack[160] = 105;
    global.Dex_Defence[160] = 100;
    global.Dex_SPattack[160] = 79;
    global.Dex_SPdefence[160] = 83;
    global.Dex_Speed[160] = 78;

    // Pokemon 161 - "Sentret"
    global.Dex_Health[161] = 35;
    global.Dex_Attack[161] = 46;
    global.Dex_Defence[161] = 34;
    global.Dex_SPattack[161] = 35;
    global.Dex_SPdefence[161] = 45;
    global.Dex_Speed[161] = 20;

    // Pokemon 162 - "Furret"
    global.Dex_Health[162] = 85;
    global.Dex_Attack[162] = 76;
    global.Dex_Defence[162] = 64;
    global.Dex_SPattack[162] = 45;
    global.Dex_SPdefence[162] = 55;
    global.Dex_Speed[162] = 90;

    // Pokemon 163 - "Hoothoot"
    global.Dex_Health[163] = 60;
    global.Dex_Attack[163] = 30;
    global.Dex_Defence[163] = 30;
    global.Dex_SPattack[163] = 36;
    global.Dex_SPdefence[163] = 56;
    global.Dex_Speed[163] = 50;

    // Pokemon 164 - "Noctowl"
    global.Dex_Health[164] = 100;
    global.Dex_Attack[164] = 50;
    global.Dex_Defence[164] = 50;
    global.Dex_SPattack[164] = 76;
    global.Dex_SPdefence[164] = 96;
    global.Dex_Speed[164] = 70;

    // Pokemon 165 - "Ledyba"
    global.Dex_Health[165] = 40;
    global.Dex_Attack[165] = 20;
    global.Dex_Defence[165] = 30;
    global.Dex_SPattack[165] = 40;
    global.Dex_SPdefence[165] = 80;
    global.Dex_Speed[165] = 55;

    // Pokemon 166 - "Ledian"
    global.Dex_Health[166] = 55;
    global.Dex_Attack[166] = 35;
    global.Dex_Defence[166] = 50;
    global.Dex_SPattack[166] = 55;
    global.Dex_SPdefence[166] = 110;
    global.Dex_Speed[166] = 85;

    // Pokemon 167 - "Spinarak"
    global.Dex_Health[167] = 40;
    global.Dex_Attack[167] = 60;
    global.Dex_Defence[167] = 40;
    global.Dex_SPattack[167] = 40;
    global.Dex_SPdefence[167] = 40;
    global.Dex_Speed[167] = 30;

    // Pokemon 168 - "Ariados"
    global.Dex_Health[168] = 70;
    global.Dex_Attack[168] = 90;
    global.Dex_Defence[168] = 70;
    global.Dex_SPattack[168] = 60;
    global.Dex_SPdefence[168] = 70;
    global.Dex_Speed[168] = 40;

    // Pokemon 169 - "Crobat"
    global.Dex_Health[169] = 85;
    global.Dex_Attack[169] = 90;
    global.Dex_Defence[169] = 80;
    global.Dex_SPattack[169] = 70;
    global.Dex_SPdefence[169] = 80;
    global.Dex_Speed[169] = 130;

    // Pokemon 170 - "Chinchou"
    global.Dex_Health[170] = 75;
    global.Dex_Attack[170] = 38;
    global.Dex_Defence[170] = 38;
    global.Dex_SPattack[170] = 56;
    global.Dex_SPdefence[170] = 56;
    global.Dex_Speed[170] = 67;

    // Pokemon 171 - "Lanturn"
    global.Dex_Health[171] = 125;
    global.Dex_Attack[171] = 58;
    global.Dex_Defence[171] = 58;
    global.Dex_SPattack[171] = 76;
    global.Dex_SPdefence[171] = 76;
    global.Dex_Speed[171] = 67;

    // Pokemon 172 - "Pichu"
    global.Dex_Health[172] = 20;
    global.Dex_Attack[172] = 40;
    global.Dex_Defence[172] = 15;
    global.Dex_SPattack[172] = 35;
    global.Dex_SPdefence[172] = 35;
    global.Dex_Speed[172] = 60;

    // Pokemon 173 - "Cleffa"
    global.Dex_Health[173] = 50;
    global.Dex_Attack[173] = 25;
    global.Dex_Defence[173] = 28;
    global.Dex_SPattack[173] = 45;
    global.Dex_SPdefence[173] = 55;
    global.Dex_Speed[173] = 15;

    // Pokemon 174 - "Igglybuff"
    global.Dex_Health[174] = 90;
    global.Dex_Attack[174] = 30;
    global.Dex_Defence[174] = 15;
    global.Dex_SPattack[174] = 40;
    global.Dex_SPdefence[174] = 20;
    global.Dex_Speed[174] = 15;

    // Pokemon 175 - "Togepi"
    global.Dex_Health[175] = 35;
    global.Dex_Attack[175] = 20;
    global.Dex_Defence[175] = 65;
    global.Dex_SPattack[175] = 40;
    global.Dex_SPdefence[175] = 65;
    global.Dex_Speed[175] = 20;

    // Pokemon 176 - "Togetic"
    global.Dex_Health[176] = 55;
    global.Dex_Attack[176] = 40;
    global.Dex_Defence[176] = 85;
    global.Dex_SPattack[176] = 80;
    global.Dex_SPdefence[176] = 105;
    global.Dex_Speed[176] = 40;

    // Pokemon 177 - "Natu"
    global.Dex_Health[177] = 40;
    global.Dex_Attack[177] = 50;
    global.Dex_Defence[177] = 45;
    global.Dex_SPattack[177] = 70;
    global.Dex_SPdefence[177] = 45;
    global.Dex_Speed[177] = 70;

    // Pokemon 178 - "Xatu"
    global.Dex_Health[178] = 65;
    global.Dex_Attack[178] = 75;
    global.Dex_Defence[178] = 70;
    global.Dex_SPattack[178] = 95;
    global.Dex_SPdefence[178] = 70;
    global.Dex_Speed[178] = 95;

    // Pokemon 179 - "Mareep"
    global.Dex_Health[179] = 55;
    global.Dex_Attack[179] = 40;
    global.Dex_Defence[179] = 40;
    global.Dex_SPattack[179] = 65;
    global.Dex_SPdefence[179] = 45;
    global.Dex_Speed[179] = 35;

    // Pokemon 180 - "Flaaffy"
    global.Dex_Health[180] = 70;
    global.Dex_Attack[180] = 55;
    global.Dex_Defence[180] = 55;
    global.Dex_SPattack[180] = 80;
    global.Dex_SPdefence[180] = 60;
    global.Dex_Speed[180] = 45;

    // Pokemon 181 - "Ampharos"
    global.Dex_Health[181] = 90;
    global.Dex_Attack[181] = 75;
    global.Dex_Defence[181] = 85;
    global.Dex_SPattack[181] = 115;
    global.Dex_SPdefence[181] = 90;
    global.Dex_Speed[181] = 55;

    // Pokemon 182 - "Bellossom"
    global.Dex_Health[182] = 75;
    global.Dex_Attack[182] = 80;
    global.Dex_Defence[182] = 95;
    global.Dex_SPattack[182] = 90;
    global.Dex_SPdefence[182] = 100;
    global.Dex_Speed[182] = 50;

    // Pokemon 183 - "Marill"
    global.Dex_Health[183] = 70;
    global.Dex_Attack[183] = 20;
    global.Dex_Defence[183] = 50;
    global.Dex_SPattack[183] = 20;
    global.Dex_SPdefence[183] = 50;
    global.Dex_Speed[183] = 40;

    // Pokemon 184 - "Azumarill"
    global.Dex_Health[184] = 100;
    global.Dex_Attack[184] = 50;
    global.Dex_Defence[184] = 80;
    global.Dex_SPattack[184] = 60;
    global.Dex_SPdefence[184] = 80;
    global.Dex_Speed[184] = 50;

    // Pokemon 185 - "Sudowoodo"
    global.Dex_Health[185] = 70;
    global.Dex_Attack[185] = 100;
    global.Dex_Defence[185] = 115;
    global.Dex_SPattack[185] = 30;
    global.Dex_SPdefence[185] = 65;
    global.Dex_Speed[185] = 30;

    // Pokemon 186 - "Politoed"
    global.Dex_Health[186] = 90;
    global.Dex_Attack[186] = 75;
    global.Dex_Defence[186] = 75;
    global.Dex_SPattack[186] = 90;
    global.Dex_SPdefence[186] = 100;
    global.Dex_Speed[186] = 70;

    // Pokemon 187 - "Hoppip"
    global.Dex_Health[187] = 35;
    global.Dex_Attack[187] = 35;
    global.Dex_Defence[187] = 40;
    global.Dex_SPattack[187] = 35;
    global.Dex_SPdefence[187] = 55;
    global.Dex_Speed[187] = 50;

    // Pokemon 188 - "Skiploom"
    global.Dex_Health[188] = 55;
    global.Dex_Attack[188] = 45;
    global.Dex_Defence[188] = 50;
    global.Dex_SPattack[188] = 45;
    global.Dex_SPdefence[188] = 65;
    global.Dex_Speed[188] = 80;

    // Pokemon 189 - "Jumpluff"
    global.Dex_Health[189] = 75;
    global.Dex_Attack[189] = 55;
    global.Dex_Defence[189] = 70;
    global.Dex_SPattack[189] = 55;
    global.Dex_SPdefence[189] = 95;
    global.Dex_Speed[189] = 110;

    // Pokemon 190 - "Aipom"
    global.Dex_Health[190] = 55;
    global.Dex_Attack[190] = 70;
    global.Dex_Defence[190] = 55;
    global.Dex_SPattack[190] = 40;
    global.Dex_SPdefence[190] = 55;
    global.Dex_Speed[190] = 85;

    // Pokemon 191 - "Sunkern"
    global.Dex_Health[191] = 30;
    global.Dex_Attack[191] = 30;
    global.Dex_Defence[191] = 30;
    global.Dex_SPattack[191] = 30;
    global.Dex_SPdefence[191] = 30;
    global.Dex_Speed[191] = 30;

    // Pokemon 192 - "Sunflora"
    global.Dex_Health[192] = 75;
    global.Dex_Attack[192] = 75;
    global.Dex_Defence[192] = 55;
    global.Dex_SPattack[192] = 105;
    global.Dex_SPdefence[192] = 85;
    global.Dex_Speed[192] = 30;

    // Pokemon 193 - "Yanma"
    global.Dex_Health[193] = 65;
    global.Dex_Attack[193] = 65;
    global.Dex_Defence[193] = 45;
    global.Dex_SPattack[193] = 75;
    global.Dex_SPdefence[193] = 45;
    global.Dex_Speed[193] = 95;

    // Pokemon 194 - "Wooper"
    global.Dex_Health[194] = 55;
    global.Dex_Attack[194] = 45;
    global.Dex_Defence[194] = 45;
    global.Dex_SPattack[194] = 25;
    global.Dex_SPdefence[194] = 25;
    global.Dex_Speed[194] = 15;

    // Pokemon 195 - "Quagsire"
    global.Dex_Health[195] = 95;
    global.Dex_Attack[195] = 85;
    global.Dex_Defence[195] = 85;
    global.Dex_SPattack[195] = 65;
    global.Dex_SPdefence[195] = 65;
    global.Dex_Speed[195] = 35;

    // Pokemon 196 - "Espeon"
    global.Dex_Health[196] = 65;
    global.Dex_Attack[196] = 65;
    global.Dex_Defence[196] = 60;
    global.Dex_SPattack[196] = 130;
    global.Dex_SPdefence[196] = 95;
    global.Dex_Speed[196] = 110;

    // Pokemon 197 - "Umbreon"
    global.Dex_Health[197] = 95;
    global.Dex_Attack[197] = 65;
    global.Dex_Defence[197] = 110;
    global.Dex_SPattack[197] = 60;
    global.Dex_SPdefence[197] = 130;
    global.Dex_Speed[197] = 65;

    // Pokemon 198 - "Murkrow"
    global.Dex_Health[198] = 60;
    global.Dex_Attack[198] = 85;
    global.Dex_Defence[198] = 42;
    global.Dex_SPattack[198] = 85;
    global.Dex_SPdefence[198] = 42;
    global.Dex_Speed[198] = 91;

    // Pokemon 199 - "Slowking"
    global.Dex_Health[199] = 95;
    global.Dex_Attack[199] = 75;
    global.Dex_Defence[199] = 80;
    global.Dex_SPattack[199] = 100;
    global.Dex_SPdefence[199] = 110;
    global.Dex_Speed[199] = 30;

    // Pokemon 200 - "Misdreavus"
    global.Dex_Health[200] = 60;
    global.Dex_Attack[200] = 60;
    global.Dex_Defence[200] = 60;
    global.Dex_SPattack[200] = 85;
    global.Dex_SPdefence[200] = 85;
    global.Dex_Speed[200] = 85;

    // Pokemon 201 - "Unown"
    global.Dex_Health[201] = 48;
    global.Dex_Attack[201] = 72;
    global.Dex_Defence[201] = 48;
    global.Dex_SPattack[201] = 72;
    global.Dex_SPdefence[201] = 48;
    global.Dex_Speed[201] = 48;

    // Pokemon 202 - "Wobbuffet"
    global.Dex_Health[202] = 190;
    global.Dex_Attack[202] = 33;
    global.Dex_Defence[202] = 58;
    global.Dex_SPattack[202] = 33;
    global.Dex_SPdefence[202] = 58;
    global.Dex_Speed[202] = 33;

    // Pokemon 203 - "Girafarig"
    global.Dex_Health[203] = 70;
    global.Dex_Attack[203] = 80;
    global.Dex_Defence[203] = 65;
    global.Dex_SPattack[203] = 90;
    global.Dex_SPdefence[203] = 65;
    global.Dex_Speed[203] = 85;

    // Pokemon 204 - "Pineco"
    global.Dex_Health[204] = 50;
    global.Dex_Attack[204] = 65;
    global.Dex_Defence[204] = 90;
    global.Dex_SPattack[204] = 35;
    global.Dex_SPdefence[204] = 35;
    global.Dex_Speed[204] = 15;

    // Pokemon 205 - "Forretress"
    global.Dex_Health[205] = 75;
    global.Dex_Attack[205] = 90;
    global.Dex_Defence[205] = 140;
    global.Dex_SPattack[205] = 60;
    global.Dex_SPdefence[205] = 60;
    global.Dex_Speed[205] = 40;

    // Pokemon 206 - "Dunsparce"
    global.Dex_Health[206] = 100;
    global.Dex_Attack[206] = 70;
    global.Dex_Defence[206] = 70;
    global.Dex_SPattack[206] = 65;
    global.Dex_SPdefence[206] = 65;
    global.Dex_Speed[206] = 45;

    // Pokemon 207 - "Gligar"
    global.Dex_Health[207] = 65;
    global.Dex_Attack[207] = 75;
    global.Dex_Defence[207] = 105;
    global.Dex_SPattack[207] = 35;
    global.Dex_SPdefence[207] = 65;
    global.Dex_Speed[207] = 85;

    // Pokemon 208 - "Steelix"
    global.Dex_Health[208] = 75;
    global.Dex_Attack[208] = 85;
    global.Dex_Defence[208] = 200;
    global.Dex_SPattack[208] = 55;
    global.Dex_SPdefence[208] = 65;
    global.Dex_Speed[208] = 30;

    // Pokemon 209 - "Snubbull"
    global.Dex_Health[209] = 60;
    global.Dex_Attack[209] = 80;
    global.Dex_Defence[209] = 50;
    global.Dex_SPattack[209] = 40;
    global.Dex_SPdefence[209] = 40;
    global.Dex_Speed[209] = 30;

    // Pokemon 210 - "Granbull"
    global.Dex_Health[210] = 90;
    global.Dex_Attack[210] = 120;
    global.Dex_Defence[210] = 75;
    global.Dex_SPattack[210] = 60;
    global.Dex_SPdefence[210] = 60;
    global.Dex_Speed[210] = 45;

    // Pokemon 211 - "Qwilfish"
    global.Dex_Health[211] = 65;
    global.Dex_Attack[211] = 95;
    global.Dex_Defence[211] = 75;
    global.Dex_SPattack[211] = 55;
    global.Dex_SPdefence[211] = 55;
    global.Dex_Speed[211] = 85;

    // Pokemon 212 - "Scizor"
    global.Dex_Health[212] = 70;
    global.Dex_Attack[212] = 130;
    global.Dex_Defence[212] = 100;
    global.Dex_SPattack[212] = 55;
    global.Dex_SPdefence[212] = 80;
    global.Dex_Speed[212] = 65;

    // Pokemon 213 - "Shuckle"
    global.Dex_Health[213] = 20;
    global.Dex_Attack[213] = 10;
    global.Dex_Defence[213] = 230;
    global.Dex_SPattack[213] = 10;
    global.Dex_SPdefence[213] = 230;
    global.Dex_Speed[213] = 5;

    // Pokemon 214 - "Heracross"
    global.Dex_Health[214] = 80;
    global.Dex_Attack[214] = 125;
    global.Dex_Defence[214] = 75;
    global.Dex_SPattack[214] = 40;
    global.Dex_SPdefence[214] = 95;
    global.Dex_Speed[214] = 85;

    // Pokemon 215 - "Sneasel"
    global.Dex_Health[215] = 55;
    global.Dex_Attack[215] = 95;
    global.Dex_Defence[215] = 55;
    global.Dex_SPattack[215] = 35;
    global.Dex_SPdefence[215] = 75;
    global.Dex_Speed[215] = 115;

    // Pokemon 216 - "Teddiursa"
    global.Dex_Health[216] = 60;
    global.Dex_Attack[216] = 80;
    global.Dex_Defence[216] = 50;
    global.Dex_SPattack[216] = 50;
    global.Dex_SPdefence[216] = 50;
    global.Dex_Speed[216] = 40;

    // Pokemon 217 - "Ursaring"
    global.Dex_Health[217] = 90;
    global.Dex_Attack[217] = 130;
    global.Dex_Defence[217] = 75;
    global.Dex_SPattack[217] = 75;
    global.Dex_SPdefence[217] = 75;
    global.Dex_Speed[217] = 55;

    // Pokemon 218 - "Slugma"
    global.Dex_Health[218] = 40;
    global.Dex_Attack[218] = 40;
    global.Dex_Defence[218] = 40;
    global.Dex_SPattack[218] = 70;
    global.Dex_SPdefence[218] = 40;
    global.Dex_Speed[218] = 20;

    // Pokemon 219 - "Magcargo"
    global.Dex_Health[219] = 60;
    global.Dex_Attack[219] = 50;
    global.Dex_Defence[219] = 120;
    global.Dex_SPattack[219] = 90;
    global.Dex_SPdefence[219] = 80;
    global.Dex_Speed[219] = 30;

    // Pokemon 220 - "Swinub"
    global.Dex_Health[220] = 50;
    global.Dex_Attack[220] = 50;
    global.Dex_Defence[220] = 40;
    global.Dex_SPattack[220] = 30;
    global.Dex_SPdefence[220] = 30;
    global.Dex_Speed[220] = 50;

    // Pokemon 221 - "Piloswine"
    global.Dex_Health[221] = 100;
    global.Dex_Attack[221] = 100;
    global.Dex_Defence[221] = 80;
    global.Dex_SPattack[221] = 60;
    global.Dex_SPdefence[221] = 60;
    global.Dex_Speed[221] = 50;

    // Pokemon 222 - "Corsola"
    global.Dex_Health[222] = 65;
    global.Dex_Attack[222] = 55;
    global.Dex_Defence[222] = 95;
    global.Dex_SPattack[222] = 65;
    global.Dex_SPdefence[222] = 95;
    global.Dex_Speed[222] = 35;

    // Pokemon 223 - "Remoraid"
    global.Dex_Health[223] = 35;
    global.Dex_Attack[223] = 65;
    global.Dex_Defence[223] = 35;
    global.Dex_SPattack[223] = 65;
    global.Dex_SPdefence[223] = 35;
    global.Dex_Speed[223] = 65;

    // Pokemon 224 - "Octillery"
    global.Dex_Health[224] = 75;
    global.Dex_Attack[224] = 105;
    global.Dex_Defence[224] = 75;
    global.Dex_SPattack[224] = 105;
    global.Dex_SPdefence[224] = 75;
    global.Dex_Speed[224] = 45;

    // Pokemon 225 - "Delibird"
    global.Dex_Health[225] = 45;
    global.Dex_Attack[225] = 55;
    global.Dex_Defence[225] = 45;
    global.Dex_SPattack[225] = 65;
    global.Dex_SPdefence[225] = 45;
    global.Dex_Speed[225] = 75;

    // Pokemon 226 - "Mantine"
    global.Dex_Health[226] = 85;
    global.Dex_Attack[226] = 40;
    global.Dex_Defence[226] = 70;
    global.Dex_SPattack[226] = 80;
    global.Dex_SPdefence[226] = 140;
    global.Dex_Speed[226] = 70;

    // Pokemon 227 - "Skarmory"
    global.Dex_Health[227] = 65;
    global.Dex_Attack[227] = 80;
    global.Dex_Defence[227] = 140;
    global.Dex_SPattack[227] = 40;
    global.Dex_SPdefence[227] = 70;
    global.Dex_Speed[227] = 70;

    // Pokemon 228 - "Houndour"
    global.Dex_Health[228] = 45;
    global.Dex_Attack[228] = 60;
    global.Dex_Defence[228] = 30;
    global.Dex_SPattack[228] = 80;
    global.Dex_SPdefence[228] = 50;
    global.Dex_Speed[228] = 65;

    // Pokemon 229 - "Houndoom"
    global.Dex_Health[229] = 75;
    global.Dex_Attack[229] = 90;
    global.Dex_Defence[229] = 50;
    global.Dex_SPattack[229] = 110;
    global.Dex_SPdefence[229] = 80;
    global.Dex_Speed[229] = 95;

    // Pokemon 230 - "Kingdra"
    global.Dex_Health[230] = 75;
    global.Dex_Attack[230] = 95;
    global.Dex_Defence[230] = 95;
    global.Dex_SPattack[230] = 95;
    global.Dex_SPdefence[230] = 95;
    global.Dex_Speed[230] = 85;

    // Pokemon 231 - "Phanpy"
    global.Dex_Health[231] = 90;
    global.Dex_Attack[231] = 60;
    global.Dex_Defence[231] = 60;
    global.Dex_SPattack[231] = 40;
    global.Dex_SPdefence[231] = 40;
    global.Dex_Speed[231] = 40;

    // Pokemon 232 - "Donphan"
    global.Dex_Health[232] = 90;
    global.Dex_Attack[232] = 120;
    global.Dex_Defence[232] = 120;
    global.Dex_SPattack[232] = 60;
    global.Dex_SPdefence[232] = 60;
    global.Dex_Speed[232] = 50;

    // Pokemon 233 - "Porygon2"
    global.Dex_Health[233] = 85;
    global.Dex_Attack[233] = 80;
    global.Dex_Defence[233] = 90;
    global.Dex_SPattack[233] = 105;
    global.Dex_SPdefence[233] = 95;
    global.Dex_Speed[233] = 60;

    // Pokemon 234 - "Stantler"
    global.Dex_Health[234] = 73;
    global.Dex_Attack[234] = 95;
    global.Dex_Defence[234] = 62;
    global.Dex_SPattack[234] = 85;
    global.Dex_SPdefence[234] = 65;
    global.Dex_Speed[234] = 85;

    // Pokemon 235 - "Smeargle"
    global.Dex_Health[235] = 55;
    global.Dex_Attack[235] = 20;
    global.Dex_Defence[235] = 35;
    global.Dex_SPattack[235] = 20;
    global.Dex_SPdefence[235] = 45;
    global.Dex_Speed[235] = 75;

    // Pokemon 236 - "Tyrogue"
    global.Dex_Health[236] = 35;
    global.Dex_Attack[236] = 35;
    global.Dex_Defence[236] = 35;
    global.Dex_SPattack[236] = 35;
    global.Dex_SPdefence[236] = 35;
    global.Dex_Speed[236] = 35;

    // Pokemon 237 - "Hitmontop"
    global.Dex_Health[237] = 50;
    global.Dex_Attack[237] = 95;
    global.Dex_Defence[237] = 95;
    global.Dex_SPattack[237] = 35;
    global.Dex_SPdefence[237] = 110;
    global.Dex_Speed[237] = 70;

    // Pokemon 238 - "Smoochum"
    global.Dex_Health[238] = 45;
    global.Dex_Attack[238] = 30;
    global.Dex_Defence[238] = 15;
    global.Dex_SPattack[238] = 85;
    global.Dex_SPdefence[238] = 65;
    global.Dex_Speed[238] = 65;

    // Pokemon 239 - "Elekid"
    global.Dex_Health[239] = 45;
    global.Dex_Attack[239] = 63;
    global.Dex_Defence[239] = 37;
    global.Dex_SPattack[239] = 65;
    global.Dex_SPdefence[239] = 55;
    global.Dex_Speed[239] = 95;

    // Pokemon 240 - "Magby"
    global.Dex_Health[240] = 45;
    global.Dex_Attack[240] = 75;
    global.Dex_Defence[240] = 37;
    global.Dex_SPattack[240] = 70;
    global.Dex_SPdefence[240] = 55;
    global.Dex_Speed[240] = 83;

    // Pokemon 241 - "Miltank"
    global.Dex_Health[241] = 95;
    global.Dex_Attack[241] = 80;
    global.Dex_Defence[241] = 105;
    global.Dex_SPattack[241] = 40;
    global.Dex_SPdefence[241] = 70;
    global.Dex_Speed[241] = 100;

    // Pokemon 242 - "Blissey"
    global.Dex_Health[242] = 255;
    global.Dex_Attack[242] = 10;
    global.Dex_Defence[242] = 10;
    global.Dex_SPattack[242] = 75;
    global.Dex_SPdefence[242] = 135;
    global.Dex_Speed[242] = 55;

    // Pokemon 243 - "Raikou"
    global.Dex_Health[243] = 90;
    global.Dex_Attack[243] = 85;
    global.Dex_Defence[243] = 75;
    global.Dex_SPattack[243] = 115;
    global.Dex_SPdefence[243] = 100;
    global.Dex_Speed[243] = 115;

    // Pokemon 244 - "Entei"
    global.Dex_Health[244] = 115;
    global.Dex_Attack[244] = 115;
    global.Dex_Defence[244] = 85;
    global.Dex_SPattack[244] = 90;
    global.Dex_SPdefence[244] = 75;
    global.Dex_Speed[244] = 100;

    // Pokemon 245 - "Suicune"
    global.Dex_Health[245] = 100;
    global.Dex_Attack[245] = 75;
    global.Dex_Defence[245] = 115;
    global.Dex_SPattack[245] = 90;
    global.Dex_SPdefence[245] = 115;
    global.Dex_Speed[245] = 85;

    // Pokemon 246 - "Larvitar"
    global.Dex_Health[246] = 50;
    global.Dex_Attack[246] = 64;
    global.Dex_Defence[246] = 50;
    global.Dex_SPattack[246] = 45;
    global.Dex_SPdefence[246] = 50;
    global.Dex_Speed[246] = 41;

    // Pokemon 247 - "Pupitar"
    global.Dex_Health[247] = 70;
    global.Dex_Attack[247] = 84;
    global.Dex_Defence[247] = 70;
    global.Dex_SPattack[247] = 65;
    global.Dex_SPdefence[247] = 70;
    global.Dex_Speed[247] = 51;

    // Pokemon 248 - "Tyranitar"
    global.Dex_Health[248] = 100;
    global.Dex_Attack[248] = 134;
    global.Dex_Defence[248] = 110;
    global.Dex_SPattack[248] = 95;
    global.Dex_SPdefence[248] = 100;
    global.Dex_Speed[248] = 61;

    // Pokemon 249 - "Lugia"
    global.Dex_Health[249] = 106;
    global.Dex_Attack[249] = 90;
    global.Dex_Defence[249] = 130;
    global.Dex_SPattack[249] = 90;
    global.Dex_SPdefence[249] = 154;
    global.Dex_Speed[249] = 110;

    // Pokemon 250 - "Ho-Oh"
    global.Dex_Health[250] = 106;
    global.Dex_Attack[250] = 130;
    global.Dex_Defence[250] = 90;
    global.Dex_SPattack[250] = 110;
    global.Dex_SPdefence[250] = 154;
    global.Dex_Speed[250] = 90;

    // Pokemon 251 - "Celebi"
    global.Dex_Health[251] = 100;
    global.Dex_Attack[251] = 100;
    global.Dex_Defence[251] = 100;
    global.Dex_SPattack[251] = 100;
    global.Dex_SPdefence[251] = 100;
    global.Dex_Speed[251] = 100;
}