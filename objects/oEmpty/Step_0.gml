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