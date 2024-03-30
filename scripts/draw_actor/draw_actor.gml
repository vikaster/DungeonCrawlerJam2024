function draw_actor(_map_data, _draw_x, _draw_y, _scale){
	var _actor = struct_get(_map_data, "actor");
	if (_actor != undefined){
		//show_debug_message("_actor found")
		if (_actor.my_data != undefined){
			//show_debug_message(_actor.my_id + " has data")
			var _sprite = struct_get(_actor.my_data, "sprite_index");
			if (_sprite != undefined){
				draw_sprite_ext(_sprite, 0, _draw_x, _draw_y, _scale, _scale, 0, c_white, 1);
				//show_debug_message("drawing actor sprite " + sprite_get_name(_sprite))
			}
		}
	}
}