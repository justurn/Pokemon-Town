pokedex_id = global.pokemon_ID;	            
pokemon_name = global.Dex_Names[pokedex_id];
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

// Reset the wild pokemon outside...
global.wild_pokemon_id = 0;
global.wild_pokemon_x = -1;