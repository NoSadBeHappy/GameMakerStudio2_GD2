if (state != ZSTATE_SLIP) {
	audio_play_sound(snd_land, 10, false);
}
state = ZSTATE_STAND;
gravity = 0;
gravity_direction = 270;
vspeed = 0;
friction = FRICTION_LAND;
obj_zool.hurt = 0;