// Draw Event for Menu

// Set the font to FNT_Menu for the buttons
draw_set_font(FNT_Menu);

// Set the font alignment to middle (both horizontally and vertically)
draw_set_halign(fa_center); // Horizontal alignment to center
draw_set_valign(fa_middle); // Vertical alignment to middle

for (var i = 0; i < button_count; i++) {
    var button_y = start_y_position + (i * vertical_spacing);  // Calculate Y position for each button
	var min_y = button_y - sprite_height/2
	var max_y = button_y + sprite_height/2

    // Check if the mouse is hovering over the button
    var is_hovered = mouse_x > min_x && mouse_x < max_x && mouse_y > min_y && mouse_y < max_y;

    // If hovered, use the hover sprite (animate if needed)
    if (is_hovered) 
	{
        // Set the sprite animation (start playing animation)
        sprite_index = SPR_Menu_Button_Selected;
        image_speed = 0.1; // Adjust the speed of the animation (you can tweak the value)

        // Draw the button sprite
        draw_sprite(sprite_index, image_index, button_x, button_y);
    } 
	else 
	{
        // Set the default sprite (no animation)
        sprite_index = SPR_Menu_Button;
        image_speed = 0; // Stop animation

        // Draw the default button sprite
        draw_sprite(sprite_index, image_index, button_x, button_y);
    }

    // Draw the button text label (centered within the button)
    draw_text(button_x, button_y, buttons[i]);
}
