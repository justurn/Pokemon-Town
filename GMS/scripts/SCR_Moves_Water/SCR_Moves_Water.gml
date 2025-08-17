function SCR_Moves_Water()
{
    // Water Type Moves - IDs 201-300
    // 10 Physical + 10 Special moves
    
    // Physical Water Moves (201-210)
    global.move_name[201] = "Aqua Jet";
    global.move_type[201] = "Water";
    global.move_type_id[201] = 2;
    global.move_is_physical[201] = true;
    global.move_power[201] = 40;
    global.move_accuracy[201] = 100;
    
    global.move_name[202] = "Waterfall";
    global.move_type[202] = "Water";
    global.move_type_id[202] = 2;
    global.move_is_physical[202] = true;
    global.move_power[202] = 80;
    global.move_accuracy[202] = 100;
    
    global.move_name[203] = "Aqua Tail";
    global.move_type[203] = "Water";
    global.move_type_id[203] = 2;
    global.move_is_physical[203] = true;
    global.move_power[203] = 90;
    global.move_accuracy[203] = 90;
    
    global.move_name[204] = "Crabhammer";
    global.move_type[204] = "Water";
    global.move_type_id[204] = 2;
    global.move_is_physical[204] = true;
    global.move_power[204] = 100;
    global.move_accuracy[204] = 90;
    
    global.move_name[205] = "Liquidation";
    global.move_type[205] = "Water";
    global.move_type_id[205] = 2;
    global.move_is_physical[205] = true;
    global.move_power[205] = 85;
    global.move_accuracy[205] = 100;
    
    global.move_name[206] = "Dive";
    global.move_type[206] = "Water";
    global.move_type_id[206] = 2;
    global.move_is_physical[206] = true;
    global.move_power[206] = 80;
    global.move_accuracy[206] = 100;
    
    global.move_name[207] = "Razor Shell";
    global.move_type[207] = "Water";
    global.move_type_id[207] = 2;
    global.move_is_physical[207] = true;
    global.move_power[207] = 75;
    global.move_accuracy[207] = 95;
    
    global.move_name[208] = "Wave Crash";
    global.move_type[208] = "Water";
    global.move_type_id[208] = 2;
    global.move_is_physical[208] = true;
    global.move_power[208] = 120;
    global.move_accuracy[208] = 100;
    
    global.move_name[209] = "Flip Turn";
    global.move_type[209] = "Water";
    global.move_type_id[209] = 2;
    global.move_is_physical[209] = true;
    global.move_power[209] = 60;
    global.move_accuracy[209] = 100;
    
    global.move_name[210] = "Surging Strikes";
    global.move_type[210] = "Water";
    global.move_type_id[210] = 2;
    global.move_is_physical[210] = true;
    global.move_power[210] = 25;
    global.move_accuracy[210] = 100;
    
    // Special Water Moves (211-220)
    global.move_name[211] = "Water Gun";
    global.move_type[211] = "Water";
    global.move_type_id[211] = 2;
    global.move_is_physical[211] = false;
    global.move_power[211] = 40;
    global.move_accuracy[211] = 100;
    
    global.move_name[212] = "Water Pulse";
    global.move_type[212] = "Water";
    global.move_type_id[212] = 2;
    global.move_is_physical[212] = false;
    global.move_power[212] = 60;
    global.move_accuracy[212] = 100;
    
    global.move_name[213] = "Surf";
    global.move_type[213] = "Water";
    global.move_type_id[213] = 2;
    global.move_is_physical[213] = false;
    global.move_power[213] = 90;
    global.move_accuracy[213] = 100;
    
    global.move_name[214] = "Hydro Pump";
    global.move_type[214] = "Water";
    global.move_type_id[214] = 2;
    global.move_is_physical[214] = false;
    global.move_power[214] = 110;
    global.move_accuracy[214] = 80;
    
    global.move_name[215] = "Hydro Cannon";
    global.move_type[215] = "Water";
    global.move_type_id[215] = 2;
    global.move_is_physical[215] = false;
    global.move_power[215] = 150;
    global.move_accuracy[215] = 90;
    
    global.move_name[216] = "Scald";
    global.move_type[216] = "Water";
    global.move_type_id[216] = 2;
    global.move_is_physical[216] = false;
    global.move_power[216] = 80;
    global.move_accuracy[216] = 100;
    
    global.move_name[217] = "Muddy Water";
    global.move_type[217] = "Water";
    global.move_type_id[217] = 2;
    global.move_is_physical[217] = false;
    global.move_power[217] = 90;
    global.move_accuracy[217] = 85;
    
    global.move_name[218] = "Water Spout";
    global.move_type[218] = "Water";
    global.move_type_id[218] = 2;
    global.move_is_physical[218] = false;
    global.move_power[218] = 150;
    global.move_accuracy[218] = 100;
    
    global.move_name[219] = "Origin Pulse";
    global.move_type[219] = "Water";
    global.move_type_id[219] = 2;
    global.move_is_physical[219] = false;
    global.move_power[219] = 110;
    global.move_accuracy[219] = 85;
    
    global.move_name[220] = "Steam Eruption";
    global.move_type[220] = "Water";
    global.move_type_id[220] = 2;
    global.move_is_physical[220] = false;
    global.move_power[220] = 110;
    global.move_accuracy[220] = 95;
    
    show_debug_message("Water type moves loaded (IDs 201-220)");
}