var xpixel = 0;
for(var loop = obj_controller.lives; loop > 0; --loop) {
	draw_sprite(spt_life, 0, 32 + xpixel, 32);
	xpixel += sprite_get_width(spt_life) + 16;
}

//draw score
draw_sprite(spt_score, 0, 30, 20);

