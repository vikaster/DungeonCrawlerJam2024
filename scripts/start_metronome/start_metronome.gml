///@start_metronome(val, val, val);
///@param bpm  
///@param beats_per_measure  
///@param activator          //The object that will handle the events unchained by the beats
function start_metronome(_bpm, _time_signature, _activator_name) {
	show_debug_message("start_metronome running")
	//We pass all the variables before creating the metronome

	//var _instance = instance_create_depth(x,y,depth,oEmpty);//@Rob can probably refactor this, wait until you know this code is implemented properly tho

	//var _id = _instance.id;

	//variable_instance_set(_instance, "bpm", _bpm);
	//variable_instance_set(_instance, "time_signature", _time_signature);
	//variable_instance_set(_instance, "activator_name", _activator_name);

	//with(_instance){original_id = id; instance_change(oMetronome,true);}

	//var num = instance_number(oMetronome);
	//for(var i = 0; i<num; i++)
	//{
	//	var inst = instance_find(oMetronome, i);
	//	if (inst.original_id == _id)
	//		return inst.id;
	//}

	//return undefined;

	instance_create_depth(x, y, depth, oMetronome, {bpm : _bpm, time_signature : _time_signature, activator_name : _activator_name})
	instance_create_layer(x,y,"Rhythm_bg",oEmpty);
}
