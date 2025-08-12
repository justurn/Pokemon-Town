// Evolution Animation Variables
pokedex_id = global.pokemon_ID;
sprite_index = global.Dex_Sprites[pokedex_id];

// Scaling
scale_factor = 3;
image_yscale = scale_factor;
image_xscale = scale_factor;

// Positioning
x = room_width / 2;
y = room_height / 2;

// Animation Control
evolution_timer = 0;  // Controls animation timing
flash_interval = 5;   // How often it flashes
flash_timer = 0;      // Timer for flashes
flashing = false;     // State flag for flash effect
evolution_complete = false;  // Check if animation is done
alpha_value = 1;      // Controls fade-out
