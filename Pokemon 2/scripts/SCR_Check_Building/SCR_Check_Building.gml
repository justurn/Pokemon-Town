function SCR_Check_Building(index, entry_condition)
{
	var cost = global.building_cost[index];
	
    if (global.building_count == index && global.item_held[index] == -1)
    {
		SCR_Items_Spawn(index, global.building_cost[index]);
        global.item_held[index] = 0;
        global.tip_string = "";
    }
	if (global.building_count = index && global.item_held[index] < global.building_cost[index])
	{
		var item_name = global.item_name[index];
		global.tip_string = string(item_name) + "s Left: " + string(global.building_cost[index] - global.item_held[index]);
	}
    if (global.item_held[index] >= cost && global.building_count == index)
    {
        global.build_allowed[index] = true;
        global.tip_string = "Build " + string(global.building_name[index]);
    }
    if (entry_condition && global.building_count == index + 1)
    {
        global.entry_allowed[index] = true;
        global.tip_string = "Enter " + string(global.building_name[index]);
    }
}
