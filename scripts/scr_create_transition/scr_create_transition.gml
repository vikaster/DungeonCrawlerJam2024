function scr_create_transition() {
	//BASED ON COMPASS_POINT, TERRAIN WILL BE COPIED TO visual_grid IN DIFFERENT WAYS

	//if (compass_point == e_compass.north){
	//	//ds_grid_copy(visual_grid, terrain);
		
	//	for (var yy = 0; yy < map_h; yy ++){
	//		for (var xx = 0; xx < map_w; xx ++){
	//			visual_grid[xx][yy] = terrain[xx][yy]; 	
	//		}
	//	}
	
	//	visual_grid_x = grid_x;
	//	visual_grid_y = grid_y;
	//}

	//if (compass_point == e_compass.east){
	
	//#region EAST
	
	//	var y_count = 0;
	//	//for (var xx = (ds_grid_width(terrain) - 1); xx >= 0; xx --){
	//	for (var xx = (map_w - 1); xx >= 0; xx --){
	//		var x_count = 0;
	//		//for (var yy = 0; yy < ds_grid_height(terrain); yy ++){
	//		for (var yy = 0; yy < map_h; yy ++){
	//			//visual_grid[# x_count, y_count] = terrain[# xx, yy];
	//			visual_grid[x_count][y_count] = terrain[xx][yy];
	//			x_count ++;
	//		}
	//		y_count ++;
	//	}
	
	//	visual_grid_x = grid_y;
	//	//visual_grid_y = ( (ds_grid_width(terrain) - 1)- grid_x);
	//	visual_grid_y = ( (map_w - 1)- grid_x);
	
	//#endregion
	//}

	//if (compass_point == e_compass.south){
	
	//#region SOUTH
	
	//	var y_count = 0;
	
	//	//for (var yy = ds_grid_height(terrain) - 1; yy >= 0; yy --){
	//	for (var yy = map_h - 1; yy >= 0; yy --){
	//		var x_count = 0;
		
	//		//for (var xx = ds_grid_width(terrain) - 1; xx >= 0; xx --){
	//		for (var xx = map_w - 1; xx >= 0; xx --){
	//			//visual_grid[# x_count, y_count]	= terrain[# xx, yy];
	//			visual_grid[x_count][y_count]	= terrain[xx][yy];
	//			x_count ++;
	//		}
		
	//		y_count ++;
	//	}
	
	//	//visual_grid_x = (ds_grid_width(terrain) - 1) - grid_x;
	//	//visual_grid_y = (ds_grid_height(terrain) - 1) - grid_y;
	//	visual_grid_x = (map_w - 1) - grid_x;
	//	visual_grid_y = (map_h - 1) - grid_y;
	
	//#endregion

	//}

	//if (compass_point == e_compass.west){
	
	//#region WEST
	
	//	//var y_count = ds_grid_height(terrain) - 1;
	//	var y_count = map_h - 1;

	//	//for (var yy = 0; yy < ds_grid_height(terrain); yy ++){
	//	//	for (var xx = 0; xx < ds_grid_width(terrain); xx ++){
	//	for (var yy = 0; yy < map_h; yy ++){
	//		for (var xx = 0; xx < map_w; xx ++){
	//			//visual_grid[# y_count, xx] = terrain[# xx, yy];
	//			visual_grid[y_count][xx] = terrain[xx][yy];
	//		}
		
	//		y_count --;
	//	}
	//	//visual_grid_x = (ds_grid_height(terrain) - 1) - grid_y;
	//	visual_grid_x = (map_h - 1) - grid_y;
	//	visual_grid_y = grid_x;
	
	//#endregion
	//}

#region CREATE OBJECT TO TRANSITION TURNING

	ins = instance_create_depth(-(sprite_get_width(spr_forest) * 2), 144, - 1, obj_transition_sideways );

	with (ins){
	
	#region LEFT
	
		show_debug_message("visual_grid_x: " + string(other.visual_grid_x ));
		show_debug_message("visual_grid_y: " + string(other.visual_grid_y ));
	
		for (var y_dist = 4; y_dist >= 1; y_dist --){
			show_debug_message("y_dist: " + string(y_dist ));
		
			//Make a list for each "layer" - farthest away first
			list = ds_list_create();
			a_lists[y_dist] = list;
	
			if (other.transition_sideways == 1){
			
			#region ROW
			
				var start_x = other.visual_grid_x - (y_dist);
				var end_x = other.visual_grid_x + y_dist;
			
				var yy = other.visual_grid_y - y_dist;
			
				for (var xx = start_x; xx <= end_x; xx ++){
				
					//if (yy >= 0 && yy < ds_grid_height(other.visual_grid) && xx >= 0 && xx < ds_grid_width(other.visual_grid) ){
					if (yy >= 0 && yy < other.map_h && xx >= 0 && xx < other.map_w ){
						//var ind = real(string_digits(other.visual_grid[# xx, yy]));
						var ind = other.visual_grid[xx][yy];
						var spr = other.terrain_sprites[ ind ];
					}else spr = spr_frozen;

					ds_list_add(list, spr);
				}
	
			#endregion
			
			#region COLUMN

				var xx = other.visual_grid_x + y_dist;
			
				var start_y = other.visual_grid_y - (y_dist - 1);
				var end_y = other.visual_grid_y + y_dist;
			
				for (var yy = start_y; yy <= end_y; yy ++){
				
					//if (yy >= 0 && yy < ds_grid_height(other.visual_grid) && xx >= 0 && xx < ds_grid_width(other.visual_grid) ){
					if (yy >= 0 && yy < other.map_h && xx >= 0 && xx < other.map_w ){
						//var ind = real(string_digits(other.visual_grid[# xx, yy]));
						var ind = other.visual_grid[xx][yy];
						var spr = other.terrain_sprites[ ind ];
					}else spr = spr_frozen;
				
					ds_list_add(list, spr);
				}
			
			#endregion
			
			}
		
			if (other.transition_sideways == -1){
			
			#region TURN RIGHT
			
			#region COLUMN
				/*
				var xx = other.visual_grid_x - y_dist;
				var start_y = other.visual_grid_y + 1;
				var end_y = start_y - (y_dist + 1);
				*/
				var xx = other.visual_grid_x - y_dist;
				var start_y = other.visual_grid_y + y_dist;
				var end_y = other.visual_grid_y - y_dist;
			
				for (var yy = start_y; yy >= end_y; yy --){
					//if (yy >= 0 && yy < ds_grid_height(other.visual_grid) && xx >= 0 && xx < ds_grid_width(other.visual_grid) ){
					if (yy >= 0 && yy < other.map_h && xx >= 0 && xx < other.map_w){
						//var ind = real(string_digits(other.visual_grid[# xx, yy]));
						var ind = other.visual_grid[xx][yy];
						var spr = other.terrain_sprites[ ind ];
					}else spr = spr_frozen;	
				
					ds_list_add(list, spr);
				}
			
			#endregion
			
			#region ROW
			
				var yy = other.visual_grid_y - y_dist;
				var start_x = other.visual_grid_x - (y_dist - 1);
				var end_x = other.visual_grid_x + y_dist;
			
				for (var xx = start_x; xx <= end_x; xx ++){
					//if (yy >= 0 && yy < ds_grid_height(other.visual_grid) && xx >= 0 && xx < ds_grid_width(other.visual_grid) ){
					if (yy >= 0 && yy < other.map_h && xx >= 0 && xx < other.map_w ){
						//var ind = real(string_digits(other.visual_grid[# xx, yy]));
						var ind = other.visual_grid[xx][yy];
						var spr = other.terrain_sprites[ ind ];
					}else spr = spr_frozen;	
				
					ds_list_add(list, spr);
				}
			
			#endregion
			
			#endregion
			
			}
	
		}
	
	#endregion

	move_dir = other.transition_sideways;
	}

	#endregion

}
