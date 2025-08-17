function SCR_Moves_Rock()
{
    // Rock Type Moves - IDs 1001-1100
    // 10 Physical + 10 Special moves
    
    // Physical Rock Moves (1001-1010)
    global.move_name[1001] = "Rock Throw";
    global.move_type[1001] = "Rock";
    global.move_type_id[1001] = 9;
    global.move_is_physical[1001] = true;
    global.move_power[1001] = 50;
    global.move_accuracy[1001] = 90;
    
    global.move_name[1002] = "Rock Slide";
    global.move_type[1002] = "Rock";
    global.move_type_id[1002] = 9;
    global.move_is_physical[1002] = true;
    global.move_power[1002] = 75;
    global.move_accuracy[1002] = 90;
    
    global.move_name[1003] = "Stone Edge";
    global.move_type[1003] = "Rock";
    global.move_type_id[1003] = 9;
    global.move_is_physical[1003] = true;
    global.move_power[1003] = 100;
    global.move_accuracy[1003] = 80;
    
    global.move_name[1004] = "Rock Blast";
    global.move_type[1004] = "Rock";
    global.move_type_id[1004] = 9;
    global.move_is_physical[1004] = true;
    global.move_power[1004] = 25;
    global.move_accuracy[1004] = 90;
    
    global.move_name[1005] = "Head Smash";
    global.move_type[1005] = "Rock";
    global.move_type_id[1005] = 9;
    global.move_is_physical[1005] = true;
    global.move_power[1005] = 150;
    global.move_accuracy[1005] = 80;
    
    global.move_name[1006] = "Rock Wrecker";
    global.move_type[1006] = "Rock";
    global.move_type_id[1006] = 9;
    global.move_is_physical[1006] = true;
    global.move_power[1006] = 150;
    global.move_accuracy[1006] = 90;
    
    global.move_name[1007] = "Accelerock";
    global.move_type[1007] = "Rock";
    global.move_type_id[1007] = 9;
    global.move_is_physical[1007] = true;
    global.move_power[1007] = 40;
    global.move_accuracy[1007] = 100;
    
    global.move_name[1008] = "Smack Down";
    global.move_type[1008] = "Rock";
    global.move_type_id[1008] = 9;
    global.move_is_physical[1008] = true;
    global.move_power[1008] = 50;
    global.move_accuracy[1008] = 100;
    
    global.move_name[1009] = "Rollout";
    global.move_type[1009] = "Rock";
    global.move_type_id[1009] = 9;
    global.move_is_physical[1009] = true;
    global.move_power[1009] = 30;
    global.move_accuracy[1009] = 90;
    
    global.move_name[1010] = "Salt Cure";
    global.move_type[1010] = "Rock";
    global.move_type_id[1010] = 9;
    global.move_is_physical[1010] = true;
    global.move_power[1010] = 40;
    global.move_accuracy[1010] = 100;
    
    // Special Rock Moves (1011-1020)
    global.move_name[1011] = "Rock Tomb";
    global.move_type[1011] = "Rock";
    global.move_type_id[1011] = 9;
    global.move_is_physical[1011] = false;
    global.move_power[1011] = 60;
    global.move_accuracy[1011] = 95;
    
    global.move_name[1012] = "Ancient Power";
    global.move_type[1012] = "Rock";
    global.move_type_id[1012] = 9;
    global.move_is_physical[1012] = false;
    global.move_power[1012] = 60;
    global.move_accuracy[1012] = 100;
    
    global.move_name[1013] = "Power Gem";
    global.move_type[1013] = "Rock";
    global.move_type_id[1013] = 9;
    global.move_is_physical[1013] = false;
    global.move_power[1013] = 80;
    global.move_accuracy[1013] = 100;
    
    global.move_name[1014] = "Stealth Rock";
    global.move_type[1014] = "Rock";
    global.move_type_id[1014] = 9;
    global.move_is_physical[1014] = false;
    global.move_power[1014] = 60;
    global.move_accuracy[1014] = 100;
    
    global.move_name[1015] = "Diamond Storm";
    global.move_type[1015] = "Rock";
    global.move_type_id[1015] = 9;
    global.move_is_physical[1015] = false;
    global.move_power[1015] = 100;
    global.move_accuracy[1015] = 95;
    
    global.move_name[1016] = "Meteor Beam";
    global.move_type[1016] = "Rock";
    global.move_type_id[1016] = 9;
    global.move_is_physical[1016] = false;
    global.move_power[1016] = 120;
    global.move_accuracy[1016] = 90;
    
    global.move_name[1017] = "Splintered Stormshards";
    global.move_type[1017] = "Rock";
    global.move_type_id[1017] = 9;
    global.move_is_physical[1017] = false;
    global.move_power[1017] = 120;
    global.move_accuracy[1017] = 100;
    
    global.move_name[1018] = "Continental Crush";
    global.move_type[1018] = "Rock";
    global.move_type_id[1018] = 9;
    global.move_is_physical[1018] = false;
    global.move_power[1018] = 120;
    global.move_accuracy[1018] = 100;
    
    global.move_name[1019] = "Max Rockfall";
    global.move_type[1019] = "Rock";
    global.move_type_id[1019] = 9;
    global.move_is_physical[1019] = false;
    global.move_power[1019] = 130;
    global.move_accuracy[1019] = 100;
    
    global.move_name[1020] = "Stone Axe";
    global.move_type[1020] = "Rock";
    global.move_type_id[1020] = 9;
    global.move_is_physical[1020] = false;
    global.move_power[1020] = 65;
    global.move_accuracy[1020] = 90;
    
    show_debug_message("Rock type moves loaded (IDs 1001-1020)");
}