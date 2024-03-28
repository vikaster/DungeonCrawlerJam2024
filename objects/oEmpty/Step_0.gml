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

//Juice
if (player.juice.timer <= 1){
	player.x = CAM_W + animcurve_channel_evaluate(player.juice.channel_x, player.juice.timer);
	enemy.y = animcurve_channel_evaluate(enemy.juice.channel_y, enemy.juice.timer) + 200;
	bar.x = 10 - animcurve_channel_evaluate(player.juice.channel_x, player.juice.timer);
	
	player.juice.timer += player.juice.inc;	
	enemy.juice.timer += enemy.juice.inc;	
	
	//show_debug_message("enemy.juyice: " + string(enemy.y))
}else{
	if (state == e_rhythm_game.success){
		cleanup_battle();	
	}
}