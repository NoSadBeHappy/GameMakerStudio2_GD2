//set gravity depending on type of slope
state = ZSTATE_SLIP;
gravity = 1;
gravity_direction = 270;
image_index = 2;
if (place_meeting(x, y + 1, obj_slope_u1)) {
	gravity = 1;
	gravity_direction = 202.5;
	image_index = 0
} else if (place_meeting(x, y + 1, obj_slope_u2)) {
	gravity = 1;
	gravity_direction = 202.5;
	image_index = 0;
} else if (place_meeting(x, y + 1, obj_slope_u3)) {
	gravity = 1;
	gravity_direction = 225;
	image_index = 1;
} else if (place_meeting(x, y + 1, obj_slope_d1)) {
	gravity = 1;
	gravity_direction = -45;
	image_index = 3;
} else if (place_meeting(x, y + 1, obj_slope_d2)) {
	gravity = 1;
	gravity_direction = -22.5;
	image_index = 4;
} else if (place_meeting(x, y + 1, obj_slope_d3)) {
	gravity = 1;
	gravity_direction = -22.5;
	image_index = 4;
}