var _diff = global.player.confidence.current - global.player.confidence.display;

if (_diff != 0){
	global.player.confidence.display += (sign(_diff) * 0.1);
}

//show_debug_message("fail: " + string(audio_sound_get_gain(track.fail)))
//show_debug_message("success: " + string(audio_sound_get_gain(track.success)))

//show_debug_message("alarm[0]: " + string(alarm[0]))