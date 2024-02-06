/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 3E7562DD
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "sprite" "sptLive"
/// @DnDSaveInfo : "sprite" "sptLive"
var l3E7562DD_0 = sprite_get_width(sptLive);
var l3E7562DD_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l3E7562DD_2 = __dnd_lives; l3E7562DD_2 > 0; --l3E7562DD_2) {
	draw_sprite(sptLive, 0, 20 + l3E7562DD_1, 20);
	l3E7562DD_1 += l3E7562DD_0;
}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3446B292
/// @DnDArgument : "font" "fntScore"
/// @DnDSaveInfo : "font" "fntScore"
draw_set_font(fntScore);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 718DC231
/// @DnDArgument : "color" "$FFFFF94F"
draw_set_colour($FFFFF94F & $ffffff);
var l718DC231_0=($FFFFF94F >> 24);
draw_set_alpha(l718DC231_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 66784580
/// @DnDArgument : "x" "2"
/// @DnDArgument : "y" "1"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(2, 1, string("Score: ") + string(__dnd_score));