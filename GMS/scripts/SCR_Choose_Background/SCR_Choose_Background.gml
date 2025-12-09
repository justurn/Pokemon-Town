// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function SCR_Choose_Background()
/// @description Selects appropriate battle background based on context (wild vs trainer battles)
/// @returns {asset} Background asset index
function SCR_Choose_Background(){
    var bg_index;

    // I-027 / F-029: Trainer battles (rival/gym) use biome-specific town backgrounds
    if (global.is_trainer_battle) {
        bg_index = global.biome_town[global.selected_biome_index];
        show_debug_message("TRAINER BATTLE - Using biome town index: " + string(bg_index));
    } else {
        // Wild Pokemon battles use habitat background
        // Bounds check
        if (global.selected_habitat_index < 0 || global.selected_habitat_index >= array_length(global.Habitat_Backgrounds)) {
            show_debug_message("ERROR: Invalid habitat index " + string(global.selected_habitat_index) + ", using index 0");
            global.selected_habitat_index = 0;
        }
        bg_index = global.Habitat_Backgrounds[global.selected_habitat_index];
    }

    // F-029: Convert background index to background name
    if (bg_index < 0 || bg_index >= array_length(global.background_name)) {
        show_debug_message("ERROR: Invalid background index " + string(bg_index) + ", using default");
        bg_index = 0; // Fallback to first background
    }

    var background_name = global.background_name[bg_index];
    show_debug_message("Background: " + background_name + " (index: " + string(bg_index) + ")");

    var background_asset = asset_get_index(background_name);

    if (background_asset == -1) {
        show_debug_message("ERROR: Background '" + background_name + "' not found!");
        // Fallback to first habitat background
        var fallback_name = global.background_name[0];
        background_asset = asset_get_index(fallback_name);
    }

    return background_asset;
}
