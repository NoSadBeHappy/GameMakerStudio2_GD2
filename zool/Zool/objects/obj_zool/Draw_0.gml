/// @description Insert description here

if (facing == FACE_RIGHT) {
	if (state == ZSTATE_STAND) {
		draw_sprite(spt_zool_stand_right, 0, x, y)
	} else if (state == ZSTATE_WALK) {
		draw_sprite(spt_zool_walk_right, -1, x, y)
	}
} else if (facing == FACE_LEFT) {
	if (state == ZSTATE_STAND) {
		draw_sprite(spt_zool_stand_left, 0, x, y)
	} else if (state == ZSTATE_WALK) {
		draw_sprite(spt_zool_walk_left, -1, x, y)
	}
}