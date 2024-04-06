function beat_script(){
	//instance_create_layer(0, camera_get_view_y(view_camera[0]) + (CAM_H - 16), "Text", obj_beat);
	with obj_note{
		var _old_x = x;
		x = start_x + (oMetronome.total_beats + 1) * other.pixels_per_beat;
		show_debug_message("old_x: " + string(_old_x) + " | new_x: " + string(x) + " | diff: " + string(x - _old_x))
	}

	beats ++;
}