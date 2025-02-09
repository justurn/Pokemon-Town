if (flashing) {
    gpu_set_blendmode(bm_add); // White flash effect
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
    gpu_set_blendmode(bm_normal);
} else {
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, alpha_value);
}
