/// @description Handle Input and Room Transition (Phase 4)
// Left/Right: Cycle through habitat choices
// ENTER: Lock in selection and proceed to battle

// Input delay system
delay++;

var is_boss_battle = (array_length(global.adventure_remaining_habitats) == 0);

// Only allow cycling if there are habitats to choose from
if (!is_boss_battle && array_length(global.adventure_remaining_habitats) > 1) {
    // Left arrow - previous habitat (with input delay)
    if (global.left && delay > delay_limit) {
        delay = 0;
        global.adventure_selected_index--;
        if (global.adventure_selected_index < 0) {
            global.adventure_selected_index = array_length(global.adventure_remaining_habitats) - 1;
        }

        // Update background for new selection
        var habitat_index = global.adventure_remaining_habitats[global.adventure_selected_index];
        var habitat_bg_index = global.Habitat_Backgrounds[habitat_index];
        if (habitat_bg_index >= 0 && habitat_bg_index < array_length(global.background_name)) {
            background_sprite = asset_get_index(global.background_name[habitat_bg_index]);
        }
        show_debug_message("Cycled to habitat: " + global.Habitat_Names[habitat_index]);
    }

    // Right arrow - next habitat (with input delay)
    if (global.right && delay > delay_limit) {
        delay = 0;
        global.adventure_selected_index++;
        if (global.adventure_selected_index >= array_length(global.adventure_remaining_habitats)) {
            global.adventure_selected_index = 0;
        }

        // Update background for new selection
        var habitat_index = global.adventure_remaining_habitats[global.adventure_selected_index];
        var habitat_bg_index = global.Habitat_Backgrounds[habitat_index];
        if (habitat_bg_index >= 0 && habitat_bg_index < array_length(global.background_name)) {
            background_sprite = asset_get_index(global.background_name[habitat_bg_index]);
        }
        show_debug_message("Cycled to habitat: " + global.Habitat_Names[habitat_index]);
    }
}

// ENTER - proceed to battle (with input delay)
if (global.enter && delay > delay_limit) {
    delay = 0;
    if (is_boss_battle) {
        // Boss battle
        show_debug_message("Adventure Path: Proceeding to BOSS battle");
        room_goto(RM_Battle);
    } else {
        // Lock in habitat choice
        var chosen_habitat = global.adventure_remaining_habitats[global.adventure_selected_index];
        global.selected_habitat_index = chosen_habitat;
        global.is_trainer_battle = false;  // Regular habitat battle

        show_debug_message("Adventure Path: Player chose " + global.Habitat_Names[chosen_habitat]);
        room_goto(RM_Battle);
    }
}

// Animate pointer sprite
pointer_timer++;
if (pointer_timer >= pointer_speed) {
    pointer_timer = 0;
    pointer_frame = (pointer_frame + 1) % 2;  // Cycle between 0 and 1
}