function SCR_Moves_Fairy()
{
    // Fairy Type Moves - IDs 1301-1400 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Fairy Moves (1301-1310)
    // Score 120 Physical (3 moves)
    global.move_name[1301] = "Tackle";
    global.move_type[1301] = "Fairy";
    global.move_type_id[1301] = 14;
    global.move_is_physical[1301] = true;
    global.move_power[1301] = 20;
    global.move_accuracy[1301] = 100; // Score: 120
    
    global.move_name[1302] = "Fairy Slap";
    global.move_type[1302] = "Fairy";
    global.move_type_id[1302] = 14;
    global.move_is_physical[1302] = true;
    global.move_power[1302] = 35;
    global.move_accuracy[1302] = 85; // Score: 120
    
    global.move_name[1303] = "Pixie Punch";
    global.move_type[1303] = "Fairy";
    global.move_type_id[1303] = 14;
    global.move_is_physical[1303] = true;
    global.move_power[1303] = 45;
    global.move_accuracy[1303] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[1304] = "Flower Trick";
    global.move_type[1304] = "Fairy";
    global.move_type_id[1304] = 14;
    global.move_is_physical[1304] = true;
    global.move_power[1304] = 60;
    global.move_accuracy[1304] = 100; // Score: 160
    
    global.move_name[1305] = "Zen Headbutt";
    global.move_type[1305] = "Fairy";
    global.move_type_id[1305] = 14;
    global.move_is_physical[1305] = true;
    global.move_power[1305] = 70;
    global.move_accuracy[1305] = 90; // Score: 160
    
    global.move_name[1306] = "Spirit Break";
    global.move_type[1306] = "Fairy";
    global.move_type_id[1306] = 14;
    global.move_is_physical[1306] = true;
    global.move_power[1306] = 80;
    global.move_accuracy[1306] = 80; // Score: 160
    
    global.move_name[1307] = "Guardian Strike";
    global.move_type[1307] = "Fairy";
    global.move_type_id[1307] = 14;
    global.move_is_physical[1307] = true;
    global.move_power[1307] = 85;
    global.move_accuracy[1307] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[1308] = "Play Rough";
    global.move_type[1308] = "Fairy";
    global.move_type_id[1308] = 14;
    global.move_is_physical[1308] = true;
    global.move_power[1308] = 100;
    global.move_accuracy[1308] = 100; // Score: 200
    
    global.move_name[1309] = "Magical Torque";
    global.move_type[1309] = "Fairy";
    global.move_type_id[1309] = 14;
    global.move_is_physical[1309] = true;
    global.move_power[1309] = 100;
    global.move_accuracy[1309] = 100; // Score: 200
    
    global.move_name[1310] = "Flower Power";
    global.move_type[1310] = "Fairy";
    global.move_type_id[1310] = 14;
    global.move_is_physical[1310] = true;
    global.move_power[1310] = 100;
    global.move_accuracy[1310] = 100; // Score: 200
    
    // Special Fairy Moves (1311-1320)
    // Score 120 Special (3 moves)
    global.move_name[1311] = "Fairy Wind";
    global.move_type[1311] = "Fairy";
    global.move_type_id[1311] = 14;
    global.move_is_physical[1311] = false;
    global.move_power[1311] = 20;
    global.move_accuracy[1311] = 100; // Score: 120
    
    global.move_name[1312] = "Disarming Voice";
    global.move_type[1312] = "Fairy";
    global.move_type_id[1312] = 14;
    global.move_is_physical[1312] = false;
    global.move_power[1312] = 35;
    global.move_accuracy[1312] = 85; // Score: 120
    
    global.move_name[1313] = "Sweet Kiss";
    global.move_type[1313] = "Fairy";
    global.move_type_id[1313] = 14;
    global.move_is_physical[1313] = false;
    global.move_power[1313] = 45;
    global.move_accuracy[1313] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[1314] = "Charm";
    global.move_type[1314] = "Fairy";
    global.move_type_id[1314] = 14;
    global.move_is_physical[1314] = false;
    global.move_power[1314] = 60;
    global.move_accuracy[1314] = 100; // Score: 160
    
    global.move_name[1315] = "Draining Kiss";
    global.move_type[1315] = "Fairy";
    global.move_type_id[1315] = 14;
    global.move_is_physical[1315] = false;
    global.move_power[1315] = 70;
    global.move_accuracy[1315] = 90; // Score: 160
    
    global.move_name[1316] = "Dazzling Gleam";
    global.move_type[1316] = "Fairy";
    global.move_type_id[1316] = 14;
    global.move_is_physical[1316] = false;
    global.move_power[1316] = 80;
    global.move_accuracy[1316] = 80; // Score: 160
    
    global.move_name[1317] = "Alluring Voice";
    global.move_type[1317] = "Fairy";
    global.move_type_id[1317] = 14;
    global.move_is_physical[1317] = false;
    global.move_power[1317] = 85;
    global.move_accuracy[1317] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[1318] = "Moonblast";
    global.move_type[1318] = "Fairy";
    global.move_type_id[1318] = 14;
    global.move_is_physical[1318] = false;
    global.move_power[1318] = 100;
    global.move_accuracy[1318] = 100; // Score: 200
    
    global.move_name[1319] = "Fleur Cannon";
    global.move_type[1319] = "Fairy";
    global.move_type_id[1319] = 14;
    global.move_is_physical[1319] = false;
    global.move_power[1319] = 100;
    global.move_accuracy[1319] = 100; // Score: 200
    
    global.move_name[1320] = "Sparkly Swirl";
    global.move_type[1320] = "Fairy";
    global.move_type_id[1320] = 14;
    global.move_is_physical[1320] = false;
    global.move_power[1320] = 100;
    global.move_accuracy[1320] = 100; // Score: 200
    
    show_debug_message("Fairy type moves loaded (IDs 1301-1320)");
}