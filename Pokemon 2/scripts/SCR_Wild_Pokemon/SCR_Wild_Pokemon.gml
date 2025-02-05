function SCR_Wild_Pokemon()
{
	valid_wild_pokemon = [];
	for (var i = 1; i < array_length(global.Dex_Names); i++)
	{
		if (global.Dex_Hatching[i] = true)
		{
			array_push(valid_wild_pokemon, i)
		}
	}

	SCR_Shuffle_Array(valid_wild_pokemon);
}