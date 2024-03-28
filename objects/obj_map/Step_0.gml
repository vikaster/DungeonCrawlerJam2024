if (instance_number(obj_transition_parent) == 0){
	
	if (stored_move != undefined){
		stored_move();
		stored_move = undefined;
		show_debug_message("running stored move")
		exit;
	}

	if (keyboard_check(ord("W"))){
		go_forward();
	}

	if (keyboard_check_pressed(ord("S"))){
		go_back();
	}

	if (keyboard_check(ord("Q")) || keyboard_check(ord("A")) ){
		turn_left();
	}

	if (keyboard_check(ord("E")) || keyboard_check(ord("D")) ){
		turn_right();
	}

	//if (keyboard_check_pressed(vk_f5) ) game_restart();
	
	if (keyboard_check_pressed(vk_space)){
		start_metronome(180, 8, oEmpty);
		global.game_state = e_game.battle;
		//with(obj_rhythm) instance_destroy();
		//if (!instance_exists(obj_rhythm)){
		//	instance_create_layer(0,0,"Rhythm_bg", obj_rhythm);	
		//}
	}
	
	if (keyboard_check_pressed(vk_backspace)){
		//terrain[# grid_x + a_gridxy[compass_point][0], grid_y + a_gridxy[compass_point][1]] = irandom(e_terrain.last - 1);
	}

}else{
	//show_debug_message("instance_number(obj_transition_parent) > 0")
	//Store next move
	if (keyboard_check_pressed(ord("W"))){
		stored_move = go_forward;
		show_debug_message("storing move go_forward")
	}
	if (keyboard_check_pressed(ord("S"))){
		stored_move = go_back;
		show_debug_message("storing move go_back")
	}
	if (keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(ord("A")) ){
		stored_move = turn_left;
		show_debug_message("storing move turn_left")
	}
	if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("D")) ){
		stored_move = turn_right;
		show_debug_message("storing move turn_right")
	}
}