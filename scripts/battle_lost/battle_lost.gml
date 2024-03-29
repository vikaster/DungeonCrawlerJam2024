function battle_lost(){
	if (state != e_rhythm_game.fail){
		state = e_rhythm_game.fail;	
		show_debug_message("GAMESPEED_FPS: " + string(GAMESPEED_FPS))
		alarm[0] = (GAMESPEED_FPS * 2);	
		player.juice = set_player_juice(false);
		enemy.juice = set_enemy_juice(false);
		audio_sound_gain(track.main, 0, 2000);
		audio_sound_gain(track.success, 0, 2000);
		audio_sound_gain(track.fail, 0, 2000);
		
		show_debug_message("Battle failed, setting alarm[0] to " + string((GAMESPEED_FPS * 2)) + " | alarm[0]: " + string(alarm[0]))
	}
}