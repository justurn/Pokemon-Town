// Use side panel sprite instead of floating arrow
sprite_index = SPR_Side_Panel;

// Fixed panel position (left side of room)
// Sprite origin is in middle, so position at half sprite dimensions
x = sprite_get_width(SPR_Side_Panel) / 2;
y = sprite_get_height(SPR_Side_Panel) / 2;

global.chosen_egg_type = -1; 
global.wild_pokemon_a_id = 0;
global.wild_pokemon_b_id = 0;
global.wild_pokemon_a_x = -1;
global.wild_pokemon_b_x = -1;

delay_limit = room_speed / 5;
delay = 0;
// Simple fixed positioning for single egg display
egg_count = array_length(global.egg_types_found)
var panel_width = sprite_get_width(SPR_Side_Panel);

// Fixed egg position - center of right side of room  
var egg_x = panel_width + ((room_width - panel_width) / 2); // Center in right half
var egg_y = 350; // Fixed Y position

var incubator_scale = 1;
var egg_scale = incubator_scale * 2.5;

// Initialize selected egg before using it
global.selected_egg = 0;  // Start with the first egg (index 0)

show_debug_message("=== SIMPLIFIED EGG POSITIONING ===");
show_debug_message("Panel width: " + string(panel_width));
show_debug_message("Fixed egg position: (" + string(egg_x) + ", " + string(egg_y) + ")");
show_debug_message("Egg count: " + string(egg_count));


// Check for multiple instances and destroy older ones
var master_lab_count = instance_number(OBJ_Master_Lab);
if (master_lab_count > 1) {
    show_debug_message("WARNING: Multiple OBJ_Master_Lab instances detected (" + string(master_lab_count) + ")");
    // Destroy all other instances except this one
    with (OBJ_Master_Lab) {
        if (id != other.id) {
            show_debug_message("Destroying duplicate OBJ_Master_Lab instance");
            instance_destroy();
        }
    }
}

// Destroy any existing lab eggs and incubators first (fixes positioning bug on multiple visits)
with (OBJ_Lab_Egg) {
    show_debug_message("Destroying existing lab egg at: (" + string(x) + ", " + string(y) + ")");
    instance_destroy();
}
with (OBJ_Incubator) {
    show_debug_message("Destroying existing incubator at: (" + string(x) + ", " + string(y) + ")");
    instance_destroy();
}

// Create single egg and incubator at fixed position (only if eggs exist)
if (egg_count > 0) {
    // Create egg instance
    var instance_egg = instance_create_layer(egg_x, egg_y, "Instances", OBJ_Lab_Egg);
    instance_egg.type_id = global.egg_types_found[global.selected_egg];
    instance_egg.image_xscale = egg_scale;
    instance_egg.image_yscale = egg_scale;
    
    // Create incubator instance
    var incubator = instance_create_layer(egg_x, egg_y, "Instances_1", OBJ_Incubator);
    incubator.image_xscale = incubator_scale;
    incubator.image_yscale = incubator_scale;
    
    show_debug_message("Created egg and incubator at fixed position: (" + string(egg_x) + ", " + string(egg_y) + ")");
}

// global.selected_egg already initialized above

// Panel content variables
panel_prob_data = undefined;
lab_mode = "egg_selection"; // or "pokedex_mode" for F-005
display_pokemon_count = 0;

show_debug_message("============================");

// Update panel content for initial egg (only if eggs exist)
if (egg_count > 0) {
    SCR_Update_Panel_Content();
}