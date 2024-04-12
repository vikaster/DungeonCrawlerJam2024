function beat_script(){
	//beats ++;
	with obj_note{
		var _old_x = x;
		x = start_x + (oMetronome.total_beats + 1) * other.pixels_per_beat;
		if (my_beat == 12) show_debug_message("old_x: " + string(_old_x) + " | new_x: " + string(x) + " | diff: " + string(x - _old_x))
	}
	beats ++;
}