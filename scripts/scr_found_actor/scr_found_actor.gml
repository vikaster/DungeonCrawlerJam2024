// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_found_actor(_map_data){
	show_debug_message("scr_found_actor running")
	if (struct_get(_map_data, "actor") != undefined){
		show_debug_message("actor found")
		obj_map.stored_move = undefined;
		global.game_state = e_game.interact;
		with _map_data.actor.my_data interact();
	}
}