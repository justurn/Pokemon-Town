// Create Event for Menu
button_count = 3; // Total number of buttons (New Game, Load Game, Quit Game)
buttons = ["New Game", "Load Game", "Quit Game"]; // Button labels or identifiers

// Define button height (based on your button sprite)
button_height = sprite_height;  // Assuming the button sprite's height is the desired height

// Calculate vertical spacing based on room height
vertical_spacing = room_height / (button_count + 1);  // Add 1 to leave space at the top and bottom

// Calculate horizontal position (center the buttons)
button_x = room_width / 2; // Adjust by half the width to account for the anchor
min_x = button_x - sprite_width/2
max_x = button_x + sprite_width/2

// Set initial Y position for the first button
start_y_position = vertical_spacing;

// Create Event
image_alpha = 0; // Make the object invisible, so it doesn't draw itself
