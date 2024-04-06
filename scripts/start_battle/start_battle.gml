// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_battle(){
	with obj_map{
		//start_metronome(180, 8, oEmpty);
		show_debug_message("start_metronome(global.battle.data.bpm: " + string(global.battle.data.bpm))
		start_metronome(global.battle.data.bpm, 8, oEmpty);
		global.game_state = e_game.battle;
	}
}