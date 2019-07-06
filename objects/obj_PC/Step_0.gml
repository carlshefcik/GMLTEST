//movement brother
x_input = keyboard_check(ord ("D")) - keyboard_check(ord("A"));
y_input = keyboard_check(ord ("S")) - keyboard_check(ord("W"));

if(x_input != 0 or y_input != 0) {
	 dir = point_direction(0, 0, x_input, y_input);
	 moveX = lengthdir_x(spd, dir); 
	 moveY = lengthdir_y (spd, dir);
	 
	
	
	 

	//vertical collison
	 y += moveY
	if (moveY > 0) { //if moving downwards
		var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask; //  checking bottom left corner
		var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask; // checking bottom right corner
		
		if (t1 !=0 or t2 != 0) { //if colliding
			y =	((bbox_bottom & ~ 31) - 1) - sprite_bbox_bottom;
		}
	} else   { //if moving upwards
		var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask; //  checking top left corner
		var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask; // checking top right corner
		
		if (t1 !=0 or t2 != 0) { //if colliding
			y =	((bbox_top + 32) & ~ 31) - sprite_bbox_top;
		}
		}
	
	//horizontal collision
	 x += moveX
	if (moveX > 0) { //if moving right
		var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask; 
		var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask; 
		
		if (t1 != 0 or t2 != 0) { //if colliding
			x =	((bbox_right & ~ 31) - 1) - sprite_bbox_right;
		}
	} else   { //if moving left
		var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask; 
		var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask; 
		
		if (t1 != 0 or t2 != 0) { //if colliding
			x =	((bbox_left + 32) & ~ 31) - sprite_bbox_left;
		}
	}
	
}

