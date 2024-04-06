if (obj_rhythm_game.state == e_rhythm_game.play && !audio_is_playing(obj_rhythm_game.track.main)){
	//show_debug_message("notes: " + obj_rhythm_game.notes + "\n" + string(string_length(obj_rhythm_game.notes)))
	//game_end();
	
	with obj_rhythm_game{
		state = e_rhythm_game.success;
		player.juice = set_player_juice(false);
		enemy.juice = set_enemy_juice(false);
	}
}