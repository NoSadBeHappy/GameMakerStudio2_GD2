var xpixel = 400;
for(var loop = obj_controller.lives; loop > 0; --loop) {
	draw_sprite(spt_life, 0, 32 + xpixel, 32);
	xpixel += sprite_get_width(spt_life) + 16;
}

//draw score
draw_sprite(spt_score, 0, 30, 20);
display_number(NUM_DIGITS, 20, obj_controller.score);
//draw percent
draw_sprite(spt_icon_percent, 0, 110, 535);
display_number(3, 550, obj_collect_count.collect_percent);
show_debug_message(obj_collect_count.collect_percent); //REMOVE!!!

//show exit direction arrow
if (obj_exit.visible) {
	exit_direction = point_direction(obj_zool.x, obj_zool.y, obj_exit.x, obj_exit.y);
	draw_sprite(spt_collect_count, 1+round(exit_direction/45), 130, 535);
}