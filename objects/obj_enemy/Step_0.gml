// Movement torwards the player
dir = point_direction(x, y, player.x, player.y);
moveX = lengthdir_x(spd, dir);
moveY = lengthdir_y(spd, dir);

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
else if (player != instance_place(x+ moveX, y + moveY, player)) { // If next location doesn't have the player and something else
	// Moves itself away from the object and torwards the player
	tempObj = instance_place(x + moveX, y + moveY, all)
	tempDir = point_direction(x, y, tempObj.x, tempObj.y);
	x += lengthdir_x(-spd, tempDir);
	y += lengthdir_y(-spd, tempDir);
}

if		(dir >= 338	or  dir < 22) {		sprite_index = spr_enemy_r }
else if (dir >= 22	and dir < 67) {		sprite_index = spr_enemy_ur	}
else if (dir >= 67	and dir < 112) {	sprite_index = spr_enemy_u	}
else if (dir >= 112 and dir < 157) {	sprite_index = spr_enemy_ul	}
else if (dir >= 157 and dir < 203) {	sprite_index = spr_enemy_l	}
else if (dir >= 203 and dir < 248) {	sprite_index = spr_enemy_dl	}
else if (dir >= 248 and dir < 292) {	sprite_index = spr_enemy_d	}
else if (dir >= 292 and dir < 338) {	sprite_index = spr_enemy_dr	}
