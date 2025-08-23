function SCR_Moves_Normal()
{
    // Normal Type Moves - IDs 1-100
    // 10 Physical + 10 Special moves
    
    // Physical Normal Moves (1-10) - Rebalanced with score = power + accuracy
    global.move_name[1] = "Tackle";
    global.move_type[1] = "Normal";
    global.move_type_id[1] = 0;
    global.move_is_physical[1] = true;
    global.move_power[1] = 20;
    global.move_accuracy[1] = 100;
    
    global.move_name[2] = "Body Slam";
    global.move_type[2] = "Normal";
    global.move_type_id[2] = 0;
    global.move_is_physical[2] = true;
    global.move_power[2] = 70;
    global.move_accuracy[2] = 90;
    
    global.move_name[3] = "Quick Attack";
    global.move_type[3] = "Normal";
    global.move_type_id[3] = 0;
    global.move_is_physical[3] = true;
    global.move_power[3] = 40;
    global.move_accuracy[3] = 80;
    
    global.move_name[4] = "Scratch";
    global.move_type[4] = "Normal";
    global.move_type_id[4] = 0;
    global.move_is_physical[4] = true;
    global.move_power[4] = 60;
    global.move_accuracy[4] = 100;
    
    global.move_name[5] = "Slam";
    global.move_type[5] = "Normal";
    global.move_type_id[5] = 0;
    global.move_is_physical[5] = true;
    global.move_power[5] = 80;
    global.move_accuracy[5] = 80;
    
    global.move_name[6] = "Double-Edge";
    global.move_type[6] = "Normal";
    global.move_type_id[6] = 0;
    global.move_is_physical[6] = true;
    global.move_power[6] = 90;
    global.move_accuracy[6] = 70;
    
    global.move_name[7] = "Take Down";
    global.move_type[7] = "Normal";
    global.move_type_id[7] = 0;
    global.move_is_physical[7] = true;
    global.move_power[7] = 100;
    global.move_accuracy[7] = 60;
    
    global.move_name[8] = "Last Resort";
    global.move_type[8] = "Normal";
    global.move_type_id[8] = 0;
    global.move_is_physical[8] = true;
    global.move_power[8] = 100;
    global.move_accuracy[8] = 50;
    
    global.move_name[9] = "Extreme Speed";
    global.move_type[9] = "Normal";
    global.move_type_id[9] = 0;
    global.move_is_physical[9] = true;
    global.move_power[9] = 100;
    global.move_accuracy[9] = 60;
    
    global.move_name[10] = "Facade";
    global.move_type[10] = "Normal";
    global.move_type_id[10] = 0;
    global.move_is_physical[10] = true;
    global.move_power[10] = 100;
    global.move_accuracy[10] = 100;
    
    // Special Normal Moves (11-20) - Rebalanced with score = power + accuracy
    global.move_name[11] = "Swift";
    global.move_type[11] = "Normal";
    global.move_type_id[11] = 0;
    global.move_is_physical[11] = false;
    global.move_power[11] = 20;
    global.move_accuracy[11] = 100;
    
    global.move_name[12] = "Hyper Voice";
    global.move_type[12] = "Normal";
    global.move_type_id[12] = 0;
    global.move_is_physical[12] = false;
    global.move_power[12] = 40;
    global.move_accuracy[12] = 80;
    
    global.move_name[13] = "Tri Attack";
    global.move_type[13] = "Normal";
    global.move_type_id[13] = 0;
    global.move_is_physical[13] = false;
    global.move_power[13] = 50;
    global.move_accuracy[13] = 70;
    
    global.move_name[14] = "Hyper Beam";
    global.move_type[14] = "Normal";
    global.move_type_id[14] = 0;
    global.move_is_physical[14] = false;
    global.move_power[14] = 60;
    global.move_accuracy[14] = 100;
    
    global.move_name[15] = "Boomburst";
    global.move_type[15] = "Normal";
    global.move_type_id[15] = 0;
    global.move_is_physical[15] = false;
    global.move_power[15] = 70;
    global.move_accuracy[15] = 90;
    
    global.move_name[16] = "Weather Ball";
    global.move_type[16] = "Normal";
    global.move_type_id[16] = 0;
    global.move_is_physical[16] = false;
    global.move_power[16] = 80;
    global.move_accuracy[16] = 80;
    
    global.move_name[17] = "Round";
    global.move_type[17] = "Normal";
    global.move_type_id[17] = 0;
    global.move_is_physical[17] = false;
    global.move_power[17] = 90;
    global.move_accuracy[17] = 70;
    
    global.move_name[18] = "Hidden Power";
    global.move_type[18] = "Normal";
    global.move_type_id[18] = 0;
    global.move_is_physical[18] = false;
    global.move_power[18] = 80;
    global.move_accuracy[18] = 80;
    
    global.move_name[19] = "Judgment";
    global.move_type[19] = "Normal";
    global.move_type_id[19] = 0;
    global.move_is_physical[19] = false;
    global.move_power[19] = 100;
    global.move_accuracy[19] = 100;
    
    global.move_name[20] = "Techno Blast";
    global.move_type[20] = "Normal";
    global.move_type_id[20] = 0;
    global.move_is_physical[20] = false;
    global.move_power[20] = 100;
    global.move_accuracy[20] = 90;
    
    show_debug_message("Normal type moves loaded (IDs 1-20)");
}