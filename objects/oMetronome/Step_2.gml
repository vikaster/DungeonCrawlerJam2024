if (oEmpty.state == e_rhythm_game.play && !audio_is_playing(oEmpty.track.main)){
	//show_debug_message("notes: " + oEmpty.notes + "\n" + string(string_length(oEmpty.notes)))
	//game_end();
	
	with oEmpty{
		state = e_rhythm_game.success;
		player.juice = set_player_juice(false);
	}
}