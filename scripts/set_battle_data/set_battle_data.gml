function set_battle_data(_name, _index = 0){
	var _data = struct_get(global.music_data, _name);
	
	if (_data == undefined){
		var _names = struct_get_names(global.music_data);
		_data = struct_get(global.music_data, _names[0]);
	}
	
	var _acc = _data.acc[_index];
	
	return {
		main : _data.main,
		fail : _acc.fail,
		success : _acc.success,
		bpm : _data.bpm,
		music : _acc.music,
		steps : 4,
	}
}