function SCR_Moves_Ghost()
{
    // Ghost Type Moves - IDs 1101-1200 (REBALANCED TO MOVE SCORE SYSTEM)
    // Distribution: 6x Score 120, 8x Score 160, 6x Score 200
    // 10 Physical + 10 Special moves
    
    // Physical Ghost Moves (1101-1110)
    // Score 120 Physical (3 moves)
    global.move_name[1101] = "Astonish";
    global.move_type[1101] = "Ghost";
    global.move_type_id[1101] = 10;
    global.move_is_physical[1101] = true;
    global.move_power[1101] = 20;
    global.move_accuracy[1101] = 100; // Score: 120
    
    global.move_name[1102] = "Shadow Sneak";
    global.move_type[1102] = "Ghost";
    global.move_type_id[1102] = 10;
    global.move_is_physical[1102] = true;
    global.move_power[1102] = 35;
    global.move_accuracy[1102] = 85; // Score: 120
    
    global.move_name[1103] = "Lick";
    global.move_type[1103] = "Ghost";
    global.move_type_id[1103] = 10;
    global.move_is_physical[1103] = true;
    global.move_power[1103] = 45;
    global.move_accuracy[1103] = 75; // Score: 120
    
    // Score 160 Physical (4 moves)
    global.move_name[1104] = "Shadow Punch";
    global.move_type[1104] = "Ghost";
    global.move_type_id[1104] = 10;
    global.move_is_physical[1104] = true;
    global.move_power[1104] = 60;
    global.move_accuracy[1104] = 100; // Score: 160
    
    global.move_name[1105] = "Shadow Claw";
    global.move_type[1105] = "Ghost";
    global.move_type_id[1105] = 10;
    global.move_is_physical[1105] = true;
    global.move_power[1105] = 70;
    global.move_accuracy[1105] = 90; // Score: 160
    
    global.move_name[1106] = "Poltergeist";
    global.move_type[1106] = "Ghost";
    global.move_type_id[1106] = 10;
    global.move_is_physical[1106] = true;
    global.move_power[1106] = 80;
    global.move_accuracy[1106] = 80; // Score: 160
    
    global.move_name[1107] = "Last Respects";
    global.move_type[1107] = "Ghost";
    global.move_type_id[1107] = 10;
    global.move_is_physical[1107] = true;
    global.move_power[1107] = 85;
    global.move_accuracy[1107] = 75; // Score: 160
    
    // Score 200 Physical (3 moves)
    global.move_name[1108] = "Phantom Force";
    global.move_type[1108] = "Ghost";
    global.move_type_id[1108] = 10;
    global.move_is_physical[1108] = true;
    global.move_power[1108] = 100;
    global.move_accuracy[1108] = 100; // Score: 200
    
    global.move_name[1109] = "Spectral Thief";
    global.move_type[1109] = "Ghost";
    global.move_type_id[1109] = 10;
    global.move_is_physical[1109] = true;
    global.move_power[1109] = 100;
    global.move_accuracy[1109] = 100; // Score: 200
    
    global.move_name[1110] = "Soul Shred";
    global.move_type[1110] = "Ghost";
    global.move_type_id[1110] = 10;
    global.move_is_physical[1110] = true;
    global.move_power[1110] = 100;
    global.move_accuracy[1110] = 100; // Score: 200
    
    // Special Ghost Moves (1111-1120)
    // Score 120 Special (3 moves)
    global.move_name[1111] = "Confuse Ray";
    global.move_type[1111] = "Ghost";
    global.move_type_id[1111] = 10;
    global.move_is_physical[1111] = false;
    global.move_power[1111] = 20;
    global.move_accuracy[1111] = 100; // Score: 120
    
    global.move_name[1112] = "Night Shade";
    global.move_type[1112] = "Ghost";
    global.move_type_id[1112] = 10;
    global.move_is_physical[1112] = false;
    global.move_power[1112] = 35;
    global.move_accuracy[1112] = 85; // Score: 120
    
    global.move_name[1113] = "Spite";
    global.move_type[1113] = "Ghost";
    global.move_type_id[1113] = 10;
    global.move_is_physical[1113] = false;
    global.move_power[1113] = 45;
    global.move_accuracy[1113] = 75; // Score: 120
    
    // Score 160 Special (4 moves)
    global.move_name[1114] = "Ominous Wind";
    global.move_type[1114] = "Ghost";
    global.move_type_id[1114] = 10;
    global.move_is_physical[1114] = false;
    global.move_power[1114] = 60;
    global.move_accuracy[1114] = 100; // Score: 160
    
    global.move_name[1115] = "Hex";
    global.move_type[1115] = "Ghost";
    global.move_type_id[1115] = 10;
    global.move_is_physical[1115] = false;
    global.move_power[1115] = 70;
    global.move_accuracy[1115] = 90; // Score: 160
    
    global.move_name[1116] = "Shadow Ball";
    global.move_type[1116] = "Ghost";
    global.move_type_id[1116] = 10;
    global.move_is_physical[1116] = false;
    global.move_power[1116] = 80;
    global.move_accuracy[1116] = 80; // Score: 160
    
    global.move_name[1117] = "Shadow Storm";
    global.move_type[1117] = "Ghost";
    global.move_type_id[1117] = 10;
    global.move_is_physical[1117] = false;
    global.move_power[1117] = 85;
    global.move_accuracy[1117] = 75; // Score: 160
    
    // Score 200 Special (3 moves)
    global.move_name[1118] = "Moongeist Beam";
    global.move_type[1118] = "Ghost";
    global.move_type_id[1118] = 10;
    global.move_is_physical[1118] = false;
    global.move_power[1118] = 100;
    global.move_accuracy[1118] = 100; // Score: 200
    
    global.move_name[1119] = "Endless Nightmare";
    global.move_type[1119] = "Ghost";
    global.move_type_id[1119] = 10;
    global.move_is_physical[1119] = false;
    global.move_power[1119] = 100;
    global.move_accuracy[1119] = 100; // Score: 200
    
    global.move_name[1120] = "Max Phantasm";
    global.move_type[1120] = "Ghost";
    global.move_type_id[1120] = 10;
    global.move_is_physical[1120] = false;
    global.move_power[1120] = 100;
    global.move_accuracy[1120] = 100; // Score: 200
    
    show_debug_message("Ghost type moves loaded (IDs 1101-1120)");
}