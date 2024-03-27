if (!audio_is_playing(FansDemand_TheOuch_A_Easy_Chords_90BPM)){
	//show_debug_message("notes: " + oEmpty.notes + "\n" + string(string_length(oEmpty.notes)))
	//game_end();
	
	oEmpty.state = e_rhythm_game.success;
	
	cleanup_battle();
}