var xpixel = 0;
for(var loop = lives; loop > 0; --loop) {
	draw_sprite(spt_life, 0, 32 + xpixel, 32);
	xpixel += sprite_get_width(spt_life) + 16;
}