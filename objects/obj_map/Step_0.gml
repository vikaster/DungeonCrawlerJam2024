if (instance_number(obj_transition_parent) == 0){

	if (keyboard_check_pressed(ord("W"))){
		
		/*
		  ########### v               11  (5) (y_dist * 2) + 1
		   #########  v  #########     9  (4)
		    #######   v   #######      7  (3)
			 #####    v    #####       5  (2)
			  ###           ###        3  (1)
		*/
		//show_debug_message("grid_x: " + string(grid_x));
		//show_debug_message("grid_y: " + string(grid_y));
		//show_debug_message("visual_grid_x: " + string(visual_grid_x));
		//show_debug_message("visual_grid_y: " + string(visual_grid_y));
		
		var ins = instance_create_depth(0,0,-1,obj_transition_forwards);
		
		with ins{
			var y_dist = 4
			//for (var y_dist = 4; y_dist >= 1; y_dist -- ){
				
				var list = ds_list_create();
				a_lists[y_dist] = list;
				
				for (var yy = other.visual_grid_y - y_dist; yy < other.visual_grid_y; yy ++){
					var x_count = 0;
					var debug = "";
					show_debug_message("y_dist: " + string(y_dist) );
					for (var xx = other.visual_grid_x - y_dist; xx <= other.visual_grid_x + y_dist; xx ++){
						if (xx >= 0 && xx < ds_grid_width(other.visual_grid) && yy >= 0 && yy < ds_grid_height(other.visual_grid)){
							
							var spr = other.visual_grid[# xx, yy];
							
						}else spr = spr_frozen;
						
						list[| x_count] = spr;
						debug += string(spr);
						x_count ++;
					}
					y_dist --;
					show_debug_message(debug);
				}
				
				gx = other.visual_grid_x;
				gy = other.visual_grid_y;
			//}
		}
		
		grid_x += a_gridxy[compass_point, 0];
		grid_y += a_gridxy[compass_point, 1];	
	
		visual_grid_y --;
		visual_grid_y = clamp(visual_grid_y, 0, ds_grid_height(visual_grid) - 1 );
	
		grid_x = clamp(grid_x, 0, ds_grid_width(terrain) - 1 );
		grid_y = clamp(grid_y, 0, ds_grid_height(terrain) - 1);
		
		//show_debug_message("grid_x: " + string(grid_x));
		//show_debug_message("grid_y: " + string(grid_y));
		//show_debug_message("visual_grid_x: " + string(visual_grid_x));
		//show_debug_message("visual_grid_y: " + string(visual_grid_y));
	}

	if (keyboard_check_pressed(ord("S"))){
		
		grid_x += a_gridxy[compass_point, 0];
		grid_y -= a_gridxy[compass_point, 1];
	
		grid_x = clamp(grid_x, 0, ds_grid_width(terrain) - 1 );
		grid_y = clamp(grid_y, 0, ds_grid_height(terrain) - 1 );
	
		visual_grid_y ++;
		visual_grid_y = clamp(visual_grid_y, 0, ds_grid_height(visual_grid) - 1 );
		
	}

	if (keyboard_check_pressed(ord("A"))){
		//if (grid_x > 5) grid_x --;	
		//Turn Left
		if (compass_point - 1) >= 0 compass_point --;
		else compass_point = e_compass.last - 1;
		transition_sideways = 1;
		show_debug_message("transition_sideways: " + string(transition_sideways));
		scr_update_view_grid();
	}

	if (keyboard_check_pressed(ord("D"))){
		//if (grid_x < ds_grid_width(terrain) - 5) grid_x ++;	
		if (compass_point + 1) < e_compass.last compass_point ++;
		else compass_point = 0;
		transition_sideways = -1;
		show_debug_message("transition_sideways: " + string(transition_sideways));
		scr_update_view_grid();
	}

	if (keyboard_check_pressed(vk_f5) ) game_restart();

}