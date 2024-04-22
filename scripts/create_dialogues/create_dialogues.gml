// ["line_nr", "text"];
function create_dialogues(){
	var i = 0;
	repeat(argument_count){
	// create a tab of args*
	arg[i] = argument[i];
	i++;
}
var ds_grid_id = ds_grid_create(11, argument_count);
	for(var i = 0; i < argument_count; i++){
		var arr = arg[i];
		for(var j = 0; j < array_length_1d(arr); j++){
			ds_grid_id[i] = arr[j];
		}
	}

	return ds_grid_id;
}