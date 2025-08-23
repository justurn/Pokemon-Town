function SCR_Moves_Electric()
{
    // Electric Type Moves - IDs 401-500 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Electric Moves (401-410)
    // Score 120 Physical (3 moves)
    global.move_name[401] = "Quick Attack";
    global.move_type[401] = "Electric";
    global.move_type_id[401] = 4;
    global.move_is_physical[401] = true;
    global.move_power[401] = 20;
    global.move_accuracy[401] = 100; // Score: 120
    
    global.move_name[402] = "Nuzzle";
    global.move_type[402] = "Electric";
    global.move_type_id[402] = 4;
    global.move_is_physical[402] = true;
    global.move_power[402] = 35;
    global.move_accuracy[402] = 85; // Score: 120
    
    global.move_name[403] = "Shock Wave";
    global.move_type[403] = "Electric";
    global.move_type_id[403] = 4;
    global.move_is_physical[403] = true;
    global.move_power[403] = 45;
    global.move_accuracy[403] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[404] = "Spark";
    global.move_type[404] = "Electric";
    global.move_type_id[404] = 4;
    global.move_is_physical[404] = true;
    global.move_power[404] = 60;
    global.move_accuracy[404] = 100; // Score: 160
    
    global.move_name[405] = "Thunder Fang";
    global.move_type[405] = "Electric";
    global.move_type_id[405] = 4;
    global.move_is_physical[405] = true;
    global.move_power[405] = 70;
    global.move_accuracy[405] = 90; // Score: 160
    
    global.move_name[406] = "Thunder Punch";
    global.move_type[406] = "Electric";
    global.move_type_id[406] = 4;
    global.move_is_physical[406] = true;
    global.move_power[406] = 80;
    global.move_accuracy[406] = 80; // Score: 160
    
    global.move_name[407] = "Zing Zap";
    global.move_type[407] = "Electric";
    global.move_type_id[407] = 4;
    global.move_is_physical[407] = true;
    global.move_power[407] = 85;
    global.move_accuracy[407] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[408] = "Wild Charge";
    global.move_type[408] = "Electric";
    global.move_type_id[408] = 4;
    global.move_is_physical[408] = true;
    global.move_power[408] = 100;
    global.move_accuracy[408] = 100; // Score: 200
    
    global.move_name[409] = "Volt Tackle";
    global.move_type[409] = "Electric";
    global.move_type_id[409] = 4;
    global.move_is_physical[409] = true;
    global.move_power[409] = 100;
    global.move_accuracy[409] = 100; // Score: 200
    
    global.move_name[410] = "Plasma Fists";
    global.move_type[410] = "Electric";
    global.move_type_id[410] = 4;
    global.move_is_physical[410] = true;
    global.move_power[410] = 100;
    global.move_accuracy[410] = 100; // Score: 200
    
    // Special Electric Moves (411-420)
    // Score 120 Special (3 moves)
    global.move_name[411] = "Thunder Shock";
    global.move_type[411] = "Electric";
    global.move_type_id[411] = 4;
    global.move_is_physical[411] = false;
    global.move_power[411] = 20;
    global.move_accuracy[411] = 100; // Score: 120
    
    global.move_name[412] = "Electro Ball";
    global.move_type[412] = "Electric";
    global.move_type_id[412] = 4;
    global.move_is_physical[412] = false;
    global.move_power[412] = 35;
    global.move_accuracy[412] = 85; // Score: 120
    
    global.move_name[413] = "Parabolic Charge";
    global.move_type[413] = "Electric";
    global.move_type_id[413] = 4;
    global.move_is_physical[413] = false;
    global.move_power[413] = 45;
    global.move_accuracy[413] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[414] = "Charge Beam";
    global.move_type[414] = "Electric";
    global.move_type_id[414] = 4;
    global.move_is_physical[414] = false;
    global.move_power[414] = 60;
    global.move_accuracy[414] = 100; // Score: 160
    
    global.move_name[415] = "Volt Switch";
    global.move_type[415] = "Electric";
    global.move_type_id[415] = 4;
    global.move_is_physical[415] = false;
    global.move_power[415] = 70;
    global.move_accuracy[415] = 90; // Score: 160
    
    global.move_name[416] = "Discharge";
    global.move_type[416] = "Electric";
    global.move_type_id[416] = 4;
    global.move_is_physical[416] = false;
    global.move_power[416] = 80;
    global.move_accuracy[416] = 80; // Score: 160
    
    global.move_name[417] = "Thunderbolt";
    global.move_type[417] = "Electric";
    global.move_type_id[417] = 4;
    global.move_is_physical[417] = false;
    global.move_power[417] = 85;
    global.move_accuracy[417] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[418] = "Thunder";
    global.move_type[418] = "Electric";
    global.move_type_id[418] = 4;
    global.move_is_physical[418] = false;
    global.move_power[418] = 100;
    global.move_accuracy[418] = 100; // Score: 200
    
    global.move_name[419] = "Zap Cannon";
    global.move_type[419] = "Electric";
    global.move_type_id[419] = 4;
    global.move_is_physical[419] = false;
    global.move_power[419] = 100;
    global.move_accuracy[419] = 100; // Score: 200
    
    global.move_name[420] = "Fusion Bolt";
    global.move_type[420] = "Electric";
    global.move_type_id[420] = 4;
    global.move_is_physical[420] = false;
    global.move_power[420] = 100;
    global.move_accuracy[420] = 100; // Score: 200
    
    show_debug_message("Electric type moves loaded (IDs 401-420)");
}