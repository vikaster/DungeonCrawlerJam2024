function scr_update_view_grid() {
	//BASED ON COMPASS_POINT, TERRAIN WILL BE COPIED TO visual_grid IN DIFFERENT WAYS

	if (compass_point == e_compass.north){
		ds_grid_copy(visual_grid, terrain);
	
		visual_grid_x = grid_x;
		visual_grid_y = grid_y;
	}

	if (compass_point == e_compass.east){
	
	#region EAST
	
		var y_count = 0;
		for (var xx = (ds_grid_width(terrain) - 1); xx >= 0; xx --){
			var x_count = 0;
			for (var yy = 0; yy < ds_grid_height(terrain); yy ++){
				visual_grid[# x_count, y_count] = terrain[# xx, yy]
				x_count ++;
			}
			y_count ++;
		}
	
		visual_grid_x = grid_y;
		visual_grid_y = ( (ds_grid_width(terrain) - 1)- grid_x);
	
	#endregion
	}

	if (compass_point == e_compass.south){
	
	#region SOUTH
	
		var y_count = 0;
	
		for (var yy = ds_grid_height(terrain) - 1; yy >= 0; yy --){
			var x_count = 0;
		
			for (var xx = ds_grid_width(terrain) - 1; xx >= 0; xx --){
				visual_grid[# x_count, y_count]	= terrain[# xx, yy];
				x_count ++;
			}
		
			y_count ++;
		}
	
		visual_grid_x = (ds_grid_width(terrain) - 1) - grid_x;
		visual_grid_y = (ds_grid_height(terrain) - 1) - grid_y;
	
	#endregion

	}

	if (compass_point == e_compass.west){
	
	#region WEST
	
		var y_count = ds_grid_height(terrain) - 1;

		for (var yy = 0; yy < ds_grid_height(terrain); yy ++){
			for (var xx = 0; xx < ds_grid_width(terrain); xx ++){
				visual_grid[# y_count, xx] = terrain[# xx, yy];
			}
		
			y_count --;
		}
		visual_grid_x = (ds_grid_height(terrain) - 1) - grid_y;
		visual_grid_y = grid_x;
	
	#endregion
	}
}
