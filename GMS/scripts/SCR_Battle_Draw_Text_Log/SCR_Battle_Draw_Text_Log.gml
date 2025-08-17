function SCR_Battle_Draw_Text_Log() {
    var text_area_x = 10;
    var text_area_y = ui_action_section_height + 50;  // Lowered by 30px more (was +20, now +50)
    var text_area_width = ui_left_panel_width - 20;
    var text_area_height = min(ui_text_section_height - 50, room_height - text_area_y - 10); // Prevent going below screen
    
    // Enhanced battle text area display during level up
    if (battle_state == "LEVEL_UP") {
        // Note: Background and border now drawn permanently in main draw step
        
        // Title
        draw_set_font(FNT_Small);
        draw_set_color(c_yellow);
        draw_set_halign(fa_center);
        draw_text(ui_left_panel_width/2, battle_text_line_1_y - battle_line_spacing, "STAT INCREASES");
        
        // Stat comparison display
        draw_set_font(FNT_Small);
        draw_set_halign(fa_left);
        var stat_x = 40;
        
        // Helper function to format stat change display
        function format_stat_line(stat_name, before_val, after_val, change_val) {
            var change_str = "";
            
            if (change_val > 0) {
                change_str = " (+" + string(change_val) + ")";
            } else if (change_val < 0) {
                change_str = " (" + string(change_val) + ")";
            } else {
                change_str = " (±0)";
            }
            
            return {
                text: stat_name + ": " + string(before_val) + " -> " + string(after_val),
                change_text: change_str
            };
        }
        
        // Only display stats that actually changed
        var all_stats = [
            format_stat_line("Attack", victory_data.stats_before.attack, victory_data.stats_after.attack, victory_data.stat_changes.attack),
            format_stat_line("Sp. Attack", victory_data.stats_before.sp_attack, victory_data.stats_after.sp_attack, victory_data.stat_changes.sp_attack),
            format_stat_line("Defence", victory_data.stats_before.defence, victory_data.stats_after.defence, victory_data.stat_changes.defence),
            format_stat_line("Sp. Defence", victory_data.stats_before.sp_defence, victory_data.stats_after.sp_defence, victory_data.stat_changes.sp_defence),
            format_stat_line("Speed", victory_data.stats_before.speed, victory_data.stats_after.speed, victory_data.stat_changes.speed),
            format_stat_line("Max HP", victory_data.stats_before.health_max, victory_data.stats_after.health_max, victory_data.stat_changes.health_max)
        ];
        
        // Filter to only show stats with changes
        var stats_to_display = [];
        var stat_change_values = [
            victory_data.stat_changes.attack,
            victory_data.stat_changes.sp_attack,
            victory_data.stat_changes.defence,
            victory_data.stat_changes.sp_defence,
            victory_data.stat_changes.speed,
            victory_data.stat_changes.health_max
        ];
        
        for (var i = 0; i < array_length(all_stats); i++) {
            if (stat_change_values[i] != 0) {
                array_push(stats_to_display, all_stats[i]);
            }
        }
        
        // Column layout for better alignment (more space for stat names)
        var col1_x = stat_x;                  // Stat name column
        var col2_x = stat_x + 210;            // Before value column  
        var col3_x = stat_x + 245;            // Arrow column
        var col4_x = stat_x + 295;            // After value column
        var col5_x = stat_x + 335;            // Change column
        
        // Draw stat lines using consistent spacing and columns
        for (var i = 0; i < array_length(stats_to_display); i++) {
            var stat_info = stats_to_display[i];
            var y_pos = battle_text_line_1_y + (i * battle_line_spacing);
            
            // Parse the original stat info
            var stat_name = "";
            var before_val = 0;
            var after_val = 0; 
            var change_val = 0;
            
            if (i < array_length(all_stats)) {
                var stat_index = 0;
                var change_values = [
                    victory_data.stat_changes.attack,
                    victory_data.stat_changes.sp_attack,
                    victory_data.stat_changes.defence,
                    victory_data.stat_changes.sp_defence,
                    victory_data.stat_changes.speed,
                    victory_data.stat_changes.health_max
                ];
                
                // Find which stat this is by checking which ones have changes
                var current_stat = 0;
                for (var j = 0; j < array_length(change_values); j++) {
                    if (change_values[j] != 0) {
                        if (current_stat == i) {
                            stat_index = j;
                            break;
                        }
                        current_stat++;
                    }
                }
                
                // Get stat data based on index
                var stat_names = ["Attack", "Sp. Attack", "Defence", "Sp. Defence", "Speed", "HP"];
                var before_values = [
                    victory_data.stats_before.attack,
                    victory_data.stats_before.sp_attack,
                    victory_data.stats_before.defence,
                    victory_data.stats_before.sp_defence,
                    victory_data.stats_before.speed,
                    victory_data.stats_before.health_max
                ];
                var after_values = [
                    victory_data.stats_after.attack,
                    victory_data.stats_after.sp_attack,
                    victory_data.stats_after.defence,
                    victory_data.stats_after.sp_defence,
                    victory_data.stats_after.speed,
                    victory_data.stats_after.health_max
                ];
                
                stat_name = stat_names[stat_index];
                before_val = before_values[stat_index];
                after_val = after_values[stat_index];
                change_val = change_values[stat_index];
            }
            
            // Draw columns with proper alignment
            draw_set_color(c_white);
            draw_set_halign(fa_left);
            
            // Column 1: Stat name (left aligned)
            draw_text(col1_x, y_pos, stat_name);
            
            // Column 2: Before value (right aligned)
            draw_set_halign(fa_right);
            draw_text(col2_x, y_pos, string(before_val));
            
            // Column 3: Arrow (center aligned)
            draw_set_halign(fa_center);
            draw_text(col3_x, y_pos, "->");
            
            // Column 4: After value (right aligned)
            draw_set_halign(fa_right);
            draw_text(col4_x, y_pos, string(after_val));
            
            // Column 5: Change (left aligned)
            draw_set_halign(fa_left);
            var change_text = "";
            if (change_val > 0) {
                change_text = "(+" + string(change_val) + ")";
            } else if (change_val < 0) {
                change_text = "(" + string(change_val) + ")";
            }
            draw_text(col5_x, y_pos, change_text);
        }
        
        draw_set_halign(fa_left); // Reset alignment
    } else {
        // Normal battle text display
        // Note: Background and border now drawn permanently in main draw step
        
        // Draw battle log messages with consistent spacing
        draw_set_font(FNT_Small);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        
        var max_visible_lines = floor((text_area_height - 10) / battle_line_spacing); // Account for padding
        var log_length = array_length(battle_log);
        
        // Display messages in chronological order (oldest at top, newest at bottom)
        var start_index = max(0, log_length - max_visible_lines);
        for (var i = 0; i < min(max_visible_lines, log_length); i++) {
            var message_index = start_index + i;
            if (message_index >= 0 && message_index < log_length) {
                var y_pos = text_area_y + 8 + (i * battle_line_spacing); // Consistent spacing
                draw_set_color(c_white);
                draw_text(text_area_x + 8, y_pos, battle_log[message_index]);
            }
        }
        
        // Scroll indicator (moved up to prevent clipping)
        if (log_length > max_visible_lines) {
            draw_set_color(c_yellow);
            draw_text(text_area_x + text_area_width - 80, text_area_y + text_area_height - 25, "More...");
        }
    }
}