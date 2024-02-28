//go back a frame so we arent in the solid thing
y = yprevious
x = xprevious
//go right next to the solid thing
scr_move_to_contact_with(direction, -1, obj_solid)

//stop vspeed or hspeed depending on whats near
if (place_meeting(x, yprevious + vspeed, obj_platform)) {
	vspeed = 0
}
if (place_meeting(xprevious + hspeed, y, obj_solid)) {
	hspeed = median(-MAX_DRIFT_SPEED, hspeed, MAX_DRIFT_SPEED)
}

//set to land if theres a platform under
if (place_meeting(x, y+1, obj_platform) == 1) {
	instance_change(obj_zool_land, true)
}

//set to wall if theres a wall next to (doesent work)
/*if (place_meeting(x+1, y, obj_platform) == 1) {
	facing = FACE_RIGHT
	instance_change(obj_zool_wall, true)
} else if (place_meeting(x-1, y, obj_platform) == 1) {
	facing = FACE_LEFT
	instance_change(obj_zool_wall, true)
}*/