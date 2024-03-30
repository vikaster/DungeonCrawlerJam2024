function scr_create_transition(){
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
				
					if (yy >= 0 && yy < array_length(other.visual_grid) && xx >= 0 && xx < array_length(other.visual_grid) ){
						var ind = other.visual_grid[xx][yy].terrain_index;
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
				
					if (yy >= 0 && yy < array_length(other.visual_grid) && xx >= 0 && xx < array_length(other.visual_grid) ){
						var ind = other.visual_grid[xx][yy].terrain_index;
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
					if (yy >= 0 && yy < array_length(other.visual_grid) && xx >= 0 && xx < array_length(other.visual_grid) ){
						var ind = other.visual_grid[xx][yy].terrain_index;
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
					if (yy >= 0 && yy < array_length(other.visual_grid) && xx >= 0 && xx < array_length(other.visual_grid) ){
						var ind = other.visual_grid[xx][yy].terrain_index;
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