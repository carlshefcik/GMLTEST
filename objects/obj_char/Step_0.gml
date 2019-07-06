currentSpeed = characterStats[stats.c_speed];

// Cycle through universalDebuffs (every two entries)
for(var i = 0; i < ds_list_size(timedDebuffs); i += 3){
    switch(timedDebuffs[| i]){
        case "slowed":
			//TODO should be compile an object to draw here
            currentSpeed = _approach(currentSpeed, 0, 1);
            break;
        case "freeze":
            //I was frozen
            break;
    }
}

//second countdown timer that triggeers every second
secondTimer--;
if (secondTimer < 0) {
	///Tick down all statuses
	//If a status has 0 duration, remove the two list entries associated
	for(var i = 2; i < ds_list_size(timedDebuffs); i+= 3){
	    timedDebuffs[| i]--;
	    if(timedDebuffs[| i] < 1) {
			//deletes all three entries and moves the i to the correct traversal index
				// should just remove it afterwards by saving the indexes
	        ds_list_delete(timedDebuffs, --i);
	        ds_list_delete(timedDebuffs, --i);
			ds_list_delete(timedDebuffs, i--);
	    }
	}
	
	secondTimer = room_speed * 1
}


// Movement for the character object
horizontalInput =	keyboard_check(ord("D")) - keyboard_check(ord("A"));
verticalInput =		keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (horizontalInput != 0 or verticalInput != 0) {
	
	dir = point_direction(0,0,horizontalInput, verticalInput);
	moveX = lengthdir_x(currentSpeed, dir);
	moveY = lengthdir_y(currentSpeed, dir);
	
	x += moveX;
	y += moveY;
	
	//Sets the sprite
	image_speed = 1;
	switch(dir){
		case 0:		sprite_index = spr_char_r;	break;
		case 45:	sprite_index = spr_char_ur;	break;
		case 90:	sprite_index = spr_char_u;	break;
		case 135:	sprite_index = spr_char_ul; break;
		case 180:	sprite_index = spr_char_l;	break;
		case 225:	sprite_index = spr_char_dl; break;
		case 270:	sprite_index = spr_char_d;	break;
		case 315:	sprite_index = spr_char_dr; break;
	}
} else {
	//Sets the sprite if the character isnt moving
	image_index = 0;
	image_speed = 0;
}
