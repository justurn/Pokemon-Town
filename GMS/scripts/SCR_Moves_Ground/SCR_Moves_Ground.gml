function SCR_Moves_Ground()
{
    // Ground Type Moves - IDs 1201-1300 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Ground Moves (1201-1210)
    // Score 120 Physical (3 moves)
    global.move_name[1201] = "Sand Kick";
    global.move_type[1201] = "Ground";
    global.move_type_id[1201] = 11;
    global.move_is_physical[1201] = true;
    global.move_power[1201] = 20;
    global.move_accuracy[1201] = 100; // Score: 120
    
    global.move_name[1202] = "Mud Slap";
    global.move_type[1202] = "Ground";
    global.move_type_id[1202] = 11;
    global.move_is_physical[1202] = true;
    global.move_power[1202] = 35;
    global.move_accuracy[1202] = 85; // Score: 120
    
    global.move_name[1203] = "Spade Strike";
    global.move_type[1203] = "Ground";
    global.move_type_id[1203] = 11;
    global.move_is_physical[1203] = true;
    global.move_power[1203] = 45;
    global.move_accuracy[1203] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[1204] = "Bulldoze";
    global.move_type[1204] = "Ground";
    global.move_type_id[1204] = 11;
    global.move_is_physical[1204] = true;
    global.move_power[1204] = 60;
    global.move_accuracy[1204] = 100; // Score: 160
    
    global.move_name[1205] = "Bone Club";
    global.move_type[1205] = "Ground";
    global.move_type_id[1205] = 11;
    global.move_is_physical[1205] = true;
    global.move_power[1205] = 70;
    global.move_accuracy[1205] = 90; // Score: 160
    
    global.move_name[1206] = "Drill Run";
    global.move_type[1206] = "Ground";
    global.move_type_id[1206] = 11;
    global.move_is_physical[1206] = true;
    global.move_power[1206] = 80;
    global.move_accuracy[1206] = 80; // Score: 160
    
    global.move_name[1207] = "Stomp Tantrum";
    global.move_type[1207] = "Ground";
    global.move_type_id[1207] = 11;
    global.move_is_physical[1207] = true;
    global.move_power[1207] = 85;
    global.move_accuracy[1207] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[1208] = "Earthquake";
    global.move_type[1208] = "Ground";
    global.move_type_id[1208] = 11;
    global.move_is_physical[1208] = true;
    global.move_power[1208] = 100;
    global.move_accuracy[1208] = 100; // Score: 200
    
    global.move_name[1209] = "Dig";
    global.move_type[1209] = "Ground";
    global.move_type_id[1209] = 11;
    global.move_is_physical[1209] = true;
    global.move_power[1209] = 100;
    global.move_accuracy[1209] = 100; // Score: 200
    
    global.move_name[1210] = "High Horsepower";
    global.move_type[1210] = "Ground";
    global.move_type_id[1210] = 11;
    global.move_is_physical[1210] = true;
    global.move_power[1210] = 100;
    global.move_accuracy[1210] = 100; // Score: 200
    
    // Special Ground Moves (1211-1220)
    // Score 120 Special (3 moves)
    global.move_name[1211] = "Sand Tomb";
    global.move_type[1211] = "Ground";
    global.move_type_id[1211] = 11;
    global.move_is_physical[1211] = false;
    global.move_power[1211] = 20;
    global.move_accuracy[1211] = 100; // Score: 120
    
    global.move_name[1212] = "Mud Shot";
    global.move_type[1212] = "Ground";
    global.move_type_id[1212] = 11;
    global.move_is_physical[1212] = false;
    global.move_power[1212] = 35;
    global.move_accuracy[1212] = 85; // Score: 120
    
    global.move_name[1213] = "Dust Storm";
    global.move_type[1213] = "Ground";
    global.move_type_id[1213] = 11;
    global.move_is_physical[1213] = false;
    global.move_power[1213] = 45;
    global.move_accuracy[1213] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[1214] = "Mud Bomb";
    global.move_type[1214] = "Ground";
    global.move_type_id[1214] = 11;
    global.move_is_physical[1214] = false;
    global.move_power[1214] = 60;
    global.move_accuracy[1214] = 100; // Score: 160
    
    global.move_name[1215] = "Magnitude";
    global.move_type[1215] = "Ground";
    global.move_type_id[1215] = 11;
    global.move_is_physical[1215] = false;
    global.move_power[1215] = 70;
    global.move_accuracy[1215] = 90; // Score: 160
    
    global.move_name[1216] = "Earth Power";
    global.move_type[1216] = "Ground";
    global.move_type_id[1216] = 11;
    global.move_is_physical[1216] = false;
    global.move_power[1216] = 80;
    global.move_accuracy[1216] = 80; // Score: 160
    
    global.move_name[1217] = "Scorching Sands";
    global.move_type[1217] = "Ground";
    global.move_type_id[1217] = 11;
    global.move_is_physical[1217] = false;
    global.move_power[1217] = 85;
    global.move_accuracy[1217] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[1218] = "Fissure";
    global.move_type[1218] = "Ground";
    global.move_type_id[1218] = 11;
    global.move_is_physical[1218] = false;
    global.move_power[1218] = 100;
    global.move_accuracy[1218] = 100; // Score: 200
    
    global.move_name[1219] = "Land's Wrath";
    global.move_type[1219] = "Ground";
    global.move_type_id[1219] = 11;
    global.move_is_physical[1219] = false;
    global.move_power[1219] = 100;
    global.move_accuracy[1219] = 100; // Score: 200
    
    global.move_name[1220] = "Tectonic Rage";
    global.move_type[1220] = "Ground";
    global.move_type_id[1220] = 11;
    global.move_is_physical[1220] = false;
    global.move_power[1220] = 100;
    global.move_accuracy[1220] = 100; // Score: 200
    
    show_debug_message("Ground type moves loaded (IDs 1201-1220)");
}