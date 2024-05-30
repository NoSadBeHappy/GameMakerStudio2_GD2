if (obj_controller.score >= 600) {	
	if (room_4 != room) {
	room_goto_next();
	} else {
		show_message("you won! Fruit Picker by Hao Nguyen and Trevor Chung");
	}
}
