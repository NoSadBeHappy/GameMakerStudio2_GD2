/// @description UP
if (place_meeting(x + facing, y - 22, obj_wall)) {
	vspeed = - 4;
	state = ZSTATE_CLIMB;
} else {
//following line referanced in end step event. different from video.
y = yprevious - 22
	vspeed = -16;
	hspeed = facing;
	instance_change(obj_zool_air, true);
}