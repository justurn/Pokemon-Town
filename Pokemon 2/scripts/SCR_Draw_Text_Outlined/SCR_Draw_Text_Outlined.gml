/// @description Draw text with black outline for better visibility
/// @param x X position
/// @param y Y position  
/// @param text Text to draw
/// @param outline_color Color of the outline (default black)

function draw_text_outlined(x, y, text, outline_color = c_black) {
    var original_color = draw_get_color();
    
    // Draw outline (8 directions)
    draw_set_color(outline_color);
    draw_text(x - 1, y - 1, text);
    draw_text(x, y - 1, text);
    draw_text(x + 1, y - 1, text);
    draw_text(x - 1, y, text);
    draw_text(x + 1, y, text);
    draw_text(x - 1, y + 1, text);
    draw_text(x, y + 1, text);
    draw_text(x + 1, y + 1, text);
    
    // Draw main text
    draw_set_color(original_color);
    draw_text(x, y, text);
}