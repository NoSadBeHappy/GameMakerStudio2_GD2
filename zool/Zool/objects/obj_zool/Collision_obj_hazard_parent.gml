if (hurt = false) {
	obj_controller.lives += -1;
	if (obj_controller.lives < 0) {
		state = ZSTATE_DIE;
	} else {
		audio_play_sound(snd_hurt, 100, 0);
		vspeed = -22;
		hspeed = 2 * -facing;
		hurt = true;
		alarm_set(0, 60);
	}
}