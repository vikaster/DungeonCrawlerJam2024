// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function note_success(_note){
	with _note{
		image_index = 1;
		curve_data = success;
	}
}

function note_fail(_note){
	with _note{
		image_index = 2;
		curve_data = fail;
	}
}