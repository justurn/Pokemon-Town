/*
 * SCR_Pokemon_Basic_Gen2.gml
 * 
 * POKEMON DATA MODULE - Generation 2 Basic Information
 * 
 * This script initializes Generation 2 Pokemon basic data (IDs 152-251):
 * - Names, sprites, and portraits
 * - Primary and secondary types
 * 
 * Uses original Pokedex structure for maximum clarity and consistency.
 * 
 * EDITING GUIDELINES:
 * - Pokemon are in sequential order (152, 153, 154, 155...)
 * - Use official Pokemon names and types from bulbapedia.net
 * - Set secondary type to "" for single-type Pokemon
 * - Verify sprite constants exist before adding
 * 
 * CREATED: August 2025
 * POKEMON COUNT: 100 (Johto Region)
 * EXTRACTED: From original SCR_Pokedex.gml via automation
 */

function SCR_Pokemon_Basic_Gen2() {
    // Pokemon 152 - "Chikorita"
    global.Dex_Names[152] = "Chikorita";
    global.Dex_Sprites[152] = SPR_Chikorita;
    global.Dex_Primary_Types[152] = "Grass";
    global.Dex_Secondary_Types[152] = "";
    global.Dex_Portrait[152] = ICO_0152;

    // Pokemon 153 - "Bayleef"
    global.Dex_Names[153] = "Bayleef";
    global.Dex_Sprites[153] = SPR_Bayleef;
    global.Dex_Primary_Types[153] = "Grass";
    global.Dex_Secondary_Types[153] = "";
    global.Dex_Portrait[153] = ICO_0153;

    // Pokemon 154 - "Meganium"
    global.Dex_Names[154] = "Meganium";
    global.Dex_Sprites[154] = SPR_Meganium;
    global.Dex_Primary_Types[154] = "Grass";
    global.Dex_Secondary_Types[154] = "";
    global.Dex_Portrait[154] = ICO_0154;

    // Pokemon 155 - "Cyndaquil"
    global.Dex_Names[155] = "Cyndaquil";
    global.Dex_Sprites[155] = SPR_Cyndaquil;
    global.Dex_Primary_Types[155] = "Fire";
    global.Dex_Secondary_Types[155] = "";
    global.Dex_Portrait[155] = ICO_0155;

    // Pokemon 156 - "Quilava"
    global.Dex_Names[156] = "Quilava";
    global.Dex_Sprites[156] = SPR_Quilava;
    global.Dex_Primary_Types[156] = "Fire";
    global.Dex_Secondary_Types[156] = "";
    global.Dex_Portrait[156] = ICO_0156;

    // Pokemon 157 - "Typhlosion"
    global.Dex_Names[157] = "Typhlosion";
    global.Dex_Sprites[157] = SPR_Typhlosion;
    global.Dex_Primary_Types[157] = "Fire";
    global.Dex_Secondary_Types[157] = "";
    global.Dex_Portrait[157] = ICO_0157;

    // Pokemon 158 - "Totodile"
    global.Dex_Names[158] = "Totodile";
    global.Dex_Sprites[158] = SPR_Totodile;
    global.Dex_Primary_Types[158] = "Water";
    global.Dex_Secondary_Types[158] = "";
    global.Dex_Portrait[158] = ICO_0158;

    // Pokemon 159 - "Croconaw"
    global.Dex_Names[159] = "Croconaw";
    global.Dex_Sprites[159] = SPR_Croconaw;
    global.Dex_Primary_Types[159] = "Water";
    global.Dex_Secondary_Types[159] = "";
    global.Dex_Portrait[159] = ICO_0159;

    // Pokemon 160 - "Feraligatr"
    global.Dex_Names[160] = "Feraligatr";
    global.Dex_Sprites[160] = SPR_Feraligatr;
    global.Dex_Primary_Types[160] = "Water";
    global.Dex_Secondary_Types[160] = "";
    global.Dex_Portrait[160] = ICO_0160;

    // Pokemon 161 - "Sentret"
    global.Dex_Names[161] = "Sentret";
    global.Dex_Sprites[161] = SPR_Sentret;
    global.Dex_Primary_Types[161] = "Normal";
    global.Dex_Secondary_Types[161] = "";
    global.Dex_Portrait[161] = ICO_0161;

    // Pokemon 162 - "Furret"
    global.Dex_Names[162] = "Furret";
    global.Dex_Sprites[162] = SPR_Furret;
    global.Dex_Primary_Types[162] = "Normal";
    global.Dex_Secondary_Types[162] = "";
    global.Dex_Portrait[162] = ICO_0162;

    // Pokemon 163 - "Hoothoot"
    global.Dex_Names[163] = "Hoothoot";
    global.Dex_Sprites[163] = SPR_Hoothoot;
    global.Dex_Primary_Types[163] = "Normal";
    global.Dex_Secondary_Types[163] = "Flying";
    global.Dex_Portrait[163] = ICO_0163;

    // Pokemon 164 - "Noctowl"
    global.Dex_Names[164] = "Noctowl";
    global.Dex_Sprites[164] = SPR_Noctowl;
    global.Dex_Primary_Types[164] = "Normal";
    global.Dex_Secondary_Types[164] = "Flying";
    global.Dex_Portrait[164] = ICO_0164;

    // Pokemon 165 - "Ledyba"
    global.Dex_Names[165] = "Ledyba";
    global.Dex_Sprites[165] = SPR_Ledyba;
    global.Dex_Primary_Types[165] = "Bug";
    global.Dex_Secondary_Types[165] = "Flying";
    global.Dex_Portrait[165] = ICO_0165;

    // Pokemon 166 - "Ledian"
    global.Dex_Names[166] = "Ledian";
    global.Dex_Sprites[166] = SPR_Ledian;
    global.Dex_Primary_Types[166] = "Bug";
    global.Dex_Secondary_Types[166] = "Flying";
    global.Dex_Portrait[166] = ICO_0166;

    // Pokemon 167 - "Spinarak"
    global.Dex_Names[167] = "Spinarak";
    global.Dex_Sprites[167] = SPR_Spinarak;
    global.Dex_Primary_Types[167] = "Bug";
    global.Dex_Secondary_Types[167] = "Poison";
    global.Dex_Portrait[167] = ICO_0167;

    // Pokemon 168 - "Ariados"
    global.Dex_Names[168] = "Ariados";
    global.Dex_Sprites[168] = SPR_Ariados;
    global.Dex_Primary_Types[168] = "Bug";
    global.Dex_Secondary_Types[168] = "Poison";
    global.Dex_Portrait[168] = ICO_0168;

    // Pokemon 169 - "Crobat"
    global.Dex_Names[169] = "Crobat";
    global.Dex_Sprites[169] = SPR_Crobat;
    global.Dex_Primary_Types[169] = "Poison";
    global.Dex_Secondary_Types[169] = "Flying";
    global.Dex_Portrait[169] = ICO_0169;

    // Pokemon 170 - "Chinchou"
    global.Dex_Names[170] = "Chinchou";
    global.Dex_Sprites[170] = SPR_Chinchou;
    global.Dex_Primary_Types[170] = "Water";
    global.Dex_Secondary_Types[170] = "Electric";
    global.Dex_Portrait[170] = ICO_0170;

    // Pokemon 171 - "Lanturn"
    global.Dex_Names[171] = "Lanturn";
    global.Dex_Sprites[171] = SPR_Lanturn;
    global.Dex_Primary_Types[171] = "Water";
    global.Dex_Secondary_Types[171] = "Electric";
    global.Dex_Portrait[171] = ICO_0171;

    // Pokemon 172 - "Pichu"
    global.Dex_Names[172] = "Pichu";
    global.Dex_Sprites[172] = SPR_Pichu;
    global.Dex_Primary_Types[172] = "Electric";
    global.Dex_Secondary_Types[172] = "";
    global.Dex_Portrait[172] = ICO_0172;

    // Pokemon 173 - "Cleffa"
    global.Dex_Names[173] = "Cleffa";
    global.Dex_Sprites[173] = SPR_Cleffa;
    global.Dex_Primary_Types[173] = "Fairy";
    global.Dex_Secondary_Types[173] = "";
    global.Dex_Portrait[173] = ICO_0173;

    // Pokemon 174 - "Igglybuff"
    global.Dex_Names[174] = "Igglybuff";
    global.Dex_Sprites[174] = SPR_Igglybuff;
    global.Dex_Primary_Types[174] = "Normal";
    global.Dex_Secondary_Types[174] = "Fairy";
    global.Dex_Portrait[174] = ICO_0174;

    // Pokemon 175 - "Togepi"
    global.Dex_Names[175] = "Togepi";
    global.Dex_Sprites[175] = SPR_Togepi;
    global.Dex_Primary_Types[175] = "Fairy";
    global.Dex_Secondary_Types[175] = "";
    global.Dex_Portrait[175] = ICO_0175;

    // Pokemon 176 - "Togetic"
    global.Dex_Names[176] = "Togetic";
    global.Dex_Sprites[176] = SPR_Togetic;
    global.Dex_Primary_Types[176] = "Fairy";
    global.Dex_Secondary_Types[176] = "Flying";
    global.Dex_Portrait[176] = ICO_0176;

    // Pokemon 177 - "Natu"
    global.Dex_Names[177] = "Natu";
    global.Dex_Sprites[177] = SPR_Natu;
    global.Dex_Primary_Types[177] = "Psychic";
    global.Dex_Secondary_Types[177] = "Flying";
    global.Dex_Portrait[177] = ICO_0177;

    // Pokemon 178 - "Xatu"
    global.Dex_Names[178] = "Xatu";
    global.Dex_Sprites[178] = SPR_Xatu;
    global.Dex_Primary_Types[178] = "Psychic";
    global.Dex_Secondary_Types[178] = "Flying";
    global.Dex_Portrait[178] = ICO_0178;

    // Pokemon 179 - "Mareep"
    global.Dex_Names[179] = "Mareep";
    global.Dex_Sprites[179] = SPR_Mareep;
    global.Dex_Primary_Types[179] = "Electric";
    global.Dex_Secondary_Types[179] = "";
    global.Dex_Portrait[179] = ICO_0179;

    // Pokemon 180 - "Flaaffy"
    global.Dex_Names[180] = "Flaaffy";
    global.Dex_Sprites[180] = SPR_Flaaffy;
    global.Dex_Primary_Types[180] = "Electric";
    global.Dex_Secondary_Types[180] = "";
    global.Dex_Portrait[180] = ICO_0180;

    // Pokemon 181 - "Ampharos"
    global.Dex_Names[181] = "Ampharos";
    global.Dex_Sprites[181] = SPR_Ampharos;
    global.Dex_Primary_Types[181] = "Electric";
    global.Dex_Secondary_Types[181] = "";
    global.Dex_Portrait[181] = ICO_0181;

    // Pokemon 182 - "Bellossom"
    global.Dex_Names[182] = "Bellossom";
    global.Dex_Sprites[182] = SPR_Bellossom;
    global.Dex_Primary_Types[182] = "Grass";
    global.Dex_Secondary_Types[182] = "";
    global.Dex_Portrait[182] = ICO_0182;

    // Pokemon 183 - "Marill"
    global.Dex_Names[183] = "Marill";
    global.Dex_Sprites[183] = SPR_Marill;
    global.Dex_Primary_Types[183] = "Water";
    global.Dex_Secondary_Types[183] = "Fairy";
    global.Dex_Portrait[183] = ICO_0183;

    // Pokemon 184 - "Azumarill"
    global.Dex_Names[184] = "Azumarill";
    global.Dex_Sprites[184] = SPR_Azumarill;
    global.Dex_Primary_Types[184] = "Water";
    global.Dex_Secondary_Types[184] = "Fairy";
    global.Dex_Portrait[184] = ICO_0184;

    // Pokemon 185 - "Sudowoodo"
    global.Dex_Names[185] = "Sudowoodo";
    global.Dex_Sprites[185] = SPR_Sudowoodo;
    global.Dex_Primary_Types[185] = "Rock";
    global.Dex_Secondary_Types[185] = "";
    global.Dex_Portrait[185] = ICO_0185;

    // Pokemon 186 - "Politoed"
    global.Dex_Names[186] = "Politoed";
    global.Dex_Sprites[186] = SPR_Politoed;
    global.Dex_Primary_Types[186] = "Water";
    global.Dex_Secondary_Types[186] = "";
    global.Dex_Portrait[186] = ICO_0186;

    // Pokemon 187 - "Hoppip"
    global.Dex_Names[187] = "Hoppip";
    global.Dex_Sprites[187] = SPR_Hoppip;
    global.Dex_Primary_Types[187] = "Grass";
    global.Dex_Secondary_Types[187] = "Flying";
    global.Dex_Portrait[187] = ICO_0187;

    // Pokemon 188 - "Skiploom"
    global.Dex_Names[188] = "Skiploom";
    global.Dex_Sprites[188] = SPR_Skiploom;
    global.Dex_Primary_Types[188] = "Grass";
    global.Dex_Secondary_Types[188] = "Flying";
    global.Dex_Portrait[188] = ICO_0188;

    // Pokemon 189 - "Jumpluff"
    global.Dex_Names[189] = "Jumpluff";
    global.Dex_Sprites[189] = SPR_Jumpluff;
    global.Dex_Primary_Types[189] = "Grass";
    global.Dex_Secondary_Types[189] = "Flying";
    global.Dex_Portrait[189] = ICO_0189;

    // Pokemon 190 - "Aipom"
    global.Dex_Names[190] = "Aipom";
    global.Dex_Sprites[190] = SPR_Aipom;
    global.Dex_Primary_Types[190] = "Normal";
    global.Dex_Secondary_Types[190] = "";
    global.Dex_Portrait[190] = ICO_0190;

    // Pokemon 191 - "Sunkern"
    global.Dex_Names[191] = "Sunkern";
    global.Dex_Sprites[191] = SPR_Sunkern;
    global.Dex_Primary_Types[191] = "Grass";
    global.Dex_Secondary_Types[191] = "";
    global.Dex_Portrait[191] = ICO_0191;

    // Pokemon 192 - "Sunflora"
    global.Dex_Names[192] = "Sunflora";
    global.Dex_Sprites[192] = SPR_Sunflora;
    global.Dex_Primary_Types[192] = "Grass";
    global.Dex_Secondary_Types[192] = "";
    global.Dex_Portrait[192] = ICO_0192;

    // Pokemon 193 - "Yanma"
    global.Dex_Names[193] = "Yanma";
    global.Dex_Sprites[193] = SPR_Yanma;
    global.Dex_Primary_Types[193] = "Bug";
    global.Dex_Secondary_Types[193] = "Flying";
    global.Dex_Portrait[193] = ICO_0193;

    // Pokemon 194 - "Wooper"
    global.Dex_Names[194] = "Wooper";
    global.Dex_Sprites[194] = SPR_Wooper;
    global.Dex_Primary_Types[194] = "Water";
    global.Dex_Secondary_Types[194] = "Ground";
    global.Dex_Portrait[194] = ICO_0194;

    // Pokemon 195 - "Quagsire"
    global.Dex_Names[195] = "Quagsire";
    global.Dex_Sprites[195] = SPR_Quagsire;
    global.Dex_Primary_Types[195] = "Water";
    global.Dex_Secondary_Types[195] = "Ground";
    global.Dex_Portrait[195] = ICO_0195;

    // Pokemon 196 - "Espeon"
    global.Dex_Names[196] = "Espeon";
    global.Dex_Sprites[196] = SPR_Espeon;
    global.Dex_Primary_Types[196] = "Psychic";
    global.Dex_Secondary_Types[196] = "";
    global.Dex_Portrait[196] = ICO_0196;

    // Pokemon 197 - "Umbreon"
    global.Dex_Names[197] = "Umbreon";
    global.Dex_Sprites[197] = SPR_Umbreon;
    global.Dex_Primary_Types[197] = "Dark";
    global.Dex_Secondary_Types[197] = "";
    global.Dex_Portrait[197] = ICO_0197;

    // Pokemon 198 - "Murkrow"
    global.Dex_Names[198] = "Murkrow";
    global.Dex_Sprites[198] = SPR_Murkrow;
    global.Dex_Primary_Types[198] = "Dark";
    global.Dex_Secondary_Types[198] = "Flying";
    global.Dex_Portrait[198] = ICO_0198;

    // Pokemon 199 - "Slowking"
    global.Dex_Names[199] = "Slowking";
    global.Dex_Sprites[199] = SPR_Slowking;
    global.Dex_Primary_Types[199] = "Water";
    global.Dex_Secondary_Types[199] = "Psychic";
    global.Dex_Portrait[199] = ICO_0199;

    // Pokemon 200 - "Misdreavous"
    global.Dex_Names[200] = "Misdreavous";
    global.Dex_Sprites[200] = SPR_Misdreavous;
    global.Dex_Primary_Types[200] = "Ghost";
    global.Dex_Secondary_Types[200] = "";
    global.Dex_Portrait[200] = ICO_0200;

    // Pokemon 201 - "Unown"
    global.Dex_Names[201] = "Unown";
    global.Dex_Sprites[201] = SPR_Unown;
    global.Dex_Primary_Types[201] = "Psychic";
    global.Dex_Secondary_Types[201] = "";
    global.Dex_Portrait[201] = ICO_0201;

    // Pokemon 202 - "Wobbuffet"
    global.Dex_Names[202] = "Wobbuffet";
    global.Dex_Sprites[202] = SPR_Wobbuffet;
    global.Dex_Primary_Types[202] = "Psychic";
    global.Dex_Secondary_Types[202] = "";
    global.Dex_Portrait[202] = ICO_0202;

    // Pokemon 203 - "Girafarig"
    global.Dex_Names[203] = "Girafarig";
    global.Dex_Sprites[203] = SPR_Girafarig;
    global.Dex_Primary_Types[203] = "Normal";
    global.Dex_Secondary_Types[203] = "Psychic";
    global.Dex_Portrait[203] = ICO_0203;

    // Pokemon 204 - "Pineco"
    global.Dex_Names[204] = "Pineco";
    global.Dex_Sprites[204] = SPR_Pineco;
    global.Dex_Primary_Types[204] = "Bug";
    global.Dex_Secondary_Types[204] = "";
    global.Dex_Portrait[204] = ICO_0204;

    // Pokemon 205 - "Forretress"
    global.Dex_Names[205] = "Forretress";
    global.Dex_Sprites[205] = SPR_Forretress;
    global.Dex_Primary_Types[205] = "Bug";
    global.Dex_Secondary_Types[205] = "Steel";
    global.Dex_Portrait[205] = ICO_0205;

    // Pokemon 206 - "Dunsparce"
    global.Dex_Names[206] = "Dunsparce";
    global.Dex_Sprites[206] = SPR_Dunsparce;
    global.Dex_Primary_Types[206] = "Normal";
    global.Dex_Secondary_Types[206] = "";
    global.Dex_Portrait[206] = ICO_0206;

    // Pokemon 207 - "Gligar"
    global.Dex_Names[207] = "Gligar";
    global.Dex_Sprites[207] = SPR_Gligar;
    global.Dex_Primary_Types[207] = "Ground";
    global.Dex_Secondary_Types[207] = "Flying";
    global.Dex_Portrait[207] = ICO_0207;

    // Pokemon 208 - "Steelix"
    global.Dex_Names[208] = "Steelix";
    global.Dex_Sprites[208] = SPR_Steelix;
    global.Dex_Primary_Types[208] = "Steel";
    global.Dex_Secondary_Types[208] = "Ground";
    global.Dex_Portrait[208] = ICO_0208;

    // Pokemon 209 - "Snubbull"
    global.Dex_Names[209] = "Snubbull";
    global.Dex_Sprites[209] = SPR_Snubbull;
    global.Dex_Primary_Types[209] = "Fairy";
    global.Dex_Secondary_Types[209] = "";
    global.Dex_Portrait[209] = ICO_0209;

    // Pokemon 210 - "Granbull"
    global.Dex_Names[210] = "Granbull";
    global.Dex_Sprites[210] = SPR_Granbull;
    global.Dex_Primary_Types[210] = "Fairy";
    global.Dex_Secondary_Types[210] = "";
    global.Dex_Portrait[210] = ICO_0210;

    // Pokemon 211 - "Qwilfish"
    global.Dex_Names[211] = "Qwilfish";
    global.Dex_Sprites[211] = SPR_Qwilfish;
    global.Dex_Primary_Types[211] = "Water";
    global.Dex_Secondary_Types[211] = "Poison";
    global.Dex_Portrait[211] = ICO_0211;

    // Pokemon 212 - "Scizor"
    global.Dex_Names[212] = "Scizor";
    global.Dex_Sprites[212] = SPR_Scizor;
    global.Dex_Primary_Types[212] = "Bug";
    global.Dex_Secondary_Types[212] = "Steel";
    global.Dex_Portrait[212] = ICO_0212;

    // Pokemon 213 - "Shuckle"
    global.Dex_Names[213] = "Shuckle";
    global.Dex_Sprites[213] = SPR_Shuckle;
    global.Dex_Primary_Types[213] = "Bug";
    global.Dex_Secondary_Types[213] = "Rock";
    global.Dex_Portrait[213] = ICO_0213;

    // Pokemon 214 - "Heracross"
    global.Dex_Names[214] = "Heracross";
    global.Dex_Sprites[214] = SPR_Heracross;
    global.Dex_Primary_Types[214] = "Bug";
    global.Dex_Secondary_Types[214] = "Fighting";
    global.Dex_Portrait[214] = ICO_0214;

    // Pokemon 215 - "Sneasel"
    global.Dex_Names[215] = "Sneasel";
    global.Dex_Sprites[215] = SPR_Sneasel;
    global.Dex_Primary_Types[215] = "Dark";
    global.Dex_Secondary_Types[215] = "Ice";
    global.Dex_Portrait[215] = ICO_0215;

    // Pokemon 216 - "Teddiursa"
    global.Dex_Names[216] = "Teddiursa";
    global.Dex_Sprites[216] = SPR_Teddiursa;
    global.Dex_Primary_Types[216] = "Normal";
    global.Dex_Secondary_Types[216] = "";
    global.Dex_Portrait[216] = ICO_0216;

    // Pokemon 217 - "Ursaring"
    global.Dex_Names[217] = "Ursaring";
    global.Dex_Sprites[217] = SPR_Ursaring;
    global.Dex_Primary_Types[217] = "Normal";
    global.Dex_Secondary_Types[217] = "";
    global.Dex_Portrait[217] = ICO_0217;

    // Pokemon 218 - "Slugma"
    global.Dex_Names[218] = "Slugma";
    global.Dex_Sprites[218] = SPR_Slugma;
    global.Dex_Primary_Types[218] = "Fire";
    global.Dex_Secondary_Types[218] = "";
    global.Dex_Portrait[218] = ICO_0218;

    // Pokemon 219 - "Magcargo"
    global.Dex_Names[219] = "Magcargo";
    global.Dex_Sprites[219] = SPR_Magcargo;
    global.Dex_Primary_Types[219] = "Fire";
    global.Dex_Secondary_Types[219] = "Rock";
    global.Dex_Portrait[219] = ICO_0219;

    // Pokemon 220 - "Swinub"
    global.Dex_Names[220] = "Swinub";
    global.Dex_Sprites[220] = SPR_Swinub;
    global.Dex_Primary_Types[220] = "Ice";
    global.Dex_Secondary_Types[220] = "Ground";
    global.Dex_Portrait[220] = ICO_0220;

    // Pokemon 221 - "Piloswine"
    global.Dex_Names[221] = "Piloswine";
    global.Dex_Sprites[221] = SPR_Piloswine;
    global.Dex_Primary_Types[221] = "Ice";
    global.Dex_Secondary_Types[221] = "Ground";
    global.Dex_Portrait[221] = ICO_0221;

    // Pokemon 222 - "Corsola"
    global.Dex_Names[222] = "Corsola";
    global.Dex_Sprites[222] = SPR_Corsola;
    global.Dex_Primary_Types[222] = "Water";
    global.Dex_Secondary_Types[222] = "Rock";
    global.Dex_Portrait[222] = ICO_0222;

    // Pokemon 223 - "Remoraid"
    global.Dex_Names[223] = "Remoraid";
    global.Dex_Sprites[223] = SPR_Remoraid;
    global.Dex_Primary_Types[223] = "Water";
    global.Dex_Secondary_Types[223] = "";
    global.Dex_Portrait[223] = ICO_0223;

    // Pokemon 224 - "Octillery"
    global.Dex_Names[224] = "Octillery";
    global.Dex_Sprites[224] = SPR_Octillery;
    global.Dex_Primary_Types[224] = "Water";
    global.Dex_Secondary_Types[224] = "";
    global.Dex_Portrait[224] = ICO_0224;

    // Pokemon 225 - "Delibird"
    global.Dex_Names[225] = "Delibird";
    global.Dex_Sprites[225] = SPR_Delibird;
    global.Dex_Primary_Types[225] = "Ice";
    global.Dex_Secondary_Types[225] = "Flying";
    global.Dex_Portrait[225] = ICO_0225;

    // Pokemon 226 - "Mantine"
    global.Dex_Names[226] = "Mantine";
    global.Dex_Sprites[226] = SPR_Mantine;
    global.Dex_Primary_Types[226] = "Water";
    global.Dex_Secondary_Types[226] = "Flying";
    global.Dex_Portrait[226] = ICO_0226;

    // Pokemon 227 - "Skarmory"
    global.Dex_Names[227] = "Skarmory";
    global.Dex_Sprites[227] = SPR_Skarmory;
    global.Dex_Primary_Types[227] = "Steel";
    global.Dex_Secondary_Types[227] = "Flying";
    global.Dex_Portrait[227] = ICO_0227;

    // Pokemon 228 - "Houndour"
    global.Dex_Names[228] = "Houndour";
    global.Dex_Sprites[228] = SPR_Houndour;
    global.Dex_Primary_Types[228] = "Dark";
    global.Dex_Secondary_Types[228] = "Fire";
    global.Dex_Portrait[228] = ICO_0228;

    // Pokemon 229 - "Houndoom"
    global.Dex_Names[229] = "Houndoom";
    global.Dex_Sprites[229] = SPR_Houndoom;
    global.Dex_Primary_Types[229] = "Dark";
    global.Dex_Secondary_Types[229] = "Fire";
    global.Dex_Portrait[229] = ICO_0229;

    // Pokemon 230 - "Kingdra"
    global.Dex_Names[230] = "Kingdra";
    global.Dex_Sprites[230] = SPR_Kingdra;
    global.Dex_Primary_Types[230] = "Water";
    global.Dex_Secondary_Types[230] = "Dragon";
    global.Dex_Portrait[230] = ICO_0230;

    // Pokemon 231 - "Phanpy"
    global.Dex_Names[231] = "Phanpy";
    global.Dex_Sprites[231] = SPR_Phanpy;
    global.Dex_Primary_Types[231] = "Ground";
    global.Dex_Secondary_Types[231] = "";
    global.Dex_Portrait[231] = ICO_0231;

    // Pokemon 232 - "Donphan"
    global.Dex_Names[232] = "Donphan";
    global.Dex_Sprites[232] = SPR_Donphan;
    global.Dex_Primary_Types[232] = "Ground";
    global.Dex_Secondary_Types[232] = "";
    global.Dex_Portrait[232] = ICO_0232;

    // Pokemon 233 - "Porygon2"
    global.Dex_Names[233] = "Porygon2";
    global.Dex_Sprites[233] = SPR_Porygon2;
    global.Dex_Primary_Types[233] = "Normal";
    global.Dex_Secondary_Types[233] = "";
    global.Dex_Portrait[233] = ICO_0233;

    // Pokemon 234 - "Stantler"
    global.Dex_Names[234] = "Stantler";
    global.Dex_Sprites[234] = SPR_Stantler;
    global.Dex_Primary_Types[234] = "Normal";
    global.Dex_Secondary_Types[234] = "";
    global.Dex_Portrait[234] = ICO_0234;

    // Pokemon 235 - "Smeargle"
    global.Dex_Names[235] = "Smeargle";
    global.Dex_Sprites[235] = SPR_Smeargle;
    global.Dex_Primary_Types[235] = "Normal";
    global.Dex_Secondary_Types[235] = "";
    global.Dex_Portrait[235] = ICO_0235;

    // Pokemon 236 - "Tyrogue"
    global.Dex_Names[236] = "Tyrogue";
    global.Dex_Sprites[236] = SPR_Tyrogue;
    global.Dex_Primary_Types[236] = "Fighting";
    global.Dex_Secondary_Types[236] = "";
    global.Dex_Portrait[236] = ICO_0236;

    // Pokemon 237 - "Hitmontop"
    global.Dex_Names[237] = "Hitmontop";
    global.Dex_Sprites[237] = SPR_Hitmontop;
    global.Dex_Primary_Types[237] = "Fighting";
    global.Dex_Secondary_Types[237] = "";
    global.Dex_Portrait[237] = ICO_0237;

    // Pokemon 238 - "Smoochum"
    global.Dex_Names[238] = "Smoochum";
    global.Dex_Sprites[238] = SPR_Smoochum;
    global.Dex_Primary_Types[238] = "Ice";
    global.Dex_Secondary_Types[238] = "Psychic";
    global.Dex_Portrait[238] = ICO_0238;

    // Pokemon 239 - "Elekid"
    global.Dex_Names[239] = "Elekid";
    global.Dex_Sprites[239] = SPR_Elekid;
    global.Dex_Primary_Types[239] = "Electric";
    global.Dex_Secondary_Types[239] = "";
    global.Dex_Portrait[239] = ICO_0239;

    // Pokemon 240 - "Magby"
    global.Dex_Names[240] = "Magby";
    global.Dex_Sprites[240] = SPR_Magby;
    global.Dex_Primary_Types[240] = "Fire";
    global.Dex_Secondary_Types[240] = "";
    global.Dex_Portrait[240] = ICO_0240;

    // Pokemon 241 - "Miltank"
    global.Dex_Names[241] = "Miltank";
    global.Dex_Sprites[241] = SPR_Miltank;
    global.Dex_Primary_Types[241] = "Normal";
    global.Dex_Secondary_Types[241] = "";
    global.Dex_Portrait[241] = ICO_0241;

    // Pokemon 242 - "Blissey"
    global.Dex_Names[242] = "Blissey";
    global.Dex_Sprites[242] = SPR_Blissey;
    global.Dex_Primary_Types[242] = "Normal";
    global.Dex_Secondary_Types[242] = "";
    global.Dex_Portrait[242] = ICO_0242;

    // Pokemon 243 - "Raikou"
    global.Dex_Names[243] = "Raikou";
    global.Dex_Sprites[243] = SPR_Raikou;
    global.Dex_Primary_Types[243] = "Electric";
    global.Dex_Secondary_Types[243] = "";
    global.Dex_Portrait[243] = ICO_0243;

    // Pokemon 244 - "Entei"
    global.Dex_Names[244] = "Entei";
    global.Dex_Sprites[244] = SPR_Entei;
    global.Dex_Primary_Types[244] = "Fire";
    global.Dex_Secondary_Types[244] = "";
    global.Dex_Portrait[244] = ICO_0244;

    // Pokemon 245 - "Suicune"
    global.Dex_Names[245] = "Suicune";
    global.Dex_Sprites[245] = SPR_Suicune;
    global.Dex_Primary_Types[245] = "Water";
    global.Dex_Secondary_Types[245] = "";
    global.Dex_Portrait[245] = ICO_0245;

    // Pokemon 246 - "Larvitar"
    global.Dex_Names[246] = "Larvitar";
    global.Dex_Sprites[246] = SPR_Larvitar;
    global.Dex_Primary_Types[246] = "Rock";
    global.Dex_Secondary_Types[246] = "Ground";
    global.Dex_Portrait[246] = ICO_0246;

    // Pokemon 247 - "Pupitar"
    global.Dex_Names[247] = "Pupitar";
    global.Dex_Sprites[247] = SPR_Pupitar;
    global.Dex_Primary_Types[247] = "Rock";
    global.Dex_Secondary_Types[247] = "Ground";
    global.Dex_Portrait[247] = ICO_0247;

    // Pokemon 248 - "Tyranitar"
    global.Dex_Names[248] = "Tyranitar";
    global.Dex_Sprites[248] = SPR_Tyranitar;
    global.Dex_Primary_Types[248] = "Rock";
    global.Dex_Secondary_Types[248] = "Dark";
    global.Dex_Portrait[248] = ICO_0248;

    // Pokemon 249 - "Lugia"
    global.Dex_Names[249] = "Lugia";
    global.Dex_Sprites[249] = SPR_Lugia;
    global.Dex_Primary_Types[249] = "Psychic";
    global.Dex_Secondary_Types[249] = "Flying";
    global.Dex_Portrait[249] = ICO_0249;

    // Pokemon 250 - "Ho-oh"
    global.Dex_Names[250] = "Ho-oh";
    global.Dex_Sprites[250] = SPR_Hooh;
    global.Dex_Primary_Types[250] = "Fire";
    global.Dex_Secondary_Types[250] = "Flying";
    global.Dex_Portrait[250] = ICO_0250;

    // Pokemon 251 - "Celebi"
    global.Dex_Names[251] = "Celebi";
    global.Dex_Sprites[251] = SPR_Celebi;
    global.Dex_Primary_Types[251] = "Psychic";
    global.Dex_Secondary_Types[251] = "Grass";
    global.Dex_Portrait[251] = ICO_0251;
}