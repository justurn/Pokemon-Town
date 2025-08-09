/// @description Batch import Pokemon sprite sheets
/// This script should be run from within GameMaker Studio 2
/// Place this in a script resource and execute it

function batch_import_pokemon_sprites() {
    var base_path = "Assets/SpriteCollab-master/";
    var pokemon_list = [
        "bulbasaur", "ivysaur", "venusaur", "charmander", "charmeleon", "charizard",
        "squirtle", "wartortle", "blastoise", "caterpie", "metapod", "butterfree"
        // Add more Pokemon names as needed
    ];
    
    var animations = ["Idle", "Walk", "Attack", "Sleep", "Hurt", "Special"];
    
    var imported_count = 0;
    
    for (var i = 0; i < array_length(pokemon_list); i++) {
        var pokemon_name = pokemon_list[i];
        
        for (var j = 0; j < array_length(animations); j++) {
            var animation = animations[j];
            var sprite_path = base_path + pokemon_name + "/" + animation + ".png";
            var sprite_name = "SPR_" + string_upper(string_char_at(pokemon_name, 1)) + 
                            string_delete(pokemon_name, 1, 1) + "_" + animation;
            
            // Check if file exists
            if (file_exists(sprite_path)) {
                // Import sprite (Note: This requires GameMaker Studio 2 IDE functions)
                // sprite_add() only works at runtime, not for permanent asset creation
                show_debug_message("Found: " + sprite_path + " -> " + sprite_name);
                imported_count++;
            } else {
                show_debug_message("Missing: " + sprite_path);
            }
        }
    }
    
    show_debug_message("Total sprites found: " + string(imported_count));
}

// Execute the function
batch_import_pokemon_sprites();