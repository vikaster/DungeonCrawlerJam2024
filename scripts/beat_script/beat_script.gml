function beat_script(){

	with obj_note{
		x = start_x + (oMetronome.total_beats + 1) * other.pixels_per_beat;
	}

	beats ++;
}