// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function note_success(_note){
	with _note{
		image_index = 1;
		curve_data = success;
		
		with oEmpty{
			with track{
				audio_sound_gain(success, 1, 0);
				audio_sound_gain(fail, 0, 0);
			}
			note_tracker.success ++;
		}
	}
	
	global.player.confidence.current = clamp(global.player.confidence.current + CONFIDENCE_GAINED_PER_SUCCESS, 0, global.player.confidence.max);
}

function note_fail(_note){
	with _note{
		image_index = 2;
		curve_data = fail;
		
		with oEmpty{
			with track{
				audio_sound_gain(success, 0, 0);
				audio_sound_gain(fail, 1, 0);
			}
			note_tracker.fail ++;
		}
	}
	
	global.player.confidence.current = clamp(global.player.confidence.current - CONFIDENCE_LOST_PER_FAIL, 0, global.player.confidence.max);

	with oEmpty{
		if (global.player.confidence.current == 0){
			state = e_rhythm_game.fail;	
		}
	}
}