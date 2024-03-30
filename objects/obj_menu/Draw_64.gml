
if(alarm[0] == 0){
	//draw_color_text(array_first(_text) + string(i));
	if(i < array_length_1d(_text)){
	alarm[0] = 360;
	}
} else {
	var chunk = _text[i];
	draw_color_text(chunk);
}