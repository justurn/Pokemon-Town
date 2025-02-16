// Create Event of OBJ_Plot
flashing = false;      // Flag to track whether the plot is flashing

var spr_width = sprite_get_width(sprite_index)
var x_scalar = (global.plot_width / spr_width) * 0.9
image_xscale = x_scalar

show_debug_message("PLOT X scale = " + string(image_xscale))

plot_left = x - sprite_width/2;    // Left edge of the plot
plot_right = x + sprite_width/2;   // Right edge of the plot

// Define colors for flashing
flash_color = c_red; // Color used for the flashing effect (you can adjust this to your preference)
normal_color = c_white; // Normal color of the plot (could be the original sprite color)

