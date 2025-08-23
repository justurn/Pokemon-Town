function SCR_Moves_Fighting()
{
    // Fighting Type Moves - IDs 801-900 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Fighting Moves (801-810)
    // Score 120 Physical (3 moves)
    global.move_name[801] = "Karate Chop";
    global.move_type[801] = "Fighting";
    global.move_type_id[801] = 8;
    global.move_is_physical[801] = true;
    global.move_power[801] = 20;
    global.move_accuracy[801] = 100; // Score: 120
    
    global.move_name[802] = "Mach Punch";
    global.move_type[802] = "Fighting";
    global.move_type_id[802] = 8;
    global.move_is_physical[802] = true;
    global.move_power[802] = 35;
    global.move_accuracy[802] = 85; // Score: 120
    
    global.move_name[803] = "Low Kick";
    global.move_type[803] = "Fighting";
    global.move_type_id[803] = 8;
    global.move_is_physical[803] = true;
    global.move_power[803] = 45;
    global.move_accuracy[803] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[804] = "Brick Break";
    global.move_type[804] = "Fighting";
    global.move_type_id[804] = 8;
    global.move_is_physical[804] = true;
    global.move_power[804] = 60;
    global.move_accuracy[804] = 100; // Score: 160
    
    global.move_name[805] = "Drain Punch";
    global.move_type[805] = "Fighting";
    global.move_type_id[805] = 8;
    global.move_is_physical[805] = true;
    global.move_power[805] = 70;
    global.move_accuracy[805] = 90; // Score: 160
    
    global.move_name[806] = "Cross Chop";
    global.move_type[806] = "Fighting";
    global.move_type_id[806] = 8;
    global.move_is_physical[806] = true;
    global.move_power[806] = 80;
    global.move_accuracy[806] = 80; // Score: 160
    
    global.move_name[807] = "High Jump Kick";
    global.move_type[807] = "Fighting";
    global.move_type_id[807] = 8;
    global.move_is_physical[807] = true;
    global.move_power[807] = 85;
    global.move_accuracy[807] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[808] = "Close Combat";
    global.move_type[808] = "Fighting";
    global.move_type_id[808] = 8;
    global.move_is_physical[808] = true;
    global.move_power[808] = 100;
    global.move_accuracy[808] = 100; // Score: 200
    
    global.move_name[809] = "Dynamic Punch";
    global.move_type[809] = "Fighting";
    global.move_type_id[809] = 8;
    global.move_is_physical[809] = true;
    global.move_power[809] = 100;
    global.move_accuracy[809] = 100; // Score: 200
    
    global.move_name[810] = "Superpower";
    global.move_type[810] = "Fighting";
    global.move_type_id[810] = 8;
    global.move_is_physical[810] = true;
    global.move_power[810] = 100;
    global.move_accuracy[810] = 100; // Score: 200
    
    // Special Fighting Moves (811-820)
    // Score 120 Special (3 moves)
    global.move_name[811] = "Vacuum Wave";
    global.move_type[811] = "Fighting";
    global.move_type_id[811] = 8;
    global.move_is_physical[811] = false;
    global.move_power[811] = 20;
    global.move_accuracy[811] = 100; // Score: 120
    
    global.move_name[812] = "Force Palm";
    global.move_type[812] = "Fighting";
    global.move_type_id[812] = 8;
    global.move_is_physical[812] = false;
    global.move_power[812] = 35;
    global.move_accuracy[812] = 85; // Score: 120
    
    global.move_name[813] = "Low Sweep";
    global.move_type[813] = "Fighting";
    global.move_type_id[813] = 8;
    global.move_is_physical[813] = false;
    global.move_power[813] = 45;
    global.move_accuracy[813] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[814] = "Focus Blast";
    global.move_type[814] = "Fighting";
    global.move_type_id[814] = 8;
    global.move_is_physical[814] = false;
    global.move_power[814] = 60;
    global.move_accuracy[814] = 100; // Score: 160
    
    global.move_name[815] = "Aura Sphere";
    global.move_type[815] = "Fighting";
    global.move_type_id[815] = 8;
    global.move_is_physical[815] = false;
    global.move_power[815] = 70;
    global.move_accuracy[815] = 90; // Score: 160
    
    global.move_name[816] = "Body Press";
    global.move_type[816] = "Fighting";
    global.move_type_id[816] = 8;
    global.move_is_physical[816] = false;
    global.move_power[816] = 80;
    global.move_accuracy[816] = 80; // Score: 160
    
    global.move_name[817] = "Secret Sword";
    global.move_type[817] = "Fighting";
    global.move_type_id[817] = 8;
    global.move_is_physical[817] = false;
    global.move_power[817] = 85;
    global.move_accuracy[817] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[818] = "Sacred Sword";
    global.move_type[818] = "Fighting";
    global.move_type_id[818] = 8;
    global.move_is_physical[818] = false;
    global.move_power[818] = 100;
    global.move_accuracy[818] = 100; // Score: 200
    
    global.move_name[819] = "Combat Torque";
    global.move_type[819] = "Fighting";
    global.move_type_id[819] = 8;
    global.move_is_physical[819] = false;
    global.move_power[819] = 100;
    global.move_accuracy[819] = 100; // Score: 200
    
    global.move_name[820] = "Max Knuckle";
    global.move_type[820] = "Fighting";
    global.move_type_id[820] = 8;
    global.move_is_physical[820] = false;
    global.move_power[820] = 100;
    global.move_accuracy[820] = 100; // Score: 200
    
    show_debug_message("Fighting type moves loaded (IDs 801-820)");
}