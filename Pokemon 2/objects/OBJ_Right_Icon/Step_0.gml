/// @description Insert description here
// You can write your code in this editor

// Find wild Pokemon to the RIGHT of the player (accounting for room wrapping)
var right_pokemon_id = 0;
var player_x = 0;

// Get player position and room width
if (instance_exists(OBJ_Player))
{
    player_x = OBJ_Player.x;
    var room_w = room_width;
    
    // Function to calculate shortest right distance (accounting for wrapping)
    function get_right_distance(target_x, player_x, room_width)
    {
        if (target_x >= player_x)
        {
            // Target is directly to the right
            return target_x - player_x;
        }
        else
        {
            // Target is to the left, but might be closer via right wrapping
            return (room_width - player_x) + target_x;
        }
    }
    
    // Check which wild Pokemon is actually closest to the right
    if (instance_exists(OBJ_Town_Pokemon_Wild_A) && instance_exists(OBJ_Town_Pokemon_Wild_B))
    {
        // Both exist - compare right distances
        var wild_a_x = OBJ_Town_Pokemon_Wild_A.x;
        var wild_b_x = OBJ_Town_Pokemon_Wild_B.x;
        
        var right_dist_a = get_right_distance(wild_a_x, player_x, room_w);
        var right_dist_b = get_right_distance(wild_b_x, player_x, room_w);
        
        // Choose the Pokemon that's closest when moving right
        right_pokemon_id = (right_dist_a <= right_dist_b) ? global.wild_pokemon_a_id : global.wild_pokemon_b_id;
    }
    else if (instance_exists(OBJ_Town_Pokemon_Wild_A))
    {
        right_pokemon_id = global.wild_pokemon_a_id;
    }
    else if (instance_exists(OBJ_Town_Pokemon_Wild_B))
    {
        right_pokemon_id = global.wild_pokemon_b_id;
    }
}

// Update sprite if Pokemon changed
if (right_pokemon_id != 0)
{
    if (right_pokemon_id != pokemon_id)
    {
        pokemon_id = right_pokemon_id;
        sprite_index = global.Dex_Portrait[pokemon_id];
    }
}
else
{
    sprite_index = SPR_Blank;
    pokemon_id = 0;
}





