if(alarm[1] == 0){
	alarm[1] = 600;
}

if( i != -1){
var t = string(_text[i]);
_wrap = string_wrap(t, string_length(t));
}

if(keyboard_check(vk_space) and canPressSkip){
	canPressSkip = false;
	alarm[1] = 600;
	i++;
}
draw_sprite(spr_hand_cursor, 0, mouse_x, mouse_y);

if(i >= array_length_1d(_text)){
	// stop music and go to main room
	audio_stop_sound(IntroScene_Part1_MusicLoop);
	room_goto(rm_game);
	
}

if(!audio_is_playing(IntroScene_Part1_MusicLoop) ){
	audio_play_sound(IntroScene_Part1_MusicLoop, 7, true);
}