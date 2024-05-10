//see if you die, if not then take damage
if (hurt = false) {
	obj_controller.lives += -1;
	if (obj_controller.lives < 0) {
		audio_play_sound(snd_die, 100, 0);
		if (facing = FACE_LEFT) {
			instance_change_with_log(obj_zool_die_left, true, "collide obj_hazard_parent");
		} else if (facing = FACE_RIGHT) {
			instance_change_with_log(obj_zool_die_right, true, "collide obj_hazard_parent");
		}
	} else {
		audio_play_sound(snd_hurt, 100, 0);
		vspeed = -22;
		hspeed = 2 * -facing;
		hurt = true;
		alarm_set(0, 60);
	}
}