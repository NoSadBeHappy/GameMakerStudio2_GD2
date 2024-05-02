/// @description Draw the lives

var count = 0
for(var temp = lives; temp > 0; --temp) {
	draw_sprite(spt_life, 0, 32 + count, 2);
	count += sprite_get_width(spt_life) + 16;
}