//var _amount = oEmpty.beats/my_beat;

//x = lerp(0, (CAM_W / 2), _amount);

if (oMetronome.first_beat_done) x += oEmpty.pixels_per_beat / 19;

if (my_beat == oEmpty.beats) image_index = 1;
else image_index = 0;

if (my_beat == 8) show_debug_message("my_beat: " + string(my_beat) + " | x: " + string(x))