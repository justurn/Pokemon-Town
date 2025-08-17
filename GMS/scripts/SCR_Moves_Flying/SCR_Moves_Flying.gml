function SCR_Moves_Flying()
{
    // Flying Type Moves - IDs 1701-1800
    // 10 Physical + 10 Special moves
    
    // Physical Flying Moves (1701-1710)
    global.move_name[1701] = "Aerial Ace";
    global.move_type[1701] = "Flying";
    global.move_type_id[1701] = 16;
    global.move_is_physical[1701] = true;
    global.move_power[1701] = 60;
    global.move_accuracy[1701] = 999;
    
    global.move_name[1702] = "Brave Bird";
    global.move_type[1702] = "Flying";
    global.move_type_id[1702] = 16;
    global.move_is_physical[1702] = true;
    global.move_power[1702] = 120;
    global.move_accuracy[1702] = 100;
    
    global.move_name[1703] = "Fly";
    global.move_type[1703] = "Flying";
    global.move_type_id[1703] = 16;
    global.move_is_physical[1703] = true;
    global.move_power[1703] = 90;
    global.move_accuracy[1703] = 95;
    
    global.move_name[1704] = "Wing Attack";
    global.move_type[1704] = "Flying";
    global.move_type_id[1704] = 16;
    global.move_is_physical[1704] = true;
    global.move_power[1704] = 60;
    global.move_accuracy[1704] = 100;
    
    global.move_name[1705] = "Peck";
    global.move_type[1705] = "Flying";
    global.move_type_id[1705] = 16;
    global.move_is_physical[1705] = true;
    global.move_power[1705] = 35;
    global.move_accuracy[1705] = 100;
    
    global.move_name[1706] = "Drill Peck";
    global.move_type[1706] = "Flying";
    global.move_type_id[1706] = 16;
    global.move_is_physical[1706] = true;
    global.move_power[1706] = 80;
    global.move_accuracy[1706] = 100;
    
    global.move_name[1707] = "Pluck";
    global.move_type[1707] = "Flying";
    global.move_type_id[1707] = 16;
    global.move_is_physical[1707] = true;
    global.move_power[1707] = 60;
    global.move_accuracy[1707] = 100;
    
    global.move_name[1708] = "Acrobatics";
    global.move_type[1708] = "Flying";
    global.move_type_id[1708] = 16;
    global.move_is_physical[1708] = true;
    global.move_power[1708] = 55;
    global.move_accuracy[1708] = 100;
    
    global.move_name[1709] = "Sky Attack";
    global.move_type[1709] = "Flying";
    global.move_type_id[1709] = 16;
    global.move_is_physical[1709] = true;
    global.move_power[1709] = 140;
    global.move_accuracy[1709] = 90;
    
    global.move_name[1710] = "Sky Drop";
    global.move_type[1710] = "Flying";
    global.move_type_id[1710] = 16;
    global.move_is_physical[1710] = true;
    global.move_power[1710] = 60;
    global.move_accuracy[1710] = 100;
    
    // Special Flying Moves (1711-1720)
    global.move_name[1711] = "Air Slash";
    global.move_type[1711] = "Flying";
    global.move_type_id[1711] = 16;
    global.move_is_physical[1711] = false;
    global.move_power[1711] = 75;
    global.move_accuracy[1711] = 95;
    
    global.move_name[1712] = "Hurricane";
    global.move_type[1712] = "Flying";
    global.move_type_id[1712] = 16;
    global.move_is_physical[1712] = false;
    global.move_power[1712] = 110;
    global.move_accuracy[1712] = 70;
    
    global.move_name[1713] = "Gust";
    global.move_type[1713] = "Flying";
    global.move_type_id[1713] = 16;
    global.move_is_physical[1713] = false;
    global.move_power[1713] = 40;
    global.move_accuracy[1713] = 100;
    
    global.move_name[1714] = "Whirlwind";
    global.move_type[1714] = "Flying";
    global.move_type_id[1714] = 16;
    global.move_is_physical[1714] = false;
    global.move_power[1714] = 60;
    global.move_accuracy[1714] = 100;
    
    global.move_name[1715] = "Twister";
    global.move_type[1715] = "Flying";
    global.move_type_id[1715] = 16;
    global.move_is_physical[1715] = false;
    global.move_power[1715] = 40;
    global.move_accuracy[1715] = 100;
    
    global.move_name[1716] = "Air Cutter";
    global.move_type[1716] = "Flying";
    global.move_type_id[1716] = 16;
    global.move_is_physical[1716] = false;
    global.move_power[1716] = 60;
    global.move_accuracy[1716] = 95;
    
    global.move_name[1717] = "Defog";
    global.move_type[1717] = "Flying";
    global.move_type_id[1717] = 16;
    global.move_is_physical[1717] = false;
    global.move_power[1717] = 60;
    global.move_accuracy[1717] = 100;
    
    global.move_name[1718] = "Roost";
    global.move_type[1718] = "Flying";
    global.move_type_id[1718] = 16;
    global.move_is_physical[1718] = false;
    global.move_power[1718] = 60;
    global.move_accuracy[1718] = 100;
    
    global.move_name[1719] = "Supersonic Skystrike";
    global.move_type[1719] = "Flying";
    global.move_type_id[1719] = 16;
    global.move_is_physical[1719] = false;
    global.move_power[1719] = 120;
    global.move_accuracy[1719] = 100;
    
    global.move_name[1720] = "Max Airstream";
    global.move_type[1720] = "Flying";
    global.move_type_id[1720] = 16;
    global.move_is_physical[1720] = false;
    global.move_power[1720] = 130;
    global.move_accuracy[1720] = 100;
    
    show_debug_message("Flying type moves loaded (IDs 1701-1720)");
}