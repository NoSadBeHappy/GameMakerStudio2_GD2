if (hspeed < 0) {
	hspeed = 0
}
hspeed += 1
obj_zool.facing = FACE_RIGHT
hspeed = median(-MAX_DRIFT_SPEED, MAX_DRIFT_SPEED, hspeed)