function SCR_Moves_Bug()
{
    // Bug Type Moves - IDs 601-700 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Bug Moves (601-610)
    // Score 120 Physical (3 moves)
    global.move_name[601] = "String Shot";
    global.move_type[601] = "Bug";
    global.move_type_id[601] = 6;
    global.move_is_physical[601] = true;
    global.move_power[601] = 20;
    global.move_accuracy[601] = 100; // Score: 120
    
    global.move_name[602] = "Infestation";
    global.move_type[602] = "Bug";
    global.move_type_id[602] = 6;
    global.move_is_physical[602] = true;
    global.move_power[602] = 35;
    global.move_accuracy[602] = 85; // Score: 120
    
    global.move_name[603] = "Twineedle";
    global.move_type[603] = "Bug";
    global.move_type_id[603] = 6;
    global.move_is_physical[603] = true;
    global.move_power[603] = 45;
    global.move_accuracy[603] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[604] = "Bug Bite";
    global.move_type[604] = "Bug";
    global.move_type_id[604] = 6;
    global.move_is_physical[604] = true;
    global.move_power[604] = 60;
    global.move_accuracy[604] = 100; // Score: 160
    
    global.move_name[605] = "U-turn";
    global.move_type[605] = "Bug";
    global.move_type_id[605] = 6;
    global.move_is_physical[605] = true;
    global.move_power[605] = 70;
    global.move_accuracy[605] = 90; // Score: 160
    
    global.move_name[606] = "X-Scissor";
    global.move_type[606] = "Bug";
    global.move_type_id[606] = 6;
    global.move_is_physical[606] = true;
    global.move_power[606] = 80;
    global.move_accuracy[606] = 80; // Score: 160
    
    global.move_name[607] = "Leech Life";
    global.move_type[607] = "Bug";
    global.move_type_id[607] = 6;
    global.move_is_physical[607] = true;
    global.move_power[607] = 85;
    global.move_accuracy[607] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[608] = "Megahorn";
    global.move_type[608] = "Bug";
    global.move_type_id[608] = 6;
    global.move_is_physical[608] = true;
    global.move_power[608] = 100;
    global.move_accuracy[608] = 100; // Score: 200
    
    global.move_name[609] = "First Impression";
    global.move_type[609] = "Bug";
    global.move_type_id[609] = 6;
    global.move_is_physical[609] = true;
    global.move_power[609] = 100;
    global.move_accuracy[609] = 100; // Score: 200
    
    global.move_name[610] = "Lunge";
    global.move_type[610] = "Bug";
    global.move_type_id[610] = 6;
    global.move_is_physical[610] = true;
    global.move_power[610] = 100;
    global.move_accuracy[610] = 100; // Score: 200
    
    // Special Bug Moves (611-620)
    // Score 120 Special (3 moves)
    global.move_name[611] = "Struggle Bug";
    global.move_type[611] = "Bug";
    global.move_type_id[611] = 6;
    global.move_is_physical[611] = false;
    global.move_power[611] = 20;
    global.move_accuracy[611] = 100; // Score: 120
    
    global.move_name[612] = "Fury Cutter";
    global.move_type[612] = "Bug";
    global.move_type_id[612] = 6;
    global.move_is_physical[612] = false;
    global.move_power[612] = 35;
    global.move_accuracy[612] = 85; // Score: 120
    
    global.move_name[613] = "Pin Missile";
    global.move_type[613] = "Bug";
    global.move_type_id[613] = 6;
    global.move_is_physical[613] = false;
    global.move_power[613] = 45;
    global.move_accuracy[613] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[614] = "Silver Wind";
    global.move_type[614] = "Bug";
    global.move_type_id[614] = 6;
    global.move_is_physical[614] = false;
    global.move_power[614] = 60;
    global.move_accuracy[614] = 100; // Score: 160
    
    global.move_name[615] = "Signal Beam";
    global.move_type[615] = "Bug";
    global.move_type_id[615] = 6;
    global.move_is_physical[615] = false;
    global.move_power[615] = 70;
    global.move_accuracy[615] = 90; // Score: 160
    
    global.move_name[616] = "Bug Buzz";
    global.move_type[616] = "Bug";
    global.move_type_id[616] = 6;
    global.move_is_physical[616] = false;
    global.move_power[616] = 80;
    global.move_accuracy[616] = 80; // Score: 160
    
    global.move_name[617] = "Attack Order";
    global.move_type[617] = "Bug";
    global.move_type_id[617] = 6;
    global.move_is_physical[617] = false;
    global.move_power[617] = 85;
    global.move_accuracy[617] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[618] = "Bug Barrage";
    global.move_type[618] = "Bug";
    global.move_type_id[618] = 6;
    global.move_is_physical[618] = false;
    global.move_power[618] = 100;
    global.move_accuracy[618] = 100; // Score: 200
    
    global.move_name[619] = "Swarm Strike";
    global.move_type[619] = "Bug";
    global.move_type_id[619] = 6;
    global.move_is_physical[619] = false;
    global.move_power[619] = 100;
    global.move_accuracy[619] = 100; // Score: 200
    
    global.move_name[620] = "Buzzing Blast";
    global.move_type[620] = "Bug";
    global.move_type_id[620] = 6;
    global.move_is_physical[620] = false;
    global.move_power[620] = 100;
    global.move_accuracy[620] = 100; // Score: 200
    
    show_debug_message("Bug type moves loaded (IDs 601-620)");
}