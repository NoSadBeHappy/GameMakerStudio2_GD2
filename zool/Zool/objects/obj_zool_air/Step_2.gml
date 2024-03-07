if (vspeed > 0) {
	state = ZSTATE_FALL
	gravity = 2
	gravity_direction = 270
	if (place_meeting(x + facing, y, obj_wall)) {
		instance_change(obj_zool_wall, true);
	}
}