if (other.vspeed > 0) {
	other.speed = 0;
	instance_destroy(self, true);
	other.vspeed = -22;
	audio_play_sound(snd_enemy_die, 100, 0);
	obj_controller.score += 2000
}
