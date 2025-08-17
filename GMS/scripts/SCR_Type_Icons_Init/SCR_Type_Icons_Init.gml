function SCR_Type_Icons_Init()
{
    // Initialize type icon sprite mapping for F-018 Battle System Enhancements
    // FIXED: Map type IDs to match existing global.types[] order
    
    global.type_icon_sprites[0] = SPR_Normal;     // global.types[0] = "Normal"
    global.type_icon_sprites[1] = SPR_Fire;      // global.types[1] = "Fire"
    global.type_icon_sprites[2] = SPR_Water;     // global.types[2] = "Water"
    global.type_icon_sprites[3] = SPR_Grass;     // global.types[3] = "Grass"
    global.type_icon_sprites[4] = SPR_Electric;  // global.types[4] = "Electric"
    global.type_icon_sprites[5] = SPR_Psychic;   // global.types[5] = "Psychic"
    global.type_icon_sprites[6] = SPR_Bug;       // global.types[6] = "Bug"
    global.type_icon_sprites[7] = SPR_Dragon;    // global.types[7] = "Dragon"
    global.type_icon_sprites[8] = SPR_Fighting;  // global.types[8] = "Fighting"
    global.type_icon_sprites[9] = SPR_Rock;      // global.types[9] = "Rock"
    global.type_icon_sprites[10] = SPR_Ghost;    // global.types[10] = "Ghost"
    global.type_icon_sprites[11] = SPR_Ground;   // global.types[11] = "Ground"
    global.type_icon_sprites[12] = SPR_Poison;   // global.types[12] = "Poison"
    global.type_icon_sprites[13] = SPR_Ice;      // global.types[13] = "Ice"
    global.type_icon_sprites[14] = SPR_Fairy;    // global.types[14] = "Fairy"
    global.type_icon_sprites[15] = SPR_Steel;    // global.types[15] = "Steel"
    global.type_icon_sprites[16] = SPR_Flying;   // global.types[16] = "Flying"
    global.type_icon_sprites[17] = SPR_Dark;     // global.types[17] = "Dark"
    
    // Type name to ID mapping for move assignment (case-insensitive)
    // FIXED: Match existing global.types[] order
    global.type_name_to_id = ds_map_create();
    ds_map_add(global.type_name_to_id, "normal", 0);      // global.types[0]
    ds_map_add(global.type_name_to_id, "fire", 1);       // global.types[1]
    ds_map_add(global.type_name_to_id, "water", 2);      // global.types[2]
    ds_map_add(global.type_name_to_id, "grass", 3);      // global.types[3]
    ds_map_add(global.type_name_to_id, "electric", 4);   // global.types[4]
    ds_map_add(global.type_name_to_id, "psychic", 5);    // global.types[5]
    ds_map_add(global.type_name_to_id, "bug", 6);        // global.types[6]
    ds_map_add(global.type_name_to_id, "dragon", 7);     // global.types[7]
    ds_map_add(global.type_name_to_id, "fighting", 8);   // global.types[8]
    ds_map_add(global.type_name_to_id, "rock", 9);       // global.types[9]
    ds_map_add(global.type_name_to_id, "ghost", 10);     // global.types[10]
    ds_map_add(global.type_name_to_id, "ground", 11);    // global.types[11]
    ds_map_add(global.type_name_to_id, "poison", 12);    // global.types[12]
    ds_map_add(global.type_name_to_id, "ice", 13);       // global.types[13]
    ds_map_add(global.type_name_to_id, "fairy", 14);     // global.types[14]
    ds_map_add(global.type_name_to_id, "steel", 15);     // global.types[15]
    ds_map_add(global.type_name_to_id, "flying", 16);    // global.types[16]
    ds_map_add(global.type_name_to_id, "dark", 17);      // global.types[17]
    
    show_debug_message("F-018: Type icon sprite mapping initialized successfully");
}

// Helper function to draw type icons with colorization
function SCR_Draw_Type_Icon(type_id, x, y, scale = 1, alpha = 1) {
    if (type_id >= 0 && type_id < 18) {
        var type_sprite = global.type_icon_sprites[type_id];
        var type_color = global.type_colors[type_id];
        
        // Use same colorization method as eggs (draw_sprite_ext with color blend)
        draw_sprite_ext(type_sprite, 0, x, y, scale, scale, 0, type_color, alpha);
    }
}

// Helper function to draw category icons (Physical/Special) with colorization
function SCR_Draw_Category_Icon(is_physical, x, y, scale = 1, alpha = 1) {
    var category_sprite = is_physical ? SPR_Physical : SPR_Special;
    var category_color = is_physical ? 
        make_color_rgb(255, 150, 150) :  // Light red for Physical
        make_color_rgb(150, 150, 255);   // Light blue for Special
    
    draw_sprite_ext(category_sprite, 0, x, y, scale, scale, 0, category_color, alpha);
}