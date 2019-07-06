/// @description slows character on hit
// You can write your code in this editor
var enemyId = id;

with(other){
	//TODO implement slowed status effect
	tempIndex = ds_list_find_index(timedDebuffs, enemyId)
	if(tempIndex != -1) { // if it already exists for this object just refresh the timer
		if (secondTimer == 0) {
			//show_debug_message("touching");
			timedDebuffs[|tempIndex + 1] = 5;
		}
	} else { // if there is no debuff, create one
		//show_debug_message("added: " + string(enemyId));
		ds_list_add(timedDebuffs, "slowed", enemyId, 5);
	}
}
