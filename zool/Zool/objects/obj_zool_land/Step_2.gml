//go to falling if you walk off a cliff
if (!place_meeting(x, y+1, obj_platform)) {
	if (place_meeting(x, y+speed, obj_platform)) {
		scr_move_to_contact_with(270, -1, obj_platform)
	} else {
	instance_change(obj_zool_air, true)
	}
}


/*if (!place_meeting(x + facing, y, obj_wall)) {
	//if we would have hit the wall on the next step, then go there and go to the wall state
	if (place_meeting(x+speed, y, obj_wall)) {
		if (hspeed > 0) {
			var _temp_wanted_direction = 0;
		} else if (hspeed < 0) {
			var _temp_wanted_direction = 180;
		} else {
			show_message("look in end step zool land!")
		}
		scr_move_to_contact_with(_temp_wanted_direction, -1, obj_wall);
		instance_change(obj_zool_wall, true);
	}
}*/