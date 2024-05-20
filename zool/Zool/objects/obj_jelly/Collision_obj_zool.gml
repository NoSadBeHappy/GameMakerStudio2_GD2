if (other.vspeed > 0) {
	instance_change(obj_jelly_die, true);
	other.vspeed = -22;
	audio_play_sound(snd_enemy_die, 100, 0);
	obj_controller.score += 1000
}
