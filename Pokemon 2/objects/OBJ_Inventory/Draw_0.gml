draw_self();

draw_set_font(FNT_Big);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var item_limit = array_length(global.item_name)
var item_spacing = cam_width /  item_limit
var positioning = item_spacing / 4
var x_start = x - sprite_width/2

for (var i = 1; i < item_limit; i++)
{
	if (global.item_held[i] != -1)
	{
		draw_sprite(global.item_sprite[i],0, x_start + (i - 1) * item_spacing + positioning, y)
		draw_text( x_start + (i - 1) * item_spacing +  3 * positioning, y, global.item_held[i]);
	}
}

