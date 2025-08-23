function SCR_Moves_Water()
{
    // Water Type Moves - IDs 201-300 - REBALANCED using Move Score System
    // Score Formula: Power + Accuracy = 120-200 (Accuracy capped at 100)
    // Distribution: 6 moves at Score 120, 8 moves at Score 160, 6 moves at Score 200
    // Physical: 3@120, 4@160, 3@200 | Special: 3@120, 4@160, 3@200
    
    // Physical Water Moves (201-210)
    // SCORE 120 Physical (3 moves)
    global.move_name[201] = "Aqua Jet";          // Score 120 (20+100)
    global.move_type[201] = "Water";
    global.move_type_id[201] = 2;
    global.move_is_physical[201] = true;
    global.move_power[201] = 20;
    global.move_accuracy[201] = 100;
    
    global.move_name[202] = "Waterfall";         // Score 120 (40+80)
    global.move_type[202] = "Water";
    global.move_type_id[202] = 2;
    global.move_is_physical[202] = true;
    global.move_power[202] = 40;
    global.move_accuracy[202] = 80;
    
    global.move_name[203] = "Flip Turn";         // Score 120 (60+60)
    global.move_type[203] = "Water";
    global.move_type_id[203] = 2;
    global.move_is_physical[203] = true;
    global.move_power[203] = 60;
    global.move_accuracy[203] = 60;
    
    // SCORE 160 Physical (4 moves)
    global.move_name[204] = "Aqua Tail";         // Score 160 (60+100)
    global.move_type[204] = "Water";
    global.move_type_id[204] = 2;
    global.move_is_physical[204] = true;
    global.move_power[204] = 60;
    global.move_accuracy[204] = 100;
    
    global.move_name[205] = "Liquidation";       // Score 160 (70+90)
    global.move_type[205] = "Water";
    global.move_type_id[205] = 2;
    global.move_is_physical[205] = true;
    global.move_power[205] = 70;
    global.move_accuracy[205] = 90;
    
    global.move_name[206] = "Dive";              // Score 160 (80+80)
    global.move_type[206] = "Water";
    global.move_type_id[206] = 2;
    global.move_is_physical[206] = true;
    global.move_power[206] = 80;
    global.move_accuracy[206] = 80;
    
    global.move_name[207] = "Razor Shell";       // Score 160 (90+70)
    global.move_type[207] = "Water";
    global.move_type_id[207] = 2;
    global.move_is_physical[207] = true;
    global.move_power[207] = 90;
    global.move_accuracy[207] = 70;
    
    // SCORE 200 Physical (3 moves)
    global.move_name[208] = "Wave Crash";        // Score 200 (100+100)
    global.move_type[208] = "Water";
    global.move_type_id[208] = 2;
    global.move_is_physical[208] = true;
    global.move_power[208] = 100;
    global.move_accuracy[208] = 100;
    
    global.move_name[209] = "Crabhammer";        // Score 200 (100+100)
    global.move_type[209] = "Water";
    global.move_type_id[209] = 2;
    global.move_is_physical[209] = true;
    global.move_power[209] = 100;
    global.move_accuracy[209] = 100;
    
    global.move_name[210] = "Aqua Break";        // Score 200 (100+100) - renamed from duplicate
    global.move_type[210] = "Water";
    global.move_type_id[210] = 2;
    global.move_is_physical[210] = true;
    global.move_power[210] = 100;
    global.move_accuracy[210] = 100;
    
    // Special Water Moves (211-220)
    // SCORE 120 Special (3 moves)
    global.move_name[211] = "Water Gun";         // Score 120 (20+100)
    global.move_type[211] = "Water";
    global.move_type_id[211] = 2;
    global.move_is_physical[211] = false;
    global.move_power[211] = 20;
    global.move_accuracy[211] = 100;
    
    global.move_name[212] = "Water Pulse";       // Score 120 (40+80)
    global.move_type[212] = "Water";
    global.move_type_id[212] = 2;
    global.move_is_physical[212] = false;
    global.move_power[212] = 40;
    global.move_accuracy[212] = 80;
    
    global.move_name[213] = "Bubble Beam";       // Score 120 (60+60)
    global.move_type[213] = "Water";
    global.move_type_id[213] = 2;
    global.move_is_physical[213] = false;
    global.move_power[213] = 60;
    global.move_accuracy[213] = 60;
    
    // SCORE 160 Special (4 moves)
    global.move_name[214] = "Surf";              // Score 160 (60+100)
    global.move_type[214] = "Water";
    global.move_type_id[214] = 2;
    global.move_is_physical[214] = false;
    global.move_power[214] = 60;
    global.move_accuracy[214] = 100;
    
    global.move_name[215] = "Scald";             // Score 160 (70+90)
    global.move_type[215] = "Water";
    global.move_type_id[215] = 2;
    global.move_is_physical[215] = false;
    global.move_power[215] = 70;
    global.move_accuracy[215] = 90;
    
    global.move_name[216] = "Muddy Water";       // Score 160 (80+80)
    global.move_type[216] = "Water";
    global.move_type_id[216] = 2;
    global.move_is_physical[216] = false;
    global.move_power[216] = 80;
    global.move_accuracy[216] = 80;
    
    global.move_name[217] = "Origin Pulse";      // Score 160 (90+70)
    global.move_type[217] = "Water";
    global.move_type_id[217] = 2;
    global.move_is_physical[217] = false;
    global.move_power[217] = 90;
    global.move_accuracy[217] = 70;
    
    // SCORE 200 Special (3 moves)
    global.move_name[218] = "Hydro Pump";        // Score 200 (100+100)
    global.move_type[218] = "Water";
    global.move_type_id[218] = 2;
    global.move_is_physical[218] = false;
    global.move_power[218] = 100;
    global.move_accuracy[218] = 100;
    
    global.move_name[219] = "Hydro Cannon";      // Score 200 (100+100)
    global.move_type[219] = "Water";
    global.move_type_id[219] = 2;
    global.move_is_physical[219] = false;
    global.move_power[219] = 100;
    global.move_accuracy[219] = 100;
    
    global.move_name[220] = "Water Spout";       // Score 200 (100+100)
    global.move_type[220] = "Water";
    global.move_type_id[220] = 2;
    global.move_is_physical[220] = false;
    global.move_power[220] = 100;
    global.move_accuracy[220] = 100;
    
    show_debug_message("Water type moves loaded (IDs 201-220) - REBALANCED");
}