if (!place_meeting(x + facing, y, obj_wall)) {
	instance_change(obj_zool_air, true);
}
if (!place_meeting(x + facing, y - 20, obj_wall)) {
	y += 5;	
}