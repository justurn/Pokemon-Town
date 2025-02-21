draw_self();

draw_set_font(FNT_Medium);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var item_limit = array_length(global.item_name)
var edging = 60
var item_spacing = (cam_width - edging) / (item_limit - 1)
var padding = item_spacing / 2
var x_start = x - sprite_width/2



for (var i = 1; i < item_limit; i++)
{
	if (global.item_held[i] != -1)
	{
		draw_sprite(global.item_sprite[i],0, x_start + (i-1) * item_spacing + edging, y)
		draw_text( x_start + (i-1) * item_spacing + padding + edging, y, global.item_held[i]);
	}
}

