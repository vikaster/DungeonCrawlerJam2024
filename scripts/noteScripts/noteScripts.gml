// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function note_success(_note){
	with _note{
		image_index = 1;
		curve_data = success;
		
		with obj_rhythm_game{
			with track{
				audio_sound_gain(success, 1, 0);
				audio_sound_gain(fail, 0, 0);
			}
			note_tracker.success ++;
			note_tracker.total ++;
			
			show_debug_message("total: " + string(note_tracker.total) + " | max: " + string(total_playable_notes))
			
			if (note_tracker.total == total_playable_notes){
				with note_tracker{
					percentage = (success / total) * 100;
					show_debug_message("Percentange: " + string(percentage))
				}
			}
		}
	}
	
	global.player.confidence.current = clamp(global.player.confidence.current + CONFIDENCE_GAINED_PER_SUCCESS, 0, global.player.confidence.max);
}

function note_fail(_note){
	with _note{
		image_index = 2;
		curve_data = fail;
		
		with obj_rhythm_game{
			with track{
				audio_sound_gain(success, 0, 0);
				audio_sound_gain(fail, 1, 0);
			}
			note_tracker.fail ++;
			note_tracker.total ++;
			
			show_debug_message("total: " + string(note_tracker.total) + " | max: " + string(total_playable_notes))
			
			if (note_tracker.total == total_playable_notes){
				with note_tracker{
					percentage = (success / total) * 100;
					show_debug_message("Percentange: " + string(percentage))
				}
			}
		}
	}
	
	global.player.confidence.current = clamp(global.player.confidence.current - CONFIDENCE_LOST_PER_FAIL, 0, global.player.confidence.max);

	with obj_rhythm_game{
		if (global.player.confidence.current == 0){
			lost_battle = true;
			battle_lost();
		}
	}
}