// Draw the lab master (the arrow sprite) at the current position
draw_self();

// Draw the type of the egg near the egg's position
var egg_type = global.egg_types[selected_egg];  // Get the type ID for the selected egg
var type_string = global.types[egg_type];  // Get the string corresponding to the type ID

// Set up the text color and draw the type string
draw_set_color(c_white);  // You can change the color if needed3
draw_set_halign(fa_center); // Horizontal alignment to center

draw_text(lab_master_x, lab_master_y - 100, type_string);  // Draw the type above the lab master
