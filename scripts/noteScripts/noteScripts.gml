// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function note_success(_note){
	with _note{
		image_index = 1;
		curve_data = success;
		
		with oMetronome.track{
			audio_sound_gain(success, 1, 0);
			audio_sound_gain(fail, 0, 0);
		}
	}
}

function note_fail(_note){
	with _note{
		image_index = 2;
		curve_data = fail;
		
		with oMetronome.track{
			audio_sound_gain(success, 0, 0);
			audio_sound_gain(fail, 1, 0);
		}
	}
}