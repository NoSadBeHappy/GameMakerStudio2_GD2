/// @description JUMP
hspeed = -facing * 2;
vspeed = -WALL_JUMP_SPEED;
audio_play_sound(snd_hiya, 12, false);
instance_change(obj_zool_air, true);