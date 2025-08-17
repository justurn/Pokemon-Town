function SCR_Moves_Fire()
{
    // Fire Type Moves - IDs 101-200
    // 10 Physical + 10 Special moves
    
    // Physical Fire Moves (101-110)
    global.move_name[101] = "Fire Punch";
    global.move_type[101] = "Fire";
    global.move_type_id[101] = 1;
    global.move_is_physical[101] = true;
    global.move_power[101] = 75;
    global.move_accuracy[101] = 100;
    
    global.move_name[102] = "Flame Wheel";
    global.move_type[102] = "Fire";
    global.move_type_id[102] = 1;
    global.move_is_physical[102] = true;
    global.move_power[102] = 60;
    global.move_accuracy[102] = 100;
    
    global.move_name[103] = "Blaze Kick";
    global.move_type[103] = "Fire";
    global.move_type_id[103] = 1;
    global.move_is_physical[103] = true;
    global.move_power[103] = 85;
    global.move_accuracy[103] = 90;
    
    global.move_name[104] = "Fire Fang";
    global.move_type[104] = "Fire";
    global.move_type_id[104] = 1;
    global.move_is_physical[104] = true;
    global.move_power[104] = 65;
    global.move_accuracy[104] = 95;
    
    global.move_name[105] = "Flare Blitz";
    global.move_type[105] = "Fire";
    global.move_type_id[105] = 1;
    global.move_is_physical[105] = true;
    global.move_power[105] = 120;
    global.move_accuracy[105] = 100;
    
    global.move_name[106] = "Flame Charge";
    global.move_type[106] = "Fire";
    global.move_type_id[106] = 1;
    global.move_is_physical[106] = true;
    global.move_power[106] = 50;
    global.move_accuracy[106] = 100;
    
    global.move_name[107] = "Fire Lash";
    global.move_type[107] = "Fire";
    global.move_type_id[107] = 1;
    global.move_is_physical[107] = true;
    global.move_power[107] = 80;
    global.move_accuracy[107] = 100;
    
    global.move_name[108] = "Sacred Fire";
    global.move_type[108] = "Fire";
    global.move_type_id[108] = 1;
    global.move_is_physical[108] = true;
    global.move_power[108] = 100;
    global.move_accuracy[108] = 95;
    
    global.move_name[109] = "V-create";
    global.move_type[109] = "Fire";
    global.move_type_id[109] = 1;
    global.move_is_physical[109] = true;
    global.move_power[109] = 180;
    global.move_accuracy[109] = 95;
    
    global.move_name[110] = "Pyro Ball";
    global.move_type[110] = "Fire";
    global.move_type_id[110] = 1;
    global.move_is_physical[110] = true;
    global.move_power[110] = 120;
    global.move_accuracy[110] = 90;
    
    // Special Fire Moves (111-120)
    global.move_name[111] = "Ember";
    global.move_type[111] = "Fire";
    global.move_type_id[111] = 1;
    global.move_is_physical[111] = false;
    global.move_power[111] = 40;
    global.move_accuracy[111] = 100;
    
    global.move_name[112] = "Flamethrower";
    global.move_type[112] = "Fire";
    global.move_type_id[112] = 1;
    global.move_is_physical[112] = false;
    global.move_power[112] = 90;
    global.move_accuracy[112] = 100;
    
    global.move_name[113] = "Fire Blast";
    global.move_type[113] = "Fire";
    global.move_type_id[113] = 1;
    global.move_is_physical[113] = false;
    global.move_power[113] = 110;
    global.move_accuracy[113] = 85;
    
    global.move_name[114] = "Overheat";
    global.move_type[114] = "Fire";
    global.move_type_id[114] = 1;
    global.move_is_physical[114] = false;
    global.move_power[114] = 130;
    global.move_accuracy[114] = 90;
    
    global.move_name[115] = "Blast Burn";
    global.move_type[115] = "Fire";
    global.move_type_id[115] = 1;
    global.move_is_physical[115] = false;
    global.move_power[115] = 150;
    global.move_accuracy[115] = 90;
    
    global.move_name[116] = "Heat Wave";
    global.move_type[116] = "Fire";
    global.move_type_id[116] = 1;
    global.move_is_physical[116] = false;
    global.move_power[116] = 95;
    global.move_accuracy[116] = 90;
    
    global.move_name[117] = "Eruption";
    global.move_type[117] = "Fire";
    global.move_type_id[117] = 1;
    global.move_is_physical[117] = false;
    global.move_power[117] = 150;
    global.move_accuracy[117] = 100;
    
    global.move_name[118] = "Lava Plume";
    global.move_type[118] = "Fire";
    global.move_type_id[118] = 1;
    global.move_is_physical[118] = false;
    global.move_power[118] = 80;
    global.move_accuracy[118] = 100;
    
    global.move_name[119] = "Magma Storm";
    global.move_type[119] = "Fire";
    global.move_type_id[119] = 1;
    global.move_is_physical[119] = false;
    global.move_power[119] = 100;
    global.move_accuracy[119] = 75;
    
    global.move_name[120] = "Blue Flare";
    global.move_type[120] = "Fire";
    global.move_type_id[120] = 1;
    global.move_is_physical[120] = false;
    global.move_power[120] = 130;
    global.move_accuracy[120] = 85;
    
    show_debug_message("Fire type moves loaded (IDs 101-120)");
}