sprite_index = global.Dex_Sprites[global.wild_pokemon_id];

wild_left = x - sprite_width/2;    // Left edge of the sprite
wild_right = x + sprite_width/2;   // Right edge of the sprite

global.wild_pokemon_x = x;

// Sprite Scaling
scale_factor = 1.5;
image_yscale = scale_factor;
image_xscale = scale_factor;