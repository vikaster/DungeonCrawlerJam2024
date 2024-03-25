if (instance_number(obj_transition_parent) == 0){
	
	if (stored_move != undefined){
		stored_move();
		stored_move = undefined;
		exit;
	}

	if (keyboard_check(ord("W"))){
		go_forward();
	}

	if (keyboard_check(ord("S"))){
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
		with(obj_rhythm) instance_destroy();
		instance_create_layer(0,0,"Notes", obj_rhythm);	
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