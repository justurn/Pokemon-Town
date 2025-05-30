draw_self();

draw_set_font(FNT_Medium);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var item_limit = array_length(global.item_name)
var inventory_list = [];

for (var i = 1; i < item_limit; i++)
{
	if (global.item_held[i] != -1)
	{
		array_push(inventory_list,i)
	}
}

var edging = 60
item_limit = array_length(inventory_list)
var item_spacing = (cam_width - edging) / (item_limit)
var padding = item_spacing / 2
var x_start = x - sprite_width/2

for (var k = 0; k < item_limit; k++)
{
	var i = inventory_list[k]
	var x_target = x_start + (k) * item_spacing + padding + edging
	draw_text(x_target, y, global.item_held[i]);
	draw_sprite(global.item_sprite[i],0, x_target - 70, y)
}


