if (facing == FACE_RIGHT) {
	switch (state) {
		case ESTATE_DECIDE:
		case ESTATE_WAIT:
			draw_sprite(spt_beastie_stand_right, 0, x, y);
			break;
		case ESTATE_ATTACK:
			draw_sprite(spt_beastie_attack_right, 0, x, y);
			break;
		case ESTATE_MOVE:
			image_index ++
			draw_sprite(spt_beastie_walk_right, image_index, x, y);
			break;
		default:
			show_message("invalid ememy state (beastie draw)");
			show_message(state);
			break;
	}
} else if (facing == FACE_LEFT) {
	switch (state) {
		case ESTATE_DECIDE:
		case ESTATE_WAIT:
			draw_sprite(spt_beastie_stand_left, 0, x, y);
			break;
		case ESTATE_ATTACK:
			draw_sprite(spt_beastie_attack_left, 0, x, y);
			break;
		case ESTATE_MOVE:
			image_index ++
			draw_sprite(spt_beastie_walk_left, image_index, x, y);
			break;
		default:
			show_message("invalid ememy state (beastie draw)");
			show_message(state);
			break;
	}
}