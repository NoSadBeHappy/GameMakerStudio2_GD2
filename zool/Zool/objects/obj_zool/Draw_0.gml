if (facing == FACE_RIGHT) {
	switch (state) {
		case ZSTATE_STAND:
			draw_sprite(spt_zool_stand_right, 0, x, y)
			break
		case ZSTATE_WALK:
			image_index = image_index + 1
			draw_sprite(spt_zool_walk_right, image_index, x, y)
			break
		case ZSTATE_JUMP:
			draw_sprite(spt_zool_jump_right, -1, x, y)
			break
		case ZSTATE_FALL:
			draw_sprite(spt_zool_fall_right, -1, x, y)
			break
		default:
			show_message("invalid zool state")
			show_message(state)
	}
} else if (facing == FACE_LEFT) {
	switch (state) {
		case ZSTATE_STAND:
			draw_sprite(spt_zool_stand_left, 0, x, y)
			break
		case ZSTATE_WALK:
			image_index = image_index + 1
			draw_sprite(spt_zool_walk_left, image_index, x, y)
			
			break
		case ZSTATE_JUMP:
			draw_sprite(spt_zool_jump_left, -1, x, y)
			break
		case ZSTATE_FALL:
			draw_sprite(spt_zool_fall_left, -1, x, y)
			break
		default:
			show_message("invalid zool state")
			show_message(state)
	}
}