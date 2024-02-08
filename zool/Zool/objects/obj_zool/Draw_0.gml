/// @description Insert description here

if (facing == FACE_RIGHT) {
	switch (state) {
		case ZSTATE_STAND:
			draw_sprite(spt_zool_stand_right, 0, x, y)
			break;
		default:
			show_message("invalid zool state")
	}
} else if (facing == FACE_LEFT) {
	switch (state) {
		case ZSTATE_STAND:
			draw_sprite(spt_zool_stand_left, 0, x, y)
			break;
		default:
			show_message("invalid zool state")
	}
}