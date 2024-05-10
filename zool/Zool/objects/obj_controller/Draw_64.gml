var xpixel = 400;
for(var loop = obj_controller.lives; loop > 0; --loop) {
	draw_sprite(spt_life, 0, 32 + xpixel, 32);
	xpixel += sprite_get_width(spt_life) + 16;
}


//make score strings
var digit = NUM_DIGITS;
draw_sprite(spt_score, 0, 30, 20);
var text_string = string_format(obj_controller.score, NUM_DIGITS, false);
text_string = string_replace_all(text_string, " ", "0");
digit_string = string_char_at(text_string, digit);
//actually draw score

repeat(digit) {
	digit_string = string_char_at(text_string, digit);
	draw_sprite(spt_icon_digits, real(digit_string), 44+(16*digit), 20);
	digit += -1
}