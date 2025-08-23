function SCR_Moves_Ice()
{
    // Ice Type Moves - IDs 1601-1700 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Ice Moves (1601-1610)
    // Score 120 Physical (3 moves)
    global.move_name[1601] = "Ice Shard";
    global.move_type[1601] = "Ice";
    global.move_type_id[1601] = 13;
    global.move_is_physical[1601] = true;
    global.move_power[1601] = 20;
    global.move_accuracy[1601] = 100; // Score: 120
    
    global.move_name[1602] = "Frost Bite";
    global.move_type[1602] = "Ice";
    global.move_type_id[1602] = 13;
    global.move_is_physical[1602] = true;
    global.move_power[1602] = 35;
    global.move_accuracy[1602] = 85; // Score: 120
    
    global.move_name[1603] = "Ice Ball";
    global.move_type[1603] = "Ice";
    global.move_type_id[1603] = 13;
    global.move_is_physical[1603] = true;
    global.move_power[1603] = 45;
    global.move_accuracy[1603] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[1604] = "Avalanche";
    global.move_type[1604] = "Ice";
    global.move_type_id[1604] = 13;
    global.move_is_physical[1604] = true;
    global.move_power[1604] = 60;
    global.move_accuracy[1604] = 100; // Score: 160
    
    global.move_name[1605] = "Ice Fang";
    global.move_type[1605] = "Ice";
    global.move_type_id[1605] = 13;
    global.move_is_physical[1605] = true;
    global.move_power[1605] = 70;
    global.move_accuracy[1605] = 90; // Score: 160
    
    global.move_name[1606] = "Ice Punch";
    global.move_type[1606] = "Ice";
    global.move_type_id[1606] = 13;
    global.move_is_physical[1606] = true;
    global.move_power[1606] = 80;
    global.move_accuracy[1606] = 80; // Score: 160
    
    global.move_name[1607] = "Icicle Lance";
    global.move_type[1607] = "Ice";
    global.move_type_id[1607] = 13;
    global.move_is_physical[1607] = true;
    global.move_power[1607] = 85;
    global.move_accuracy[1607] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[1608] = "Icicle Crash";
    global.move_type[1608] = "Ice";
    global.move_type_id[1608] = 13;
    global.move_is_physical[1608] = true;
    global.move_power[1608] = 100;
    global.move_accuracy[1608] = 100; // Score: 200
    
    global.move_name[1609] = "Ice Hammer";
    global.move_type[1609] = "Ice";
    global.move_type_id[1609] = 13;
    global.move_is_physical[1609] = true;
    global.move_power[1609] = 100;
    global.move_accuracy[1609] = 100; // Score: 200
    
    global.move_name[1610] = "Freeze Shock";
    global.move_type[1610] = "Ice";
    global.move_type_id[1610] = 13;
    global.move_is_physical[1610] = true;
    global.move_power[1610] = 100;
    global.move_accuracy[1610] = 100; // Score: 200
    
    // Special Ice Moves (1611-1620)
    // Score 120 Special (3 moves)
    global.move_name[1611] = "Powder Snow";
    global.move_type[1611] = "Ice";
    global.move_type_id[1611] = 13;
    global.move_is_physical[1611] = false;
    global.move_power[1611] = 20;
    global.move_accuracy[1611] = 100; // Score: 120
    
    global.move_name[1612] = "Icy Wind";
    global.move_type[1612] = "Ice";
    global.move_type_id[1612] = 13;
    global.move_is_physical[1612] = false;
    global.move_power[1612] = 35;
    global.move_accuracy[1612] = 85; // Score: 120
    
    global.move_name[1613] = "Mist";
    global.move_type[1613] = "Ice";
    global.move_type_id[1613] = 13;
    global.move_is_physical[1613] = false;
    global.move_power[1613] = 45;
    global.move_accuracy[1613] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[1614] = "Aurora Beam";
    global.move_type[1614] = "Ice";
    global.move_type_id[1614] = 13;
    global.move_is_physical[1614] = false;
    global.move_power[1614] = 60;
    global.move_accuracy[1614] = 100; // Score: 160
    
    global.move_name[1615] = "Freeze-Dry";
    global.move_type[1615] = "Ice";
    global.move_type_id[1615] = 13;
    global.move_is_physical[1615] = false;
    global.move_power[1615] = 70;
    global.move_accuracy[1615] = 90; // Score: 160
    
    global.move_name[1616] = "Frost Breath";
    global.move_type[1616] = "Ice";
    global.move_type_id[1616] = 13;
    global.move_is_physical[1616] = false;
    global.move_power[1616] = 80;
    global.move_accuracy[1616] = 80; // Score: 160
    
    global.move_name[1617] = "Glaciate";
    global.move_type[1617] = "Ice";
    global.move_type_id[1617] = 13;
    global.move_is_physical[1617] = false;
    global.move_power[1617] = 85;
    global.move_accuracy[1617] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[1618] = "Ice Beam";
    global.move_type[1618] = "Ice";
    global.move_type_id[1618] = 13;
    global.move_is_physical[1618] = false;
    global.move_power[1618] = 100;
    global.move_accuracy[1618] = 100; // Score: 200
    
    global.move_name[1619] = "Blizzard";
    global.move_type[1619] = "Ice";
    global.move_type_id[1619] = 13;
    global.move_is_physical[1619] = false;
    global.move_power[1619] = 100;
    global.move_accuracy[1619] = 100; // Score: 200
    
    global.move_name[1620] = "Max Hailstorm";
    global.move_type[1620] = "Ice";
    global.move_type_id[1620] = 13;
    global.move_is_physical[1620] = false;
    global.move_power[1620] = 100;
    global.move_accuracy[1620] = 100; // Score: 200
    
    show_debug_message("Ice type moves loaded (IDs 1601-1620)");
}