function SCR_Moves_Grass()
{
    // Grass Type Moves - IDs 301-400 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Grass Moves (301-310)
    // Score 120 Physical (3 moves)
    global.move_name[301] = "Vine Whip";
    global.move_type[301] = "Grass";
    global.move_type_id[301] = 3;
    global.move_is_physical[301] = true;
    global.move_power[301] = 20;
    global.move_accuracy[301] = 100; // Score: 120
    
    global.move_name[302] = "Needle Arm";
    global.move_type[302] = "Grass";
    global.move_type_id[302] = 3;
    global.move_is_physical[302] = true;
    global.move_power[302] = 35;
    global.move_accuracy[302] = 85; // Score: 120
    
    global.move_name[303] = "Branch Poke";
    global.move_type[303] = "Grass";
    global.move_type_id[303] = 3;
    global.move_is_physical[303] = true;
    global.move_power[303] = 45;
    global.move_accuracy[303] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[304] = "Razor Leaf";
    global.move_type[304] = "Grass";
    global.move_type_id[304] = 3;
    global.move_is_physical[304] = true;
    global.move_power[304] = 60;
    global.move_accuracy[304] = 100; // Score: 160
    
    global.move_name[305] = "Seed Bomb";
    global.move_type[305] = "Grass";
    global.move_type_id[305] = 3;
    global.move_is_physical[305] = true;
    global.move_power[305] = 70;
    global.move_accuracy[305] = 90; // Score: 160
    
    global.move_name[306] = "Horn Leech";
    global.move_type[306] = "Grass";
    global.move_type_id[306] = 3;
    global.move_is_physical[306] = true;
    global.move_power[306] = 80;
    global.move_accuracy[306] = 80; // Score: 160
    
    global.move_name[307] = "Trop Kick";
    global.move_type[307] = "Grass";
    global.move_type_id[307] = 3;
    global.move_is_physical[307] = true;
    global.move_power[307] = 85;
    global.move_accuracy[307] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[308] = "Power Whip";
    global.move_type[308] = "Grass";
    global.move_type_id[308] = 3;
    global.move_is_physical[308] = true;
    global.move_power[308] = 100;
    global.move_accuracy[308] = 100; // Score: 200
    
    global.move_name[309] = "Wood Hammer";
    global.move_type[309] = "Grass";
    global.move_type_id[309] = 3;
    global.move_is_physical[309] = true;
    global.move_power[309] = 100;
    global.move_accuracy[309] = 100; // Score: 200
    
    global.move_name[310] = "Leaf Blade";
    global.move_type[310] = "Grass";
    global.move_type_id[310] = 3;
    global.move_is_physical[310] = true;
    global.move_power[310] = 100;
    global.move_accuracy[310] = 100; // Score: 200
    
    // Special Grass Moves (311-320)
    // Score 120 Special (3 moves)
    global.move_name[311] = "Absorb";
    global.move_type[311] = "Grass";
    global.move_type_id[311] = 3;
    global.move_is_physical[311] = false;
    global.move_power[311] = 20;
    global.move_accuracy[311] = 100; // Score: 120
    
    global.move_name[312] = "Bullet Seed";
    global.move_type[312] = "Grass";
    global.move_type_id[312] = 3;
    global.move_is_physical[312] = false;
    global.move_power[312] = 35;
    global.move_accuracy[312] = 85; // Score: 120
    
    global.move_name[313] = "Grass Knot";
    global.move_type[313] = "Grass";
    global.move_type_id[313] = 3;
    global.move_is_physical[313] = false;
    global.move_power[313] = 45;
    global.move_accuracy[313] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[314] = "Mega Drain";
    global.move_type[314] = "Grass";
    global.move_type_id[314] = 3;
    global.move_is_physical[314] = false;
    global.move_power[314] = 60;
    global.move_accuracy[314] = 100; // Score: 160
    
    global.move_name[315] = "Giga Drain";
    global.move_type[315] = "Grass";
    global.move_type_id[315] = 3;
    global.move_is_physical[315] = false;
    global.move_power[315] = 70;
    global.move_accuracy[315] = 90; // Score: 160
    
    global.move_name[316] = "Energy Ball";
    global.move_type[316] = "Grass";
    global.move_type_id[316] = 3;
    global.move_is_physical[316] = false;
    global.move_power[316] = 80;
    global.move_accuracy[316] = 80; // Score: 160
    
    global.move_name[317] = "Apple Acid";
    global.move_type[317] = "Grass";
    global.move_type_id[317] = 3;
    global.move_is_physical[317] = false;
    global.move_power[317] = 85;
    global.move_accuracy[317] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[318] = "Solar Beam";
    global.move_type[318] = "Grass";
    global.move_type_id[318] = 3;
    global.move_is_physical[318] = false;
    global.move_power[318] = 100;
    global.move_accuracy[318] = 100; // Score: 200
    
    global.move_name[319] = "Frenzy Plant";
    global.move_type[319] = "Grass";
    global.move_type_id[319] = 3;
    global.move_is_physical[319] = false;
    global.move_power[319] = 100;
    global.move_accuracy[319] = 100; // Score: 200
    
    global.move_name[320] = "Leaf Storm";
    global.move_type[320] = "Grass";
    global.move_type_id[320] = 3;
    global.move_is_physical[320] = false;
    global.move_power[320] = 100;
    global.move_accuracy[320] = 100; // Score: 200
    
    show_debug_message("Grass type moves loaded (IDs 301-320)");
}