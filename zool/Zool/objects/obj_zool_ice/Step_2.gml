//state changes.
if (!place_meeting(x, y + 1, obj_slope)) {
	if (place_meeting(x + speed, y + speed, obj_slope)) {
		move_contact_all(270, -1);
	} else if (place_meeting(x, y + speed, obj_platform)) {
		instance_change(obj_zool_land, true);
	} else {
		instance_change(obj_zool_air, true);
	}
}