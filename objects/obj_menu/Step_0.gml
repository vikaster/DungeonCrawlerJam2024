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