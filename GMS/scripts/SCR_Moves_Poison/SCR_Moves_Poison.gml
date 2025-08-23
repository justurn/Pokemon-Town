function SCR_Moves_Poison()
{
    // Poison Type Moves - IDs 901-1000 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Poison Moves (901-910)
    // Score 120 Physical (3 moves)
    global.move_name[901] = "Poison Sting";
    global.move_type[901] = "Poison";
    global.move_type_id[901] = 12;
    global.move_is_physical[901] = true;
    global.move_power[901] = 20;
    global.move_accuracy[901] = 100; // Score: 120
    
    global.move_name[902] = "Smog Strike";
    global.move_type[902] = "Poison";
    global.move_type_id[902] = 12;
    global.move_is_physical[902] = true;
    global.move_power[902] = 35;
    global.move_accuracy[902] = 85; // Score: 120
    
    global.move_name[903] = "Toxic Spike";
    global.move_type[903] = "Poison";
    global.move_type_id[903] = 12;
    global.move_is_physical[903] = true;
    global.move_power[903] = 45;
    global.move_accuracy[903] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[904] = "Poison Tail";
    global.move_type[904] = "Poison";
    global.move_type_id[904] = 12;
    global.move_is_physical[904] = true;
    global.move_power[904] = 60;
    global.move_accuracy[904] = 100; // Score: 160
    
    global.move_name[905] = "Poison Fang";
    global.move_type[905] = "Poison";
    global.move_type_id[905] = 12;
    global.move_is_physical[905] = true;
    global.move_power[905] = 70;
    global.move_accuracy[905] = 90; // Score: 160
    
    global.move_name[906] = "Cross Poison";
    global.move_type[906] = "Poison";
    global.move_type_id[906] = 12;
    global.move_is_physical[906] = true;
    global.move_power[906] = 80;
    global.move_accuracy[906] = 80; // Score: 160
    
    global.move_name[907] = "Dire Claw";
    global.move_type[907] = "Poison";
    global.move_type_id[907] = 12;
    global.move_is_physical[907] = true;
    global.move_power[907] = 85;
    global.move_accuracy[907] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[908] = "Poison Jab";
    global.move_type[908] = "Poison";
    global.move_type_id[908] = 12;
    global.move_is_physical[908] = true;
    global.move_power[908] = 100;
    global.move_accuracy[908] = 100; // Score: 200
    
    global.move_name[909] = "Gunk Shot";
    global.move_type[909] = "Poison";
    global.move_type_id[909] = 12;
    global.move_is_physical[909] = true;
    global.move_power[909] = 100;
    global.move_accuracy[909] = 100; // Score: 200
    
    global.move_name[910] = "Barb Barrage";
    global.move_type[910] = "Poison";
    global.move_type_id[910] = 12;
    global.move_is_physical[910] = true;
    global.move_power[910] = 100;
    global.move_accuracy[910] = 100; // Score: 200
    
    // Special Poison Moves (911-920)
    // Score 120 Special (3 moves)
    global.move_name[911] = "Acid";
    global.move_type[911] = "Poison";
    global.move_type_id[911] = 12;
    global.move_is_physical[911] = false;
    global.move_power[911] = 20;
    global.move_accuracy[911] = 100; // Score: 120
    
    global.move_name[912] = "Poison Gas";
    global.move_type[912] = "Poison";
    global.move_type_id[912] = 12;
    global.move_is_physical[912] = false;
    global.move_power[912] = 35;
    global.move_accuracy[912] = 85; // Score: 120
    
    global.move_name[913] = "Acid Spray";
    global.move_type[913] = "Poison";
    global.move_type_id[913] = 12;
    global.move_is_physical[913] = false;
    global.move_power[913] = 45;
    global.move_accuracy[913] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[914] = "Clear Smog";
    global.move_type[914] = "Poison";
    global.move_type_id[914] = 12;
    global.move_is_physical[914] = false;
    global.move_power[914] = 60;
    global.move_accuracy[914] = 100; // Score: 160
    
    global.move_name[915] = "Venoshock";
    global.move_type[915] = "Poison";
    global.move_type_id[915] = 12;
    global.move_is_physical[915] = false;
    global.move_power[915] = 70;
    global.move_accuracy[915] = 90; // Score: 160
    
    global.move_name[916] = "Sludge";
    global.move_type[916] = "Poison";
    global.move_type_id[916] = 12;
    global.move_is_physical[916] = false;
    global.move_power[916] = 80;
    global.move_accuracy[916] = 80; // Score: 160
    
    global.move_name[917] = "Toxic";
    global.move_type[917] = "Poison";
    global.move_type_id[917] = 12;
    global.move_is_physical[917] = false;
    global.move_power[917] = 85;
    global.move_accuracy[917] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[918] = "Sludge Bomb";
    global.move_type[918] = "Poison";
    global.move_type_id[918] = 12;
    global.move_is_physical[918] = false;
    global.move_power[918] = 100;
    global.move_accuracy[918] = 100; // Score: 200
    
    global.move_name[919] = "Sludge Wave";
    global.move_type[919] = "Poison";
    global.move_type_id[919] = 12;
    global.move_is_physical[919] = false;
    global.move_power[919] = 100;
    global.move_accuracy[919] = 100; // Score: 200
    
    global.move_name[920] = "Max Ooze";
    global.move_type[920] = "Poison";
    global.move_type_id[920] = 12;
    global.move_is_physical[920] = false;
    global.move_power[920] = 100;
    global.move_accuracy[920] = 100; // Score: 200
    
    show_debug_message("Poison type moves loaded (IDs 901-920)");
}