function SCR_Get_Type_Index(type_name) 
{
    for (var i = 0; i < array_length(global.types); i++) 
	{
        if (global.types[i] == type_name) 
		{
            return i;
        }
    }
    return -1; // Return -1 if the type is not found
}
