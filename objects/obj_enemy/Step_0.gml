// Movement torwards the player
dir = point_direction(x, y, player.x, player.y);
moveX = lengthdir_x(spd, dir);
moveY = lengthdir_y(spd, dir);
var tLY = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top + moveY) & tile_index_mask; //  checking top left corner
var tRY = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top + moveY) & tile_index_mask; // checking top right corner
var bLY = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom + moveY) & tile_index_mask; //  checking bottom left corner
var bRY = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom + moveY) & tile_index_mask; // checking bottom right corner
		
if (moveY > 0) { //if moving downwards
	if (bLY !=0 or bRY != 0) { //if either bottom corners colliding
		if(!(tLY != 0 or tRY != 0)){ //if top corners NOT colliding
			moveY =	0;
		}
	}
} else if (moveY < 0) { //if moving upwards
	if (tLY !=0 or tRY != 0) { //if either top corners colliding
		if(!(bLY != 0 or bRY != 0)){ //if bottom corners NOT colliding
			moveY =	0;
		}
	}
}
var tLX = tilemap_get_at_pixel(tilemap, bbox_left + moveX, bbox_top) & tile_index_mask; //  checking top left corner
var tRX = tilemap_get_at_pixel(tilemap, bbox_right + moveX, bbox_top) & tile_index_mask; // checking top right corner
var bLX = tilemap_get_at_pixel(tilemap, bbox_left + moveX, bbox_bottom) & tile_index_mask; //  checking bottom left corner
var bRX = tilemap_get_at_pixel(tilemap, bbox_right + moveX, bbox_bottom) & tile_index_mask; // checking bottom right corner
//horizontal collision
if (moveX > 0) { //if moving right
	if (tRX != 0 or bRX != 0) { //if top or bottom corner colliding
		if (!(tLX !=0 or bLX != 0)) { //if top or bottom side NOT colliding
			moveX =	0;
		}
	}
} else if (moveX < 0) { //if moving left
	if (tLX != 0 or bLX != 0) { //if top or bottom corner colliding			
		if (!(tRX !=0 or bRX != 0)) { //if top or bottom side NOT colliding
			moveX =	0;
		}
	}
}

// checks to see if the location is empty
if (place_empty(x + moveX, y + moveY)) { // if emtpy move location is empty
	x += moveX;
	y += moveY;
} 
else if (player == instance_place(x+ moveX, y + moveY, player)) {
	if(!place_meeting(x, y, player)){
		x += moveX;
		y += moveY;
	}
}
else if (player != instance_place(x + moveX, y + moveY, player)) { // If next location doesn't have the player and something else
	// Moves itself away from the object and torwards the player
	tempObj = instance_place(x + moveX, y + moveY, all)
	tempDir = point_direction(x, y, tempObj.x, tempObj.y);
	if (moveX != 0) {
		x += lengthdir_x(-spd, tempDir);
	}
	if (moveY != 0) {
		y += lengthdir_y(-spd, tempDir);
	}
}

if		(dir >= 338	or  dir < 22) {		sprite_index = spr_enemy_r }
else if (dir >= 22	and dir < 67) {		sprite_index = spr_enemy_ur	}
else if (dir >= 67	and dir < 112) {	sprite_index = spr_enemy_u	}
else if (dir >= 112 and dir < 157) {	sprite_index = spr_enemy_ul	}
else if (dir >= 157 and dir < 203) {	sprite_index = spr_enemy_l	}
else if (dir >= 203 and dir < 248) {	sprite_index = spr_enemy_dl	}
else if (dir >= 248 and dir < 292) {	sprite_index = spr_enemy_d	}
else if (dir >= 292 and dir < 338) {	sprite_index = spr_enemy_dr	}
