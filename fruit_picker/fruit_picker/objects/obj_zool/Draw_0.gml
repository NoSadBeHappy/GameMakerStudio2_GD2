if (hurt && step_count mod 8 < 3) {
	exit;
}


//draw the right thing
if (facing == FACE_RIGHT) {
	switch (state) {
		case ZSTATE_STAND:
			draw_sprite(spt_zool_stand_right, 0, x, y);
			break;
		case ZSTATE_WALK:
			image_index = image_index + 1;
			draw_sprite(spt_zool_walk_right, image_index, x, y);
			break;
		case ZSTATE_JUMP:
			draw_sprite(spt_zool_jump_right, -1, x, y);
			break;
		case ZSTATE_FALL:
			draw_sprite(spt_zool_fall_right, -1, x, y);
			break;
		case ZSTATE_SLIP:
			draw_sprite(spt_zool_slip_left, -1, x, y);
			break;
		case ZSTATE_SKID:
			draw_sprite(spt_zool_skid_right, -1, x, y);
			break;
		case ZSTATE_DIE:
			image_index = image_index + 1;
			draw_sprite(spt_zool_die_right, image_index, x, y);
			break;
		default:
			show_message("invalid zool state");
			show_message(state);
			break;
	}
} else if (facing == FACE_LEFT) {
	switch (state) {
		case ZSTATE_STAND:
			draw_sprite(spt_zool_stand_left, 0, x, y);
			break;
		case ZSTATE_WALK:
			image_index = image_index + 1;
			draw_sprite(spt_zool_walk_right, image_index, x, y);
			break;
		case ZSTATE_JUMP:
			draw_sprite(spt_zool_jump_left, -1, x, y);
			break;
		case ZSTATE_FALL:
			draw_sprite(spt_zool_fall_left, -1, x, y);
			break;
		case ZSTATE_SLIP:
			draw_sprite(spt_zool_slip_left, -1, x, y);
			break;
		case ZSTATE_SKID:
			draw_sprite(spt_zool_skid_left, -1, x, y);
			break;
		case ZSTATE_DIE:
			image_index = image_index + 1;
			draw_sprite(spt_zool_die_left, image_index, x, y);
			break;
		default:
			show_message("invalid zool state");
			show_message(state);
			break;
	}
} else {
	show_message("invalid facing value");
	show_message(facing);
}