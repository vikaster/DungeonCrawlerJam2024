// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function go_forward(){
	if (grid_x + a_gridxy[compass_point][0] < 0 || grid_x + a_gridxy[compass_point][0] >= map_w) ||
		(grid_y + a_gridxy[compass_point][1] < 0 || grid_y + a_gridxy[compass_point][1] >= map_h) {
			
		//Movement BLocked
		exit;
	}
	
	var _terrain = terrain[grid_x + a_gridxy[compass_point][0]][grid_y + a_gridxy[compass_point][1]];
	if (array_get_index(terrain_that_blocks_movement, _terrain) != -1){
		//Movement Blocked
		exit;
	}
		
	/*
		########### v               11  (5) (y_dist * 2) + 1
		#########  v  #########     9  (4)
		#######   v   #######      7  (3)
			#####    v    #####       5  (2)
			###           ###        3  (1)
	*/
		
	var ins = instance_create_depth(0,0,-1,obj_transition_forwards);
		
	with ins{
		var y_dist = 4;
				
		var list = ds_list_create();
		a_lists[y_dist] = list;
				
		for (var yy = other.visual_grid_y - y_dist; yy < other.visual_grid_y; yy ++){
			var x_count = 0;
			var debug = "";
			//show_debug_message("y_dist: " + string(y_dist) );
			for (var xx = other.visual_grid_x - y_dist; xx <= other.visual_grid_x + y_dist; xx ++){
				if (xx >= 0 && xx < other.map_w && yy >= 0 && yy < other.map_h){
							
					var spr = other.visual_grid[xx][yy];
							
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
	}
		
	grid_x += a_gridxy[compass_point, 0];
	grid_y += a_gridxy[compass_point, 1];	
	
	visual_grid_y --;
	visual_grid_y = clamp(visual_grid_y, 0, map_h - 1 );
	
	grid_x = clamp(grid_x, 0, map_w - 1 );
	grid_y = clamp(grid_y, 0, map_h - 1);
}

function go_back(){
	if (grid_x + a_gridxy[compass_point][0] < 0 || grid_x + a_gridxy[compass_point][0] >= map_w) ||
		(grid_y + a_gridxy[compass_point][1] < 0 || grid_y + a_gridxy[compass_point][1] >= map_h) {
			
		//Movement BLocked
		exit;
	}
	
	var _terrain = terrain[grid_x + a_gridxy[compass_point][0]][grid_y + a_gridxy[compass_point][1]];
	if (array_get_index(terrain_that_blocks_movement, _terrain) != -1){
		//Movement Blocked
		exit;
	}
	
	/*
		grid_x += a_gridxy[compass_point, 0];
		grid_y -= a_gridxy[compass_point, 1];
	
		grid_x = clamp(grid_x, 0, ds_grid_width(terrain) - 1 );
		grid_y = clamp(grid_y, 0, ds_grid_height(terrain) - 1 );
	
		visual_grid_y ++;
		visual_grid_y = clamp(visual_grid_y, 0, ds_grid_height(visual_grid) - 1 );
		*/
	
	grid_x += a_gridxy[compass_point, 0];
	grid_y -= a_gridxy[compass_point, 1];
	
	grid_x = clamp(grid_x, 0, map_w - 1 );
	grid_y = clamp(grid_y, 0, map_h - 1 );
	
	visual_grid_y ++;
	visual_grid_y = clamp(visual_grid_y, 0, map_h - 1 );
}

function turn_left(){
	//if (grid_x > 5) grid_x --;	
	//Turn Left
	if (compass_point - 1) >= 0 compass_point --;
	else compass_point = e_compass.last - 1;
	transition_sideways = 1;
	show_debug_message("transition_sideways: " + string(transition_sideways));
	scr_update_view_grid();	
	scr_create_transition();
}

function turn_right(){
	//if (grid_x < ds_grid_width(terrain) - 5) grid_x ++;	
	if (compass_point + 1) < e_compass.last compass_point ++;
	else compass_point = 0;
	transition_sideways = -1;
	show_debug_message("transition_sideways: " + string(transition_sideways));
	scr_update_view_grid();	
	scr_create_transition();
}