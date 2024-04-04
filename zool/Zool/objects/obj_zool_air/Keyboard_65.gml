if (hspeed > 0) {
	hspeed = 0
}
hspeed -= 1
obj_zool.facing = FACE_LEFT
hspeed = median(-MAX_DRIFT_SPEED, MAX_DRIFT_SPEED, hspeed)