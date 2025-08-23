function SCR_Moves_Psychic()
{
    // Psychic Type Moves - IDs 501-600 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Psychic Moves (501-510)
    // Score 120 Physical (3 moves)
    global.move_name[501] = "Confusion Jab";
    global.move_type[501] = "Psychic";
    global.move_type_id[501] = 5;
    global.move_is_physical[501] = true;
    global.move_power[501] = 20;
    global.move_accuracy[501] = 100; // Score: 120
    
    global.move_name[502] = "Psybeam Strike";
    global.move_type[502] = "Psychic";
    global.move_type_id[502] = 5;
    global.move_is_physical[502] = true;
    global.move_power[502] = 35;
    global.move_accuracy[502] = 85; // Score: 120
    
    global.move_name[503] = "Mind Slam";
    global.move_type[503] = "Psychic";
    global.move_type_id[503] = 5;
    global.move_is_physical[503] = true;
    global.move_power[503] = 45;
    global.move_accuracy[503] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[504] = "Heart Stamp";
    global.move_type[504] = "Psychic";
    global.move_type_id[504] = 5;
    global.move_is_physical[504] = true;
    global.move_power[504] = 60;
    global.move_accuracy[504] = 100; // Score: 160
    
    global.move_name[505] = "Psycho Cut";
    global.move_type[505] = "Psychic";
    global.move_type_id[505] = 5;
    global.move_is_physical[505] = true;
    global.move_power[505] = 70;
    global.move_accuracy[505] = 90; // Score: 160
    
    global.move_name[506] = "Zen Headbutt";
    global.move_type[506] = "Psychic";
    global.move_type_id[506] = 5;
    global.move_is_physical[506] = true;
    global.move_power[506] = 80;
    global.move_accuracy[506] = 80; // Score: 160
    
    global.move_name[507] = "Psychic Fangs";
    global.move_type[507] = "Psychic";
    global.move_type_id[507] = 5;
    global.move_is_physical[507] = true;
    global.move_power[507] = 85;
    global.move_accuracy[507] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[508] = "Photon Geyser";
    global.move_type[508] = "Psychic";
    global.move_type_id[508] = 5;
    global.move_is_physical[508] = true;
    global.move_power[508] = 100;
    global.move_accuracy[508] = 100; // Score: 200
    
    global.move_name[509] = "Lumina Crash";
    global.move_type[509] = "Psychic";
    global.move_type_id[509] = 5;
    global.move_is_physical[509] = true;
    global.move_power[509] = 100;
    global.move_accuracy[509] = 100; // Score: 200
    
    global.move_name[510] = "Esper Wing";
    global.move_type[510] = "Psychic";
    global.move_type_id[510] = 5;
    global.move_is_physical[510] = true;
    global.move_power[510] = 100;
    global.move_accuracy[510] = 100; // Score: 200
    
    // Special Psychic Moves (511-520)
    // Score 120 Special (3 moves)
    global.move_name[511] = "Confusion";
    global.move_type[511] = "Psychic";
    global.move_type_id[511] = 5;
    global.move_is_physical[511] = false;
    global.move_power[511] = 20;
    global.move_accuracy[511] = 100; // Score: 120
    
    global.move_name[512] = "Telekinesis";
    global.move_type[512] = "Psychic";
    global.move_type_id[512] = 5;
    global.move_is_physical[512] = false;
    global.move_power[512] = 35;
    global.move_accuracy[512] = 85; // Score: 120
    
    global.move_name[513] = "Mind Reader";
    global.move_type[513] = "Psychic";
    global.move_type_id[513] = 5;
    global.move_is_physical[513] = false;
    global.move_power[513] = 45;
    global.move_accuracy[513] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[514] = "Psybeam";
    global.move_type[514] = "Psychic";
    global.move_type_id[514] = 5;
    global.move_is_physical[514] = false;
    global.move_power[514] = 60;
    global.move_accuracy[514] = 100; // Score: 160
    
    global.move_name[515] = "Psychic Blast";
    global.move_type[515] = "Psychic";
    global.move_type_id[515] = 5;
    global.move_is_physical[515] = false;
    global.move_power[515] = 70;
    global.move_accuracy[515] = 90; // Score: 160
    
    global.move_name[516] = "Psyshock";
    global.move_type[516] = "Psychic";
    global.move_type_id[516] = 5;
    global.move_is_physical[516] = false;
    global.move_power[516] = 80;
    global.move_accuracy[516] = 80; // Score: 160
    
    global.move_name[517] = "Extrasensory";
    global.move_type[517] = "Psychic";
    global.move_type_id[517] = 5;
    global.move_is_physical[517] = false;
    global.move_power[517] = 85;
    global.move_accuracy[517] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[518] = "Psychic";
    global.move_type[518] = "Psychic";
    global.move_type_id[518] = 5;
    global.move_is_physical[518] = false;
    global.move_power[518] = 100;
    global.move_accuracy[518] = 100; // Score: 200
    
    global.move_name[519] = "Future Sight";
    global.move_type[519] = "Psychic";
    global.move_type_id[519] = 5;
    global.move_is_physical[519] = false;
    global.move_power[519] = 100;
    global.move_accuracy[519] = 100; // Score: 200
    
    global.move_name[520] = "Dream Eater";
    global.move_type[520] = "Psychic";
    global.move_type_id[520] = 5;
    global.move_is_physical[520] = false;
    global.move_power[520] = 100;
    global.move_accuracy[520] = 100; // Score: 200
    
    show_debug_message("Psychic type moves loaded (IDs 501-520)");
}