/// @description DOWN
if (place_meeting(x + facing, y + 4, obj_wall)) {
	vspeed = + 4;
	state = ZSTATE_CLIMB;
} else {
	instance_change(obj_zool_air, true);
}