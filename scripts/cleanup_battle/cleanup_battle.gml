function cleanup_battle(){
	with obj_note instance_destroy();
	with oMetronome instance_destroy();
	
	global.game_state = e_game.play;
}