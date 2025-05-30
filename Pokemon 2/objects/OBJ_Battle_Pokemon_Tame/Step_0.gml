if (current_hp <= 0)
{
    global.pokemon_health = current_hp;
    show_debug_message("Wild " + string(global.Dex_Names[global.wild_pokemon_a_id]) + " wins the battle!");
    room_goto(RM_Town);
}