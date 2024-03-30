if(keyboard_check_pressed(ord("P"))){
	if(global.pause){
		visible = true
		global.pause = false;
		instance_deactivate_all(1);
	} else {
		visible = false;
		global.pause = true;
		instance_activate_all()
	}
}

draw_sprite(spr_hand_cursor, 0, mouse_x, mouse_y);

if(keyboard_check(vk_space) or i >= array_length_1d(_text)){
	// stop music and go to main room
	audio_stop_sound(IntroScene_Part1_MusicLoop);
	room_goto(rm_game);
	
}

if(!audio_is_playing(IntroScene_Part1_MusicLoop) ){
	audio_play_sound(IntroScene_Part1_MusicLoop, 7, true);
}