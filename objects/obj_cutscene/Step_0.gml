if(alarm[0] == 0){
	alarm[0] = 10;
}

if(y >= 320){
	y = 320;
	self.image_speed = 0;
	alarm_set(0,0);
	global.cutscene = true;
}