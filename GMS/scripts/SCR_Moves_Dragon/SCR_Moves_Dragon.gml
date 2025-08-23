function SCR_Moves_Dragon()
{
    // Dragon Type Moves - IDs 701-800 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Dragon Moves (701-710)
    // Score 120 Physical (3 moves)
    global.move_name[701] = "Dragon Rage";
    global.move_type[701] = "Dragon";
    global.move_type_id[701] = 7;
    global.move_is_physical[701] = true;
    global.move_power[701] = 20;
    global.move_accuracy[701] = 100; // Score: 120
    
    global.move_name[702] = "Dual Chop";
    global.move_type[702] = "Dragon";
    global.move_type_id[702] = 7;
    global.move_is_physical[702] = true;
    global.move_power[702] = 35;
    global.move_accuracy[702] = 85; // Score: 120
    
    global.move_name[703] = "Dragon Lash";
    global.move_type[703] = "Dragon";
    global.move_type_id[703] = 7;
    global.move_is_physical[703] = true;
    global.move_power[703] = 45;
    global.move_accuracy[703] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[704] = "Dragon Tail";
    global.move_type[704] = "Dragon";
    global.move_type_id[704] = 7;
    global.move_is_physical[704] = true;
    global.move_power[704] = 60;
    global.move_accuracy[704] = 100; // Score: 160
    
    global.move_name[705] = "Dragon Bite";
    global.move_type[705] = "Dragon";
    global.move_type_id[705] = 7;
    global.move_is_physical[705] = true;
    global.move_power[705] = 70;
    global.move_accuracy[705] = 90; // Score: 160
    
    global.move_name[706] = "Dragon Claw";
    global.move_type[706] = "Dragon";
    global.move_type_id[706] = 7;
    global.move_is_physical[706] = true;
    global.move_power[706] = 80;
    global.move_accuracy[706] = 80; // Score: 160
    
    global.move_name[707] = "Glaive Rush";
    global.move_type[707] = "Dragon";
    global.move_type_id[707] = 7;
    global.move_is_physical[707] = true;
    global.move_power[707] = 85;
    global.move_accuracy[707] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[708] = "Outrage";
    global.move_type[708] = "Dragon";
    global.move_type_id[708] = 7;
    global.move_is_physical[708] = true;
    global.move_power[708] = 100;
    global.move_accuracy[708] = 100; // Score: 200
    
    global.move_name[709] = "Dragon Rush";
    global.move_type[709] = "Dragon";
    global.move_type_id[709] = 7;
    global.move_is_physical[709] = true;
    global.move_power[709] = 100;
    global.move_accuracy[709] = 100; // Score: 200
    
    global.move_name[710] = "Dragon Hammer";
    global.move_type[710] = "Dragon";
    global.move_type_id[710] = 7;
    global.move_is_physical[710] = true;
    global.move_power[710] = 100;
    global.move_accuracy[710] = 100; // Score: 200
    
    // Special Dragon Moves (711-720)
    // Score 120 Special (3 moves)
    global.move_name[711] = "Dragon Breath";
    global.move_type[711] = "Dragon";
    global.move_type_id[711] = 7;
    global.move_is_physical[711] = false;
    global.move_power[711] = 20;
    global.move_accuracy[711] = 100; // Score: 120
    
    global.move_name[712] = "Twister";
    global.move_type[712] = "Dragon";
    global.move_type_id[712] = 7;
    global.move_is_physical[712] = false;
    global.move_power[712] = 35;
    global.move_accuracy[712] = 85; // Score: 120
    
    global.move_name[713] = "Dragon Wave";
    global.move_type[713] = "Dragon";
    global.move_type_id[713] = 7;
    global.move_is_physical[713] = false;
    global.move_power[713] = 45;
    global.move_accuracy[713] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[714] = "Dragon Burst";
    global.move_type[714] = "Dragon";
    global.move_type_id[714] = 7;
    global.move_is_physical[714] = false;
    global.move_power[714] = 60;
    global.move_accuracy[714] = 100; // Score: 160
    
    global.move_name[715] = "Dragon Pulse";
    global.move_type[715] = "Dragon";
    global.move_type_id[715] = 7;
    global.move_is_physical[715] = false;
    global.move_power[715] = 70;
    global.move_accuracy[715] = 90; // Score: 160
    
    global.move_name[716] = "Dragon Energy";
    global.move_type[716] = "Dragon";
    global.move_type_id[716] = 7;
    global.move_is_physical[716] = false;
    global.move_power[716] = 80;
    global.move_accuracy[716] = 80; // Score: 160
    
    global.move_name[717] = "Draco Storm";
    global.move_type[717] = "Dragon";
    global.move_type_id[717] = 7;
    global.move_is_physical[717] = false;
    global.move_power[717] = 85;
    global.move_accuracy[717] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[718] = "Draco Meteor";
    global.move_type[718] = "Dragon";
    global.move_type_id[718] = 7;
    global.move_is_physical[718] = false;
    global.move_power[718] = 100;
    global.move_accuracy[718] = 100; // Score: 200
    
    global.move_name[719] = "Spacial Rend";
    global.move_type[719] = "Dragon";
    global.move_type_id[719] = 7;
    global.move_is_physical[719] = false;
    global.move_power[719] = 100;
    global.move_accuracy[719] = 100; // Score: 200
    
    global.move_name[720] = "Roar of Time";
    global.move_type[720] = "Dragon";
    global.move_type_id[720] = 7;
    global.move_is_physical[720] = false;
    global.move_power[720] = 100;
    global.move_accuracy[720] = 100; // Score: 200
    
    show_debug_message("Dragon type moves loaded (IDs 701-720)");
}