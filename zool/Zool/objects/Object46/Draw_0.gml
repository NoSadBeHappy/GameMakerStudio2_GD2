if (obj_controller.facing = FACE_LEFT) {
	image_index += 1;
	draw_sprite(spt_zool_die_left, image_index, x, y);
} else if (obj_controller.facing = FACE_RIGHT) {
	image_index += 1;
	draw_sprite(spt_zool_die_right, image_index, x, y);
}