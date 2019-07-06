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