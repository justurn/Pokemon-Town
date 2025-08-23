function SCR_Moves_Fire()
{
    // Fire Type Moves - IDs 101-200
    // 10 Physical + 10 Special moves
    // REBALANCED: Power + Accuracy = 120-200 (6@120, 8@160, 6@200)
    
    // Physical Fire Moves (101-110)
    // Score 120 moves (3): Flame Charge, Fire Fang, Blazing Torque
    global.move_name[101] = "Fire Punch";
    global.move_type[101] = "Fire";
    global.move_type_id[101] = 1;
    global.move_is_physical[101] = true;
    global.move_power[101] = 70;
    global.move_accuracy[101] = 90; // Score 160
    
    global.move_name[102] = "Flame Wheel";
    global.move_type[102] = "Fire";
    global.move_type_id[102] = 1;
    global.move_is_physical[102] = true;
    global.move_power[102] = 80;
    global.move_accuracy[102] = 80; // Score 160
    
    global.move_name[103] = "Blaze Kick";
    global.move_type[103] = "Fire";
    global.move_type_id[103] = 1;
    global.move_is_physical[103] = true;
    global.move_power[103] = 100;
    global.move_accuracy[103] = 100; // Score 200
    
    global.move_name[104] = "Fire Fang";
    global.move_type[104] = "Fire";
    global.move_type_id[104] = 1;
    global.move_is_physical[104] = true;
    global.move_power[104] = 20;
    global.move_accuracy[104] = 100; // Score 120
    
    global.move_name[105] = "Blazing Torque";
    global.move_type[105] = "Fire";
    global.move_type_id[105] = 1;
    global.move_is_physical[105] = true;
    global.move_power[105] = 40;
    global.move_accuracy[105] = 80; // Score 120
    
    global.move_name[106] = "Flame Charge";
    global.move_type[106] = "Fire";
    global.move_type_id[106] = 1;
    global.move_is_physical[106] = true;
    global.move_power[106] = 50;
    global.move_accuracy[106] = 70; // Score 120
    
    global.move_name[107] = "Fire Lash";
    global.move_type[107] = "Fire";
    global.move_type_id[107] = 1;
    global.move_is_physical[107] = true;
    global.move_power[107] = 60;
    global.move_accuracy[107] = 100; // Score 160
    
    global.move_name[108] = "Sacred Fire";
    global.move_type[108] = "Fire";
    global.move_type_id[108] = 1;
    global.move_is_physical[108] = true;
    global.move_power[108] = 100;
    global.move_accuracy[108] = 100; // Score 200
    
    global.move_name[109] = "Flame Impact";
    global.move_type[109] = "Fire";
    global.move_type_id[109] = 1;
    global.move_is_physical[109] = true;
    global.move_power[109] = 90;
    global.move_accuracy[109] = 70; // Score 160
    
    global.move_name[110] = "Heat Crash";
    global.move_type[110] = "Fire";
    global.move_type_id[110] = 1;
    global.move_is_physical[110] = true;
    global.move_power[110] = 100;
    global.move_accuracy[110] = 100; // Score 200
    
    // Special Fire Moves (111-120)
    // Score 120 moves (3): Ember, Fire Pledge, Mystical Fire
    global.move_name[111] = "Ember";
    global.move_type[111] = "Fire";
    global.move_type_id[111] = 1;
    global.move_is_physical[111] = false;
    global.move_power[111] = 30;
    global.move_accuracy[111] = 90; // Score 120
    
    global.move_name[112] = "Flamethrower";
    global.move_type[112] = "Fire";
    global.move_type_id[112] = 1;
    global.move_is_physical[112] = false;
    global.move_power[112] = 80;
    global.move_accuracy[112] = 80; // Score 160
    
    global.move_name[113] = "Flame Burst";
    global.move_type[113] = "Fire";
    global.move_type_id[113] = 1;
    global.move_is_physical[113] = false;
    global.move_power[113] = 70;
    global.move_accuracy[113] = 90; // Score 160
    
    global.move_name[114] = "Searing Shot";
    global.move_type[114] = "Fire";
    global.move_type_id[114] = 1;
    global.move_is_physical[114] = false;
    global.move_power[114] = 100;
    global.move_accuracy[114] = 100; // Score 200
    
    global.move_name[115] = "Fire Pledge";
    global.move_type[115] = "Fire";
    global.move_type_id[115] = 1;
    global.move_is_physical[115] = false;
    global.move_power[115] = 50;
    global.move_accuracy[115] = 70; // Score 120
    
    global.move_name[116] = "Heat Wave";
    global.move_type[116] = "Fire";
    global.move_type_id[116] = 1;
    global.move_is_physical[116] = false;
    global.move_power[116] = 60;
    global.move_accuracy[116] = 100; // Score 160
    
    global.move_name[117] = "Mystical Fire";
    global.move_type[117] = "Fire";
    global.move_type_id[117] = 1;
    global.move_is_physical[117] = false;
    global.move_power[117] = 40;
    global.move_accuracy[117] = 80; // Score 120
    
    global.move_name[118] = "Lava Plume";
    global.move_type[118] = "Fire";
    global.move_type_id[118] = 1;
    global.move_is_physical[118] = false;
    global.move_power[118] = 90;
    global.move_accuracy[118] = 70; // Score 160
    
    global.move_name[119] = "Magma Storm";
    global.move_type[119] = "Fire";
    global.move_type_id[119] = 1;
    global.move_is_physical[119] = false;
    global.move_power[119] = 100;
    global.move_accuracy[119] = 100; // Score 200
    
    global.move_name[120] = "Inferno";
    global.move_type[120] = "Fire";
    global.move_type_id[120] = 1;
    global.move_is_physical[120] = false;
    global.move_power[120] = 100;
    global.move_accuracy[120] = 100; // Score 200
    
    show_debug_message("Fire type moves loaded (IDs 101-120)");
}