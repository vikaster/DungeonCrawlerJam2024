// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_enemy_juice(_in = true){
	if (_in){
		var _curve = {
			inc : 0.05,
			timer : 0,
			channel_y : animcurve_get_channel(enemyJuiceIn, "y"),
		}	
	}else{
		show_debug_message("setting juice to JuiceOut")
		_curve = {
			inc : 0.05,
			timer : 0,
			channel_y : animcurve_get_channel(enemyJuiceOut, "y"),
		}	
	}
	
	return _curve;
}