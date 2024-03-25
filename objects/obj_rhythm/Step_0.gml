if (state == e_rhythm.play){
	if (array_index < max_index){
		play_progress += play_speed;
	
		if (play_progress == 100){
			array_index ++;
			//var _str = "";
			//for (var i = 0; i < 4; i ++){
				var _char = string_char_at(music, array_index);
				if (_char == "1"){
					var _x = camera_get_view_x(view_camera[0]) + 16;//42 + (i * 75) + camera_get_view_x(view_camera[0]);
					var _y = camera_get_view_y(view_camera[0]) + (CAM_H - 28);//camera_get_view_y(view_camera[0]);
				
					var _note = instance_create_layer(_x, _y, "Notes", obj_note);
					array_insert(unplayed_notes, 0, _note);
				
					//_str += _char;
				}
				show_debug_message("char: " + _char)
			//}
			//show_debug_message("array_index: " + string(array_index) + " | " + _str)
		
			play_progress = 0;
		}
		show_debug_message("array_index: " + string(array_index) + " | play_progress: " + string(play_progress))
	}
	
	if (mouse_check_button_pressed(mb_left) && array_length(unplayed_notes) > 0){

		show_debug_message("attempting to play note")
		var _note = array_pop(unplayed_notes);
		if (_note != undefined){
			show_debug_message(object_get_name(_note.object_index))
			var _dist = point_distance(_note.x, _note.y, left + 16, top + 16);
			if (_dist <= difficulty){
				note_success(_note)
			}else{
				note_fail(_note);
			}
		}
	}
}