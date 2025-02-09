pokedex_id = global.wild_pokemon_id
pokemon_name = global.Dex_Names[pokedex_id];
type = global.Dex_Primary_Types[pokedex_id];
type_id = SCR_Get_Type_Index(type);
sprite_index = global.Dex_Sprites[pokedex_id];

// Sprite Scaling
scale_factor = 3;
image_yscale = scale_factor;
image_xscale = scale_factor;

hb_height = 25;
hb_width = 300;

hb_x1 = x - 500
hb_y1 = y - hb_height/2

hb_x2 = hb_x1 + hb_width
hb_y2 = hb_y1 + hb_height

// Stats
attack = global.Dex_Attack[pokedex_id];
spattack = global.Dex_SPattack[pokedex_id];
defence = global.Dex_Defence[pokedex_id];
spdefence = global.Dex_SPdefence[pokedex_id];
speedstat = global.Dex_Speed[pokedex_id];
max_hp = global.Dex_Health[pokedex_id];
current_hp = max_hp
level = 5;






