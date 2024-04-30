//play sounds, remove obj
audio_play_sound(snd_collect, 100, false);
with(other) instance_change_with_log(obj_100pts, true, "collision obj_collect");