if (!place_meeting(x, y+1, obj_platform)) {
	if (place_meeting(x, y+speed, obj_platform)) {
		scr_move_to_contact_with(270, -1, obj_platform)
	} else {
	instance_change(obj_zool_air, true)
	}
}