var _diff = global.player.confidence.current - global.player.confidence.display;

if (_diff != 0){
	global.player.confidence.display += (sign(_diff) * 0.1);
}