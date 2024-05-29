i = 0;
for (i = 0; i < NUMENEMY_PIECES; i += 1) {
	instance_create_layer(x, y, "particles", obj_jelly_die);
	sprite_index = i;
}