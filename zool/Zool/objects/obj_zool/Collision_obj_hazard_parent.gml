if (hurt = false) {
	obj_controller.lives += -1;
	if (obj_controller.lives < 0) {
		game_restart();
	} else {
		vspeed = -22;
		hspeed = 10 * -facing;
		hurt = true;
	}
}