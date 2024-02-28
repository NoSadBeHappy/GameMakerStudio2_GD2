if (zStateMessages) {
	var className = object_get_name(self.object_index)
	draw_set_font(debug)
	draw_set_color(c_white)
	draw_text(10, 10, className)
	draw_text(10, 46, getZoolState())
}