if (state == ZSTATE_STAND) {
	if (speed > SKID_SPEED) {
		state = ZSTATE_SKID;
		audio_play_sound(snd_skid, 100, false);
	}
}
if (state == ZSTATE_SKID) {
	if (speed < 1) {
		state = ZSTATE_STAND;
	}
}

//sounds
if (state == ZSTATE_WALK) {
	if (obj_controller.step_count % 8 == 0) {
		audio_play_sound(snd_footstep, 11, false);
	}
}

//go to falling if you walk off a cliff
if (!place_meeting(x, y+1, obj_platform)) {
	if (place_meeting(x, y+speed, obj_platform)) {
		scr_move_to_contact_with(270, -1, obj_platform);
	} else {
	instance_change_with_log(obj_zool_air, true, "end step");
	}
}

if (place_meeting(x, y + 1, obj_slope)) {
	instance_change_with_log(obj_zool_ice, true, "end step");
}



//i don't remember what this is from, might be from a video.

/*if (!place_meeting(x + facing, y, obj_wall)) {
	//if we would have hit the wall on the next step, then go there and go to the wall state
	if (place_meeting(x+speed, y, obj_wall)) {
		if (hspeed > 0) {
			var _temp_wanted_direction = 0;
		} else if (hspeed < 0) {
			var _temp_wanted_direction = 180;
		} else {
			show_message("look in end step zool land!")
		}
		scr_move_to_contact_with(_temp_wanted_direction, -1, obj_wall);
		instance_change_with_log(obj_zool_wall, true);
	}
}*/