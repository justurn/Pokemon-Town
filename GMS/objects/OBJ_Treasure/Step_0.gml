/// @description Insert description here
// You can write your code in this editor

if (timer != 0)
{
	timer ++
	if (timer > time_limit)
	{
		// F-001 Phase 4: Check if we're in adventure mode
		if (global.adventure_active) {
			if (global.is_trainer_battle) {
				// Just defeated boss - adventure complete!
				show_debug_message("Adventure Complete! Boss defeated!");
				room_goto(RM_Town);
				// Note: Adventure state reset handled by OBJ_Master_Town/Other_4 (I-022)
			} else {
				// Just defeated a habitat battle - move habitat to completed
				var defeated_habitat = global.selected_habitat_index;

				// Add to completed list
				array_push(global.adventure_completed_habitats, defeated_habitat);

				// Remove from remaining list
				var remaining_count = array_length(global.adventure_remaining_habitats);
				var new_remaining = [];
				for (var i = 0; i < remaining_count; i++) {
					if (global.adventure_remaining_habitats[i] != defeated_habitat) {
						array_push(new_remaining, global.adventure_remaining_habitats[i]);
					}
				}
				global.adventure_remaining_habitats = new_remaining;

				// Reset selection index to 0 for next choice
				global.adventure_selected_index = 0;

				show_debug_message("Habitat defeated: " + global.Habitat_Names[defeated_habitat]);
				show_debug_message("Remaining habitats: " + string(array_length(global.adventure_remaining_habitats)));
				show_debug_message("Completed habitats: " + string(array_length(global.adventure_completed_habitats)));

				// Return to adventure path (will show boss if no habitats remain)
				room_goto(RM_Adventure_Path);
			}
		} else {
			// Normal battle - return to town
			room_goto(RM_Town);
		}
	}
}

