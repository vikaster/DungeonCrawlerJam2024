obj_map.transition_sideways = 0;

for (var i = 4; i >= 1; i --){

	var list = a_lists[i];
	show_debug_message("");
	
	var str = "";
	for (var j = 0; j < ds_list_size(list); j ++){	
		str += string(list[| j]);
	}
	show_debug_message(str);	
	ds_list_destroy(list);
}