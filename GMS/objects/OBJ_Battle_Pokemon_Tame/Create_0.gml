pokedex_id = global.pokemon_ID;	            
pokemon_name = global.Dex_Names[pokedex_id];
primary_type = global.Dex_Primary_Types[pokedex_id];
primary_type_id = SCR_Get_Type_Index(primary_type);
secondary_type = global.Dex_Secondary_Types[pokedex_id];
secondary_type_id = SCR_Get_Type_Index(secondary_type);
sprite_index = global.Dex_Sprites[pokedex_id];

// Sprite Scaling
scale_factor = 2;
image_yscale = scale_factor;
image_xscale = -scale_factor;

hb_height = 25;
hb_width = 250;

hb_x1 = x + 100
hb_y1 = y - hb_height/2

hb_x2 = hb_x1 + hb_width
hb_y2 = hb_y1 + hb_height

// Stats
attack = global.pokemon_attack;
spattack = global.pokemon_SPattack;
defence = global.pokemon_defence;
spdefence = global.pokemon_SPdefence;
speedstat = global.pokemon_speed;
current_hp = global.pokemon_health;
max_hp = global.pokemon_health_max
level = global.pokemon_level;
crit = global.pokemon_crit;