/// @description Insert description here
// You can write your code in this editor

if (timer != 0)
{
	timer ++
	if (timer > time_limit)
	{
		// Check if we're in adventure mode
		if (global.adventure_active) {
			global.adventure_encounter++;

			if (global.adventure_encounter < global.adventure_max_encounters) {
				// More encounters remaining - continue adventure
				show_debug_message("Adventure: Encounter " + string(global.adventure_encounter) + "/" + string(global.adventure_max_encounters));
				room_goto(RM_Battle);
			} else {
				// Adventure complete - return to town
				show_debug_message("Adventure Complete! Total encounters: " + string(global.adventure_max_encounters));
				room_goto(RM_Town);
				// Note: Adventure state reset handled by OBJ_Master_Town/Other_4 (I-022)
			}
		} else {
			// Normal battle - return to town
			room_goto(RM_Town);
		}
	}
}

