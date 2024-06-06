if (state = ESTATE_WAIT) {
	hspeed = 0;
} else if (state = ESTATE_MOVE) {
	hspeed = facing;
	if (!instance_place(x + facing * 16, y + 1, obj_platform)) {
		state = ESTATE_DECIDE;
	} else if (instance_place(x + facing, y, obj_enemy_limit)) {
		facing = -facing;
	} else if (instance_place(x + facing, y, obj_wall)) {
		facing = -facing;
	} else if (irandom(150) == 1) {
		state = ESTATE_DECIDE;
	}
} else if (state = ESTATE_DECIDE) {
	if (point_distance(x, y, obj_zool.x, obj_zool.y) < 150) {
		state = ESTATE_WAIT;
		alarm_set(0, 150);
	} else {
		state = ESTATE_MOVE;
	}
}