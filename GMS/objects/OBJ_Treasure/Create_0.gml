// Check for treasure limit override (for mega chest rewards)
if (global.treasure_limit_override > 0) {
    treasure_limit = global.treasure_limit_override;
    global.treasure_limit_override = -1; // Reset override
    sprite_index = SPR_Chest_Epic; // Use epic chest sprite for rival rewards
    show_debug_message("Mega Chest: " + string(treasure_limit) + " items awarded!");
} else {
    treasure_limit = irandom(2) + 1;
    // Keep default chest sprite for regular treasure
}

time_limit = room_speed * 1.5; // allow 2 seconds to view the treasure
timer = 0;
no_treasure = true;
