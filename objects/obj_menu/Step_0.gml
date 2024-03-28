if(keyboard_check_pressed(ord("P"))){
	if(!global.pause){
		visible = false
		instance_deactivate_all(1);
	} else {
		visible = true;
		global.pause = false;
		instance_activate_all()
	}
}