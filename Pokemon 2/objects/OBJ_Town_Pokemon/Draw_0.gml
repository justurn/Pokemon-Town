if (global.pokemon_health <= 0) 
{
    // Increment flash timer
    flash_timer++;

    // Toggle the flash state every 10 frames (adjust as needed)
    if (flash_timer >= 10)
	{
        flash_state = !flash_state;
        flash_timer = 0; // Reset timer
    }

    // Set the color based on flash_state
    var flash_color = flash_state ? c_red : c_white;

    // Draw the Pokémon with the flash effect
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flash_color, image_alpha);
} 
else 
{
    // Reset the timer if health is restored
    flash_timer = 0;
    flash_state = false;

    // Draw normally
    draw_self();
}
