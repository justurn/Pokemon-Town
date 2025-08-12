/*
 * SCR_Pokemon_Evolution_Gen2.gml
 * 
 * POKEMON DATA MODULE - Generation 2 Evolution & Breeding
 * 
 * This script initializes Generation 2 Pokemon evolution and breeding data (IDs 152-251):
 * - Evolution levels (-1 for final evolutions)
 * - Egg hatching availability ("True" or "False")
 * 
 * Uses original Pokedex structure for maximum clarity and consistency.
 * 
 * EDITING GUIDELINES:
 * - Pokemon are in sequential order (152, 153, 154...)
 * - Use -1 for Pokemon that don't evolve (final forms)
 * - Use "True" for Pokemon that can hatch from eggs
 * - Use "False" for Pokemon that cannot hatch from eggs
 * 
 * CREATED: August 2025
 * POKEMON COUNT: 100 (Johto Region)
 * EXTRACTED: From original SCR_Pokedex.gml via automation
 */

function SCR_Pokemon_Evolution_Gen2() {
    // Pokemon 152 - "Chikorita"
    global.Dex_Evolve_Level[152] = 16;
    global.Dex_Hatching[152] = "True";

    // Pokemon 153 - "Bayleef"
    global.Dex_Evolve_Level[153] = 32;
    global.Dex_Hatching[153] = "False";

    // Pokemon 154 - "Meganium"
    global.Dex_Evolve_Level[154] = -1;
    global.Dex_Hatching[154] = "False";

    // Pokemon 155 - "Cyndaquil"
    global.Dex_Evolve_Level[155] = 14;
    global.Dex_Hatching[155] = "True";

    // Pokemon 156 - "Quilava"
    global.Dex_Evolve_Level[156] = 36;
    global.Dex_Hatching[156] = "False";

    // Pokemon 157 - "Typhlosion"
    global.Dex_Evolve_Level[157] = -1;
    global.Dex_Hatching[157] = "False";

    // Pokemon 158 - "Totodile"
    global.Dex_Evolve_Level[158] = 18;
    global.Dex_Hatching[158] = "True";

    // Pokemon 159 - "Croconaw"
    global.Dex_Evolve_Level[159] = 30;
    global.Dex_Hatching[159] = "False";

    // Pokemon 160 - "Feraligatr"
    global.Dex_Evolve_Level[160] = -1;
    global.Dex_Hatching[160] = "False";

    // Pokemon 161 - "Sentret"
    global.Dex_Evolve_Level[161] = 15;
    global.Dex_Hatching[161] = "True";

    // Pokemon 162 - "Furret"
    global.Dex_Evolve_Level[162] = -1;
    global.Dex_Hatching[162] = "False";

    // Pokemon 163 - "Hoothoot"
    global.Dex_Evolve_Level[163] = 18;
    global.Dex_Hatching[163] = "True";

    // Pokemon 164 - "Noctowl"
    global.Dex_Evolve_Level[164] = -1;
    global.Dex_Hatching[164] = "False";

    // Pokemon 165 - "Ledyba"
    global.Dex_Evolve_Level[165] = 18;
    global.Dex_Hatching[165] = "True";

    // Pokemon 166 - "Ledian"
    global.Dex_Evolve_Level[166] = -1;
    global.Dex_Hatching[166] = "False";

    // Pokemon 167 - "Spinarak"
    global.Dex_Evolve_Level[167] = 22;
    global.Dex_Hatching[167] = "True";

    // Pokemon 168 - "Ariados"
    global.Dex_Evolve_Level[168] = -1;
    global.Dex_Hatching[168] = "False";

    // Pokemon 169 - "Crobat"
    global.Dex_Evolve_Level[169] = -1;
    global.Dex_Hatching[169] = "False";

    // Pokemon 170 - "Chinchou"
    global.Dex_Evolve_Level[170] = 27;
    global.Dex_Hatching[170] = "True";

    // Pokemon 171 - "Lanturn"
    global.Dex_Evolve_Level[171] = -1;
    global.Dex_Hatching[171] = "False";

    // Pokemon 172 - "Pichu"
    global.Dex_Evolve_Level[172] = 10;
    global.Dex_Hatching[172] = "True";

    // Pokemon 173 - "Cleffa"
    global.Dex_Evolve_Level[173] = 10;
    global.Dex_Hatching[173] = "True";

    // Pokemon 174 - "Igglybuff"
    global.Dex_Evolve_Level[174] = 10;
    global.Dex_Hatching[174] = "True";

    // Pokemon 175 - "Togepi"
    global.Dex_Evolve_Level[175] = 10;
    global.Dex_Hatching[175] = "True";

    // Pokemon 176 - "Togetic"
    global.Dex_Evolve_Level[176] = -1;
    global.Dex_Hatching[176] = "False";

    // Pokemon 177 - "Natu"
    global.Dex_Evolve_Level[177] = 25;
    global.Dex_Hatching[177] = "True";

    // Pokemon 178 - "Xatu"
    global.Dex_Evolve_Level[178] = -1;
    global.Dex_Hatching[178] = "False";

    // Pokemon 179 - "Mareep"
    global.Dex_Evolve_Level[179] = 15;
    global.Dex_Hatching[179] = "True";

    // Pokemon 180 - "Flaaffy"
    global.Dex_Evolve_Level[180] = 30;
    global.Dex_Hatching[180] = "False";

    // Pokemon 181 - "Ampharos"
    global.Dex_Evolve_Level[181] = -1;
    global.Dex_Hatching[181] = "False";

    // Pokemon 182 - "Bellossom"
    global.Dex_Evolve_Level[182] = -1;
    global.Dex_Hatching[182] = "False";

    // Pokemon 183 - "Marill"
    global.Dex_Evolve_Level[183] = 18;
    global.Dex_Hatching[183] = "True";

    // Pokemon 184 - "Azumarill"
    global.Dex_Evolve_Level[184] = -1;
    global.Dex_Hatching[184] = "False";

    // Pokemon 185 - "Sudowoodo"
    global.Dex_Evolve_Level[185] = -1;
    global.Dex_Hatching[185] = "True";

    // Pokemon 186 - "Politoed"
    global.Dex_Evolve_Level[186] = -1;
    global.Dex_Hatching[186] = "False";

    // Pokemon 187 - "Hoppip"
    global.Dex_Evolve_Level[187] = 18;
    global.Dex_Hatching[187] = "True";

    // Pokemon 188 - "Skiploom"
    global.Dex_Evolve_Level[188] = 27;
    global.Dex_Hatching[188] = "False";

    // Pokemon 189 - "Jumpluff"
    global.Dex_Evolve_Level[189] = -1;
    global.Dex_Hatching[189] = "False";

    // Pokemon 190 - "Aipom"
    global.Dex_Evolve_Level[190] = -1;
    global.Dex_Hatching[190] = "True";

    // Pokemon 191 - "Sunkern"
    global.Dex_Evolve_Level[191] = 20;
    global.Dex_Hatching[191] = "True";

    // Pokemon 192 - "Sunflora"
    global.Dex_Evolve_Level[192] = -1;
    global.Dex_Hatching[192] = "False";

    // Pokemon 193 - "Yanma"
    global.Dex_Evolve_Level[193] = -1;
    global.Dex_Hatching[193] = "True";

    // Pokemon 194 - "Wooper"
    global.Dex_Evolve_Level[194] = 20;
    global.Dex_Hatching[194] = "True";

    // Pokemon 195 - "Quagsire"
    global.Dex_Evolve_Level[195] = -1;
    global.Dex_Hatching[195] = "False";

    // Pokemon 196 - "Espeon"
    global.Dex_Evolve_Level[196] = -1;
    global.Dex_Hatching[196] = "False";

    // Pokemon 197 - "Umbreon"
    global.Dex_Evolve_Level[197] = -1;
    global.Dex_Hatching[197] = "False";

    // Pokemon 198 - "Murkrow"
    global.Dex_Evolve_Level[198] = -1;
    global.Dex_Hatching[198] = "True";

    // Pokemon 199 - "Slowking"
    global.Dex_Evolve_Level[199] = -1;
    global.Dex_Hatching[199] = "False";

    // Pokemon 200 - "Misdreavous"
    global.Dex_Evolve_Level[200] = -1;
    global.Dex_Hatching[200] = "True";

    // Pokemon 201 - "Unown"
    global.Dex_Evolve_Level[201] = -1;
    global.Dex_Hatching[201] = "True";

    // Pokemon 202 - "Wobbuffet"
    global.Dex_Evolve_Level[202] = -1;
    global.Dex_Hatching[202] = "False";

    // Pokemon 203 - "Girafarig"
    global.Dex_Evolve_Level[203] = -1;
    global.Dex_Hatching[203] = "True";

    // Pokemon 204 - "Pineco"
    global.Dex_Evolve_Level[204] = 31;
    global.Dex_Hatching[204] = "True";

    // Pokemon 205 - "Forretress"
    global.Dex_Evolve_Level[205] = -1;
    global.Dex_Hatching[205] = "False";

    // Pokemon 206 - "Dunsparce"
    global.Dex_Evolve_Level[206] = -1;
    global.Dex_Hatching[206] = "True";

    // Pokemon 207 - "Gligar"
    global.Dex_Evolve_Level[207] = -1;
    global.Dex_Hatching[207] = "True";

    // Pokemon 208 - "Steelix"
    global.Dex_Evolve_Level[208] = -1;
    global.Dex_Hatching[208] = "False";

    // Pokemon 209 - "Snubbull"
    global.Dex_Evolve_Level[209] = 23;
    global.Dex_Hatching[209] = "True";

    // Pokemon 210 - "Granbull"
    global.Dex_Evolve_Level[210] = -1;
    global.Dex_Hatching[210] = "False";

    // Pokemon 211 - "Qwilfish"
    global.Dex_Evolve_Level[211] = -1;
    global.Dex_Hatching[211] = "True";

    // Pokemon 212 - "Scizor"
    global.Dex_Evolve_Level[212] = -1;
    global.Dex_Hatching[212] = "False";

    // Pokemon 213 - "Shuckle"
    global.Dex_Evolve_Level[213] = -1;
    global.Dex_Hatching[213] = "True";

    // Pokemon 214 - "Heracross"
    global.Dex_Evolve_Level[214] = -1;
    global.Dex_Hatching[214] = "True";

    // Pokemon 215 - "Sneasel"
    global.Dex_Evolve_Level[215] = -1;
    global.Dex_Hatching[215] = "True";

    // Pokemon 216 - "Teddiursa"
    global.Dex_Evolve_Level[216] = 30;
    global.Dex_Hatching[216] = "True";

    // Pokemon 217 - "Ursaring"
    global.Dex_Evolve_Level[217] = -1;
    global.Dex_Hatching[217] = "False";

    // Pokemon 218 - "Slugma"
    global.Dex_Evolve_Level[218] = 38;
    global.Dex_Hatching[218] = "True";

    // Pokemon 219 - "Magcargo"
    global.Dex_Evolve_Level[219] = -1;
    global.Dex_Hatching[219] = "False";

    // Pokemon 220 - "Swinub"
    global.Dex_Evolve_Level[220] = 33;
    global.Dex_Hatching[220] = "True";

    // Pokemon 221 - "Piloswine"
    global.Dex_Evolve_Level[221] = -1;
    global.Dex_Hatching[221] = "False";

    // Pokemon 222 - "Corsola"
    global.Dex_Evolve_Level[222] = -1;
    global.Dex_Hatching[222] = "True";

    // Pokemon 223 - "Remoraid"
    global.Dex_Evolve_Level[223] = 25;
    global.Dex_Hatching[223] = "True";

    // Pokemon 224 - "Octillery"
    global.Dex_Evolve_Level[224] = -1;
    global.Dex_Hatching[224] = "False";

    // Pokemon 225 - "Delibird"
    global.Dex_Evolve_Level[225] = -1;
    global.Dex_Hatching[225] = "True";

    // Pokemon 226 - "Mantine"
    global.Dex_Evolve_Level[226] = -1;
    global.Dex_Hatching[226] = "False";

    // Pokemon 227 - "Skarmory"
    global.Dex_Evolve_Level[227] = -1;
    global.Dex_Hatching[227] = "True";

    // Pokemon 228 - "Houndour"
    global.Dex_Evolve_Level[228] = 24;
    global.Dex_Hatching[228] = "True";

    // Pokemon 229 - "Houndoom"
    global.Dex_Evolve_Level[229] = -1;
    global.Dex_Hatching[229] = "False";

    // Pokemon 230 - "Kingdra"
    global.Dex_Evolve_Level[230] = -1;
    global.Dex_Hatching[230] = "False";

    // Pokemon 231 - "Phanpy"
    global.Dex_Evolve_Level[231] = 25;
    global.Dex_Hatching[231] = "True";

    // Pokemon 232 - "Donphan"
    global.Dex_Evolve_Level[232] = -1;
    global.Dex_Hatching[232] = "False";

    // Pokemon 233 - "Porygon2"
    global.Dex_Evolve_Level[233] = -1;
    global.Dex_Hatching[233] = "False";

    // Pokemon 234 - "Stantler"
    global.Dex_Evolve_Level[234] = -1;
    global.Dex_Hatching[234] = "True";

    // Pokemon 235 - "Smeargle"
    global.Dex_Evolve_Level[235] = -1;
    global.Dex_Hatching[235] = "True";

    // Pokemon 236 - "Tyrogue"
    global.Dex_Evolve_Level[236] = 20;
    global.Dex_Hatching[236] = "True";

    // Pokemon 237 - "Hitmontop"
    global.Dex_Evolve_Level[237] = -1;
    global.Dex_Hatching[237] = "False";

    // Pokemon 238 - "Smoochum"
    global.Dex_Evolve_Level[238] = 30;
    global.Dex_Hatching[238] = "True";

    // Pokemon 239 - "Elekid"
    global.Dex_Evolve_Level[239] = 30;
    global.Dex_Hatching[239] = "True";

    // Pokemon 240 - "Magby"
    global.Dex_Evolve_Level[240] = 30;
    global.Dex_Hatching[240] = "True";

    // Pokemon 241 - "Miltank"
    global.Dex_Evolve_Level[241] = -1;
    global.Dex_Hatching[241] = "True";

    // Pokemon 242 - "Blissey"
    global.Dex_Evolve_Level[242] = -1;
    global.Dex_Hatching[242] = "False";

    // Pokemon 243 - "Raikou"
    global.Dex_Evolve_Level[243] = -1;
    global.Dex_Hatching[243] = "True";

    // Pokemon 244 - "Entei"
    global.Dex_Evolve_Level[244] = -1;
    global.Dex_Hatching[244] = "True";

    // Pokemon 245 - "Suicune"
    global.Dex_Evolve_Level[245] = -1;
    global.Dex_Hatching[245] = "True";

    // Pokemon 246 - "Larvitar"
    global.Dex_Evolve_Level[246] = 30;
    global.Dex_Hatching[246] = "True";

    // Pokemon 247 - "Pupitar"
    global.Dex_Evolve_Level[247] = 55;
    global.Dex_Hatching[247] = "False";

    // Pokemon 248 - "Tyranitar"
    global.Dex_Evolve_Level[248] = -1;
    global.Dex_Hatching[248] = "False";

    // Pokemon 249 - "Lugia"
    global.Dex_Evolve_Level[249] = -1;
    global.Dex_Hatching[249] = "True";

    // Pokemon 250 - "Ho-oh"
    global.Dex_Evolve_Level[250] = -1;
    global.Dex_Hatching[250] = "True";

    // Pokemon 251 - "Celebi"
    global.Dex_Evolve_Level[251] = -1;
    global.Dex_Hatching[251] = "True";
}