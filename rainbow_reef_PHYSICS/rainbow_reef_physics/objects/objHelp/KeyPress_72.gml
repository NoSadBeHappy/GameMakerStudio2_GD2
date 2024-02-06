if (variable_global_exists("current_game_room"))
{
	room_goto(global.current_game_room)
}
else
{
	room_goto(title)
}
