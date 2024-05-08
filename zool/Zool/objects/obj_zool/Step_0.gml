hspeed = median(hspeed, MAX_HSPEED, -MAX_HSPEED)
vspeed = min(vspeed, MAX_VSPEED)
step_count += 1

//end the game when you finish dieing
if (state = ZSTATE_DIE && image_index = 15) {
	show_message("You lost.");
	game_restart(); //FIX!! end screen please!
}