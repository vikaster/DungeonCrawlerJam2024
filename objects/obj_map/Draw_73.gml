
/*			   y_dist  
	XXXXXXXXX  3
	 XXXXXXX   2
	  XXXXX    1
	   XXX     0

	3 + (y_dist * 2)

*/
if (instance_number(obj_transition_parent) == 0){
	
	var y_dist = 4;
	var y_count = 0;
	
	for (var yy = visual_grid_y - 4; yy <= visual_grid_y - 1; yy ++){
	
		var x_count = 0;

		for (var xx = visual_grid_x - y_dist; xx <= visual_grid_x + y_dist; xx ++){
			if (xx >= 0 && visual_grid_y > 0 && xx < ds_grid_width(visual_grid) && yy >= 0 && yy < ds_grid_height(visual_grid) ){
				var ind = real(string_digits(visual_grid[# xx, yy]));
				var spr = terrain_sprites[ ind ];
			}else spr = spr_frozen;
		
			//var scale = 1/y_dist;
			//var w = ((sprite_get_width(spr_forest) / 2) * scale);
			var w = room_width / (1 + (y_dist * 2) );
			var scale = w/128;
			var h = 10 * scale;
			//var draw_x = w + (x_count * (w * 2));
			var draw_x = w/2 + (x_count * (w));
			var draw_y = 144 + (y_count * h);
	
			draw_sprite_ext(spr, 0, draw_x, draw_y, scale, scale, 0, c_white, 1);
	
			x_count ++;
		}
		
		y_dist --
		y_count ++;
	}
}

//game_end();

/*
if (instance_number(obj_transition_sideways) == 0){
	var x_count = 0;

	for (var xx = visual_grid_x - 1; xx <= visual_grid_x + 1; xx ++){
		if (xx >= 0 && visual_grid_y > 0 && xx < ds_grid_width(visual_grid) && visual_grid_y < ds_grid_height(visual_grid) ){
			var ind = real(string_digits(visual_grid[# xx, visual_grid_y - 1]));
			var spr = terrain_sprites[ ind ];
		}else spr = spr_frozen;
		var w = (sprite_get_width(spr_forest) / 2)
		
		var draw_x = w + (x_count * (w * 2));
		var draw_y = 144;// + (y_count * h);
	
		draw_sprite_ext(spr, 0, draw_x, draw_y, 1, 1, 0, c_white, 1);
	
		x_count ++;
	}
}
*/
/*
var y_dist = 4;
var y_count = 0;

for (var yy = (grid_y - y_dist); yy < grid_y; yy ++){
	
	var x_count = 0;
	
	for (var xx = (grid_x - (y_dist + 1) ); xx <= (grid_x + (y_dist + 1)); xx ++){
		var scale = 1/y_dist;
		var w = ((sprite_get_width(spr_forest) / 2) * scale);
		var h = 10 * scale;
		var draw_x = w + (x_count * (w * 2));
		var draw_y = 144 + (y_count * h);
		
		if (xx >= 0 && xx < ds_grid_width(visual_grid) && yy >= 0 && yy < ds_grid_height(visual_grid) ){
			var ind = real(string_digits(visual_grid[# xx, yy]));
			var spr = terrain_sprites[ ind ];
			if (ind > 0) draw_sprite_ext(spr, 0, draw_x, draw_y, scale, scale, 0, c_white, 1);
		}else draw_sprite_ext(spr_frozen, 0, draw_x, draw_y, scale, scale, 0, c_white, 1);
		
		x_count ++;
	}
	
	y_dist --;
	y_count ++;
}
