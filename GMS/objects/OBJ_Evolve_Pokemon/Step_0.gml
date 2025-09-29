evolution_timer += 1;
flash_timer += 1;

// 1. Flashing Effect (Toggle visibility every `flash_interval`)
if (flash_timer >= flash_interval) 
{
    flashing = !flashing;
    flash_timer = 0;
}

// 2. Scaling Effect (Subtle pulsing)
image_xscale = scale_factor + 0.1 * sin(evolution_timer * 0.1);
image_yscale = scale_factor + 0.1 * sin(evolution_timer * 0.1);

// 3. Transition to New Pokémon Sprite (After X frames)
if (evolution_timer == 90) 
{
	switch (pokedex_id) 
	{
	    case 133: // Eevee evolves into one of three options
	        pokedex_id = choose(134, 135, 136, 196, 197);
	        break;

	    case 42: // Golbat evolves into Crobat
	        pokedex_id = 169;
	        break;
			
		case 44: // Gloom evolves into Vileplume or Bellossom
	        pokedex_id = choose(45, 182);
	        break;

		case 61: // Poliwhirl evolves into Poliwrath or Politoed
	        pokedex_id = choose(62, 186);
	        break;
			
		case 80: // Slowbro evolves into Slowking
	        pokedex_id = 199;
	        break;
			
		case 95: // Onix evolves into Steelix
	        pokedex_id = 208;
	        break;		
						
		case 113: // Chansey evolves into Blissey
	        pokedex_id = 242;
	        break;	

		case 117: // Seadra evolves into Kingdra
	        pokedex_id = 230;
	        break;			

		case 123: // Scyther evolves into Scizor
	        pokedex_id = 212;
	        break;	
			
		case 137: // Porygon evolves into Porygon2
	        pokedex_id = 233;
	        break;	
			
		case 172: // Pichu evolves into Pikachu
	        pokedex_id = 25;
	        break;		
			
		case 173: // Cleffa evolves into Clefairy
	        pokedex_id = 35;
	        break;
			
		case 174: // Igglybuff evolves into Jigglypuff
	        pokedex_id = 39;
	        break;
			
		case 236: // Tyrogue evolves into Hitmontop, Hitmonlee or Hitmonchamp
	        pokedex_id = choose(237, 107, 106);
	        break;
			
		case 238: // Smoochum evolves into Jynx
	        pokedex_id = 124;
	        break;
			
		case 239: // Elekid evolves into Electabuzz
	        pokedex_id = 125;
	        break;
			
		case 240: // Magby evolves into Magmar
	        pokedex_id = 126;
	        break;
			
		case 298: // Azurill evolves into Marill
	        pokedex_id = 183;
	        break;
				
	    default:
	        pokedex_id += 1; // Get new evolution ID
	        break;
	}
	
    sprite_index = global.Dex_Sprites[pokedex_id];  // Change sprite
}

// 4. Fade Out & Transition
if (evolution_timer > 120) 
{
    alpha_value -= 0.02;  // Gradually disappear
    if (alpha_value <= 0) 
	{
        evolution_complete = true;
    }
}

// 5. Move to New Room After Evolution
if (evolution_complete) 
{
    global.pokemon_ID = pokedex_id;  // Update Pokémon ID
	
	SCR_Pokemon_Stats();
	
	global.pokemon_health = global.pokemon_health_max;
	
    room_goto(RM_Town);   // Return to previous room
}
