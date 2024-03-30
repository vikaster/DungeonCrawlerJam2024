var _diff = global.player.self_respect.current - global.player.self_respect.display;

if (_diff != 0){
	global.player.self_respect.display += (sign(_diff) * 0.05);
}