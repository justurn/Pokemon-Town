pokedex_id = global.pokemon_ID;	            
pokemon_name = global.Dex_Names[pokedex_id];
sprite_index = global.Dex_Sprites[pokedex_id];

// Sprite Scaling
scale_factor = 3;
image_yscale = scale_factor;
image_xscale = -scale_factor;

hb_x1 = x + 200
hb_y1 = y - sprite_height/2

hb_height = 25;
hb_width = 300;

hb_x2 = hb_x1 + hb_width
hb_y2 = hb_y1 + hb_height