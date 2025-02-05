// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SCR_Trees_Spawn()
{
	var tree_y = 550;
	var tree_x_offset = -150;
	

	if array_length(global.trees) == 0 // Randomly select the tree sprites and spawn the trees
	{
		for (var i = 0; i < array_length(global.plot_segments); i++)
		{
			var random_tree_index = irandom(array_length(global.tree_sprites)-1);
			var instance_tree = instance_create_layer(global.plot_segments[i] - tree_x_offset, tree_y, "Instances", OBJ_Tree);
			instance_tree.tree_id = random_tree_index;
			global.trees[i] = random_tree_index
		}
	}
	else // rebuild the trees using the stored sprites
	{
		for (var i = 0; i < array_length(global.plot_segments); i++)
		{
			var instance_tree = instance_create_layer(global.plot_segments[i] - tree_x_offset, tree_y, "Instances", OBJ_Tree);
			instance_tree.tree_id = global.trees[i];
		}
	}
}