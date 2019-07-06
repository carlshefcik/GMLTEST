	gameispaused = true
	instance_create_layer(0, 0, "Menus", obj_character_menu)
	instance_create_layer(0, 0, "Menus", obj_unpause)
	instance_create_depth(0, 0, -500, obj_unpause)
	instance_deactivate_layer("Instances")
	instance_deactivate_object(obj_character_button)
	instance_create_layer(223, 95, "Menus", obj_invsword)
	instance_create_depth(223, 95, -500, obj_invsword)