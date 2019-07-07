gameispaused = false
instance_create_layer(0, 540, "Menus", obj_character_button)
	
instance_activate_layer("Instances")
instance_deactivate_object(obj_character_menu)
instance_deactivate_object(obj_invsword)
instance_destroy(obj_fuku)
instance_destroy()