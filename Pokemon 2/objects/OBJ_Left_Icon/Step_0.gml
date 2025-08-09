/// @description Insert description here
// You can write your code in this editor

// Find wild Pokemon to the LEFT of the player (accounting for room wrapping)
var left_pokemon_id = 0;
var player_x = 0;

// Get player position and room width
if (instance_exists(OBJ_Player))
{
    player_x = OBJ_Player.x;
    var room_w = room_width;
    
    // Function to calculate shortest left distance (accounting for wrapping)
    function get_left_distance(target_x, player_x, room_width)
    {
        if (target_x <= player_x)
        {
            // Target is directly to the left
            return player_x - target_x;
        }
        else
        {
            // Target is to the right, but might be closer via left wrapping
            return (room_width - target_x) + player_x;
        }
    }
    
    // Check which wild Pokemon is actually closest to the left
    if (instance_exists(OBJ_Town_Pokemon_Wild_A) && instance_exists(OBJ_Town_Pokemon_Wild_B))
    {
        // Both exist - compare left distances
        var wild_a_x = OBJ_Town_Pokemon_Wild_A.x;
        var wild_b_x = OBJ_Town_Pokemon_Wild_B.x;
        
        var left_dist_a = get_left_distance(wild_a_x, player_x, room_w);
        var left_dist_b = get_left_distance(wild_b_x, player_x, room_w);
        
        // Choose the Pokemon that's closest when moving left
        left_pokemon_id = (left_dist_a <= left_dist_b) ? global.wild_pokemon_a_id : global.wild_pokemon_b_id;
    }
    else if (instance_exists(OBJ_Town_Pokemon_Wild_A))
    {
        left_pokemon_id = global.wild_pokemon_a_id;
    }
    else if (instance_exists(OBJ_Town_Pokemon_Wild_B))
    {
        left_pokemon_id = global.wild_pokemon_b_id;
    }
}

// Update sprite if Pokemon changed
if (left_pokemon_id != 0)
{
    if (left_pokemon_id != pokemon_id)
    {
        pokemon_id = left_pokemon_id;
        sprite_index = global.Dex_Portrait[pokemon_id];
    }
}
else
{
    sprite_index = SPR_Blank;
    pokemon_id = 0;
}





