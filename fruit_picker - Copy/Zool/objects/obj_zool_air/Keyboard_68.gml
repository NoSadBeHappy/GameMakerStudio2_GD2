if (hspeed < 0) {
	hspeed = 0
}
if (obj_zool.hurt = false) {
	hspeed += 1
	obj_zool.facing = FACE_RIGHT
	hspeed = median(-MAX_DRIFT_SPEED, MAX_DRIFT_SPEED, hspeed)
}