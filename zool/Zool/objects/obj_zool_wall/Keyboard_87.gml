/// @description UP
if (place_meeting(x + facing, y - 4, obj_wall)) {
	vspeed = - 4;
	state = ZSTATE_CLIMB;
}