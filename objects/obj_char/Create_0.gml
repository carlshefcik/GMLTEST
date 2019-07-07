/// @description 
// You can write your code in this editor

secondTimer = room_speed * 1

characterStats[stats.c_health] = 10
characterStats[stats.c_speed] = 3
characterStats[stats.c_strength] = 3
characterStats[stats.c_armor] = 0


// character statuses (lists to have them stack??)
timedDebuffs		= ds_list_create();
timedBuffs			= ds_map_create();
universalBuffs		= ds_map_create();
universalDebuffs	= ds_map_create();

items = ds_map_create();

//WAll Collsion
var colLayer = layer_get_id("collision_layer");
tilemap = layer_tilemap_get_id(colLayer)

//Sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

enum currentAction {
	idle,
	moving,
	attacking,
	blocking
}


enum stats {
	c_health,
	c_speed,
	c_strength,
	c_armor
}