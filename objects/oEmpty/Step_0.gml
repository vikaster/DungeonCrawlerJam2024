if (array_length(unplayed_notes) > 0){
	if (mouse_check_button_pressed(mb_left)){

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
	}else{
		//Fail unplayed notes
		var _most_recent_note = unplayed_notes[array_length(unplayed_notes) - 1];
		
		if (_most_recent_note.x > (CAM_W/2)){
			var _dist = point_distance(_most_recent_note.x, _most_recent_note.y, left + 16, top + 16);
			if (_dist > difficulty){
				array_pop(unplayed_notes);
				note_fail(_most_recent_note);
			}
		}
	}
}