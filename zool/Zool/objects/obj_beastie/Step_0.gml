if (state = ESTATE_WAIT) {
	hspeed = 0;
} else if (state = ESTATE_MOVE) {
	hspeed = facing;
	if (!instance_place(x + facing, y + 1, obj_platform)) {
		state = ESTATE_DECIDE;
	}
}