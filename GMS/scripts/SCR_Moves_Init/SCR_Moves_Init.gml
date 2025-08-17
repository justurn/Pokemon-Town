function SCR_Moves_Init()
{
    // Move Database - Parallel Arrays Structure
    // Each type reserves 100 IDs based on type_id order
    // Normal (0): 1-100, Fire (1): 101-200, Water (2): 201-300, etc.
    
    global.move_name = [];
    global.move_type = [];
    global.move_type_id = [];
    global.move_is_physical = [];
    global.move_power = [];
    global.move_accuracy = [];
    
    // Reserve ID 0 for "no move"
    global.move_name[0] = "None";
    global.move_type[0] = "Normal";
    global.move_type_id[0] = 0;
    global.move_is_physical[0] = true;
    global.move_power[0] = 60;
    global.move_accuracy[0] = 100;
    
    // Initialize each type's moves (18 total types)
    SCR_Moves_Normal();     // type_id 0:  IDs 1-100 (currently 1-20)
    SCR_Moves_Fire();       // type_id 1:  IDs 101-200 (currently 101-120)
    SCR_Moves_Water();      // type_id 2:  IDs 201-300 (currently 201-220)
    SCR_Moves_Grass();      // type_id 3:  IDs 301-400 (currently 301-320)
    SCR_Moves_Electric();   // type_id 4:  IDs 401-500 (currently 401-420)
    SCR_Moves_Psychic();    // type_id 5:  IDs 501-600 (currently 501-520)
    SCR_Moves_Bug();        // type_id 6:  IDs 601-700 (currently 601-620)
    SCR_Moves_Dragon();     // type_id 7:  IDs 701-800 (currently 701-720)
    SCR_Moves_Fighting();   // type_id 8:  IDs 801-900 (currently 801-820)
    SCR_Moves_Rock();       // type_id 9:  IDs 1001-1100 (currently 1001-1020)
    SCR_Moves_Ghost();      // type_id 10: IDs 1101-1200 (currently 1101-1120)
    SCR_Moves_Ground();     // type_id 11: IDs 1201-1300 (currently 1201-1220)
    SCR_Moves_Poison();     // type_id 12: IDs 901-1000 (currently 901-920)
    SCR_Moves_Ice();        // type_id 13: IDs 1601-1700 (currently 1601-1620)
    SCR_Moves_Fairy();      // type_id 14: IDs 1301-1400 (currently 1301-1320)
    SCR_Moves_Steel();      // type_id 15: IDs 1401-1500 (currently 1401-1420)
    SCR_Moves_Flying();     // type_id 16: IDs 1701-1800 (currently 1701-1720)
    SCR_Moves_Dark();       // type_id 17: IDs 1501-1600 (currently 1501-1520)
    
    show_debug_message("Move database initialized using modular type scripts");
    show_debug_message("Total types loaded: 18 types with 20 moves each = 360 moves");
    show_debug_message("Structure: global.move_name[], global.move_type[], global.move_type_id[], global.move_is_physical[], global.move_power[], global.move_accuracy[]");
}