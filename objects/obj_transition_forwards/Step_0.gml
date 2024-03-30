move_y += 1;
if (move_y > 30){
	instance_destroy();
	with obj_map{
		scr_found_actor(terrain[grid_x][grid_y])	
	}
}