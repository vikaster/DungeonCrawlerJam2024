function cleanup_battle(){
	with obj_note instance_destroy();
	with oMetronome instance_destroy();
	
	global.game_state = e_game.play;
	
	
	if (lost_battle){
		global.player.self_respect.current = clamp(global.player.self_respect.current - 1, 0, global.player.self_respect.max);
	}
}