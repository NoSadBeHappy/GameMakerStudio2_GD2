/// @description COPIED FROM obj_zool_air solid collision

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