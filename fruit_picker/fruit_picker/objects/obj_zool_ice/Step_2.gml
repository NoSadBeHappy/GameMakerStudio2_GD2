//state changes.
if (!place_meeting(x, y + 1, obj_slope)) {
	//ice -> ice (staying on the slope)
	if (place_meeting(x, y + speed, obj_slope)) {
		move_contact_all(270, -1);
	} else if (place_meeting(x, y + speed, obj_platform)) {
		//ice -> land (platform)
		instance_change_with_log(obj_zool_land, true, "end step");
	} else {
		//if its not ice or platform, your in the air.
		instance_change_with_log(obj_zool_air, true, "end_step");
	}
}