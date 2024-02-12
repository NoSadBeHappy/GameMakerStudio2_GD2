y = yprevious
x = xprevious
move_contact_all(direction, -1)
speed = 0
if (place_meeting(x, y+1, obj_platform) == 1) {
	instance_change(obj_zool_land, true)
}
