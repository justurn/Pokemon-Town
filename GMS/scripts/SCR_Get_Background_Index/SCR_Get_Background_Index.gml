/*
 * SCR_Get_Background_Index.gml
 *
 * BACKGROUND INDEX LOOKUP FUNCTION
 *
 * Returns the index for a given background name.
 * Used to retrieve positioning data from global background arrays.
 *
 * Usage: var bg_index = SCR_Get_Background_Index("BG_Forest_Town");
 *
 * Returns: Background index (0-based), or -1 if not found
 *
 * Part of F-029 AI-Generated Background Assets
 */

/// @function SCR_Get_Background_Index(background_name)
/// @description Returns the index for a given background name, or -1 if not found
/// @param {string} background_name The name of the background to look up
/// @return {real} The index of the background, or -1 if not found

function SCR_Get_Background_Index(bg_name) {
    // Search through all registered backgrounds
    for (var i = 0; i < array_length(global.background_name); i++) {
        if (global.background_name[i] == bg_name) {
            return i;
        }
    }

    // Background not found
    show_debug_message("WARNING: Background '" + bg_name + "' not found in background registry!");
    return -1;
}
