// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_player_juice(_in = true){
	if (_in){
		var _curve = {
			inc : 0.05,
			timer : 0,
			channel_x : animcurve_get_channel(playerJuiceIn, "x"),
		}	
	}else{
		show_debug_message("setting juice to JuiceOut")
		_curve = {
			inc : 0.05,
			timer : 0,
			channel_x : animcurve_get_channel(playerJuiceOut, "x"),
		}	
	}
	
	return _curve;
}