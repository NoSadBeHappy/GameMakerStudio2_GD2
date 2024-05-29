num_collectables = instance_number(obj_collect);
var collect_persent = 100 * ((total_collectables - num_collectables) / total_collectables);
if (collect_persent >= COLLECT_PCT_THRESHOLD) {
	show_debug_message(collect_persent);
	obj_exit.visible = true;
}