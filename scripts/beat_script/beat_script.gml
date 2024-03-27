function beat_script(){
	//instance_create_layer(0,CAM_H - 8, "Notes", obj_beat);

	#region Rhythm Game
	
	//var _char = string_char_at(obj_rhythm.music, beats);
	//if (_char == "1"){
		//show_debug_message("created note on beat " + string(beats))
		//var _x = camera_get_view_x(view_camera[0]) + 16;
		//var _y = camera_get_view_y(view_camera[0]) + (CAM_H - 28);
				
		//var _note = instance_create_layer(_x, _y, "Notes", obj_note);
		//array_insert(obj_rhythm.unplayed_notes, 0, _note);

	//}
	
	
	#endregion

	with obj_note{
		//We want movement per step, corrected by this value
		//x += other.pixels_per_beat;	
		//x = oMetronome.total_beats * other.pixels_per_beat;
		
		x = start_x + (oMetronome.total_beats + 1) * other.pixels_per_beat;
	}

	beats ++;
}