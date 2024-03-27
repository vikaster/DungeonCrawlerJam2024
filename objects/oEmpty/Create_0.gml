//notes = "";

beats = 0;
//var _y = 16;

//Create test notes
pixels_per_beat = CAM_W / 16;
var _y = camera_get_view_y(view_camera[0]) + (CAM_H - 28);

for (var i = 1; i < string_length(obj_rhythm.music); i ++){
	if (string_char_at(obj_rhythm.music, i) == "1"){
		var _x = (CAM_W/2) - ((i) * pixels_per_beat); ///x = start_x + (oMetronome.total_beats + 1) * other.pixels_per_beat;
		instance_create_layer(_x, _y, "Notes", obj_note_test, {my_beat : i});
	
		if (i == 1) show_debug_message("_x for " + string(i) + ": " + string(_x))
		//_y += 16;
	}
}