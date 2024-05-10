//see if you die, if not then take damage
if (hurt = false) {
	obj_controller.lives += -1;
	obj_controller.facing = obj_zool.facing;
	if (obj_controller.lives < 0) {
		instance_change_with_log(Object46, true, "collide with obj_hazard_parent")
	} else {
		audio_play_sound(snd_hurt, 100, 0);
		vspeed = -22;
		hspeed = 2 * -facing;
		hurt = true;
		alarm_set(0, 60);
	}
}