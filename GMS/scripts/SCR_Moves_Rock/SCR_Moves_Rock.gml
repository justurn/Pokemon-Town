function SCR_Moves_Rock()
{
    // Rock Type Moves - IDs 1001-1100 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Rock Moves (1001-1010)
    // Score 120 Physical (3 moves)
    global.move_name[1001] = "Rock Throw";
    global.move_type[1001] = "Rock";
    global.move_type_id[1001] = 9;
    global.move_is_physical[1001] = true;
    global.move_power[1001] = 20;
    global.move_accuracy[1001] = 100; // Score: 120
    
    global.move_name[1002] = "Rollout";
    global.move_type[1002] = "Rock";
    global.move_type_id[1002] = 9;
    global.move_is_physical[1002] = true;
    global.move_power[1002] = 35;
    global.move_accuracy[1002] = 85; // Score: 120
    
    global.move_name[1003] = "Salt Cure";
    global.move_type[1003] = "Rock";
    global.move_type_id[1003] = 9;
    global.move_is_physical[1003] = true;
    global.move_power[1003] = 45;
    global.move_accuracy[1003] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[1004] = "Accelerock";
    global.move_type[1004] = "Rock";
    global.move_type_id[1004] = 9;
    global.move_is_physical[1004] = true;
    global.move_power[1004] = 60;
    global.move_accuracy[1004] = 100; // Score: 160
    
    global.move_name[1005] = "Smack Down";
    global.move_type[1005] = "Rock";
    global.move_type_id[1005] = 9;
    global.move_is_physical[1005] = true;
    global.move_power[1005] = 70;
    global.move_accuracy[1005] = 90; // Score: 160
    
    global.move_name[1006] = "Rock Slide";
    global.move_type[1006] = "Rock";
    global.move_type_id[1006] = 9;
    global.move_is_physical[1006] = true;
    global.move_power[1006] = 80;
    global.move_accuracy[1006] = 80; // Score: 160
    
    global.move_name[1007] = "Rock Blast";
    global.move_type[1007] = "Rock";
    global.move_type_id[1007] = 9;
    global.move_is_physical[1007] = true;
    global.move_power[1007] = 85;
    global.move_accuracy[1007] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[1008] = "Stone Edge";
    global.move_type[1008] = "Rock";
    global.move_type_id[1008] = 9;
    global.move_is_physical[1008] = true;
    global.move_power[1008] = 100;
    global.move_accuracy[1008] = 100; // Score: 200
    
    global.move_name[1009] = "Head Smash";
    global.move_type[1009] = "Rock";
    global.move_type_id[1009] = 9;
    global.move_is_physical[1009] = true;
    global.move_power[1009] = 100;
    global.move_accuracy[1009] = 100; // Score: 200
    
    global.move_name[1010] = "Rock Wrecker";
    global.move_type[1010] = "Rock";
    global.move_type_id[1010] = 9;
    global.move_is_physical[1010] = true;
    global.move_power[1010] = 100;
    global.move_accuracy[1010] = 100; // Score: 200
    
    // Special Rock Moves (1011-1020)
    // Score 120 Special (3 moves)
    global.move_name[1011] = "Sand Attack";
    global.move_type[1011] = "Rock";
    global.move_type_id[1011] = 9;
    global.move_is_physical[1011] = false;
    global.move_power[1011] = 20;
    global.move_accuracy[1011] = 100; // Score: 120
    
    global.move_name[1012] = "Rock Sling";
    global.move_type[1012] = "Rock";
    global.move_type_id[1012] = 9;
    global.move_is_physical[1012] = false;
    global.move_power[1012] = 35;
    global.move_accuracy[1012] = 85; // Score: 120
    
    global.move_name[1013] = "Pebble Blast";
    global.move_type[1013] = "Rock";
    global.move_type_id[1013] = 9;
    global.move_is_physical[1013] = false;
    global.move_power[1013] = 45;
    global.move_accuracy[1013] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[1014] = "Ancient Power";
    global.move_type[1014] = "Rock";
    global.move_type_id[1014] = 9;
    global.move_is_physical[1014] = false;
    global.move_power[1014] = 60;
    global.move_accuracy[1014] = 100; // Score: 160
    
    global.move_name[1015] = "Rock Tomb";
    global.move_type[1015] = "Rock";
    global.move_type_id[1015] = 9;
    global.move_is_physical[1015] = false;
    global.move_power[1015] = 70;
    global.move_accuracy[1015] = 90; // Score: 160
    
    global.move_name[1016] = "Power Gem";
    global.move_type[1016] = "Rock";
    global.move_type_id[1016] = 9;
    global.move_is_physical[1016] = false;
    global.move_power[1016] = 80;
    global.move_accuracy[1016] = 80; // Score: 160
    
    global.move_name[1017] = "Meteor Beam";
    global.move_type[1017] = "Rock";
    global.move_type_id[1017] = 9;
    global.move_is_physical[1017] = false;
    global.move_power[1017] = 85;
    global.move_accuracy[1017] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[1018] = "Diamond Storm";
    global.move_type[1018] = "Rock";
    global.move_type_id[1018] = 9;
    global.move_is_physical[1018] = false;
    global.move_power[1018] = 100;
    global.move_accuracy[1018] = 100; // Score: 200
    
    global.move_name[1019] = "Continental Crush";
    global.move_type[1019] = "Rock";
    global.move_type_id[1019] = 9;
    global.move_is_physical[1019] = false;
    global.move_power[1019] = 100;
    global.move_accuracy[1019] = 100; // Score: 200
    
    global.move_name[1020] = "Prismatic Storm";
    global.move_type[1020] = "Rock";
    global.move_type_id[1020] = 9;
    global.move_is_physical[1020] = false;
    global.move_power[1020] = 100;
    global.move_accuracy[1020] = 100; // Score: 200
    
    show_debug_message("Rock type moves loaded (IDs 1001-1020)");
}