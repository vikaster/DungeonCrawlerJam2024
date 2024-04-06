//var _amount = obj_rhythm_game.beats/my_beat;

//x = lerp(0, (CAM_W / 2), _amount);

if (oMetronome.first_beat_done) x += obj_rhythm_game.pixels_per_beat / 19;

if (x >= CAM_W + sprite_width) instance_destroy();

if (curve_data != undefined){
	//x += animcurve_channel_evaluate(curve_data.channel_x, curve_data.timer);
	y += animcurve_channel_evaluate(curve_data.channel_y, curve_data.timer);
	
	curve_data.timer += curve_data.inc;
	
	if (curve_data.timer > 1){
		if (struct_get(curve_data, "on_done") == undefined) curve_data.timer = 0;
		else{
			on_done = struct_get(curve_data, "on_done");
			curve_data = undefined;
		}
	}
}
if (on_done != undefined){
	on_done();	
}

//if (my_beat == obj_rhythm_game.beats) image_index = 1;
//else image_index = 0;

//if (my_beat == 8) show_debug_message("my_beat: " + string(my_beat) + " | x: " + string(x))