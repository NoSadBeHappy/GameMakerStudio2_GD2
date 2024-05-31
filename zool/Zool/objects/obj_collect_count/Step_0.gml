num_collectables = instance_number(obj_collect);
collect_percent = 100 * ((total_collectables - num_collectables) / total_collectables);
if (collect_percent >= COLLECT_PCT_THRESHOLD) {
	show_debug_message(collect_percent);
	obj_exit.visible = true;
}