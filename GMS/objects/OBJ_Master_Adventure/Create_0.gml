/// @description Initialize Adventure Path Display (Phase 4)
// Determine background based on boss vs habitat battle

// Check if this is a boss battle or habitat selection
var is_boss_upcoming = (array_length(global.adventure_remaining_habitats) == 0 && !global.is_trainer_battle);

background_sprite = -1;

if (is_boss_upcoming || global.is_trainer_battle) {
    // Boss battle - show biome town background
    var biome_bg_index = global.biome_town[global.selected_biome_index];

    if (biome_bg_index >= 0 && biome_bg_index < array_length(global.background_name)) {
        var bg_name = global.background_name[biome_bg_index];
        background_sprite = asset_get_index(bg_name);
        show_debug_message("Adventure Path: BOSS battle - Background set to " + bg_name);
    }

    // Set up boss battle if not already set
    if (is_boss_upcoming) {
        global.is_trainer_battle = true;
        // Use a random habitat from completed list for Pokemon selection
        if (array_length(global.adventure_completed_habitats) > 0) {
            global.selected_habitat_index = global.adventure_completed_habitats[irandom(array_length(global.adventure_completed_habitats) - 1)];
        }
    }
} else {
    // Habitat selection - show currently selected habitat background
    var habitat_index = global.adventure_remaining_habitats[global.adventure_selected_index];
    var habitat_bg_index = global.Habitat_Backgrounds[habitat_index];

    if (habitat_bg_index >= 0 && habitat_bg_index < array_length(global.background_name)) {
        var bg_name = global.background_name[habitat_bg_index];
        background_sprite = asset_get_index(bg_name);
        show_debug_message("Adventure Path: Habitat background set to " + bg_name + " (" + global.Habitat_Names[habitat_index] + ")");
    }
}

// Animation for pointer sprite (2 frames)
pointer_frame = 0;
pointer_timer = 0;
pointer_speed = 30;  // Frames between animation updates

// Input delay system (similar to map/lab implementation)
delay_limit = room_speed / 5; // About 12 frames at 60fps (0.2 seconds)
delay = 0;

show_debug_message("Adventure Path: " + string(array_length(global.adventure_completed_habitats)) + " completed, " + string(array_length(global.adventure_remaining_habitats)) + " remaining");