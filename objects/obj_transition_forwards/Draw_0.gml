var y_dist = 4;
var y_count = 0;
	
for (var yy = gy - y_dist; yy < gy; yy ++){
	
	var x_count = 0;
	show_debug_message("y_dist: " + string(y_dist));
	show_debug_message("");

	for (var xx = gx - y_dist; xx <= gx + y_dist; xx ++){
		if (xx >= 0 && gy > 0 && xx < ds_grid_width(obj_map.visual_grid) && yy >= 0 && yy < ds_grid_height(obj_map.visual_grid) ){
			var ind = real(string_digits(obj_map.visual_grid[# xx, yy]));
			var spr = obj_map.terrain_sprites[ ind ];
		}else spr = spr_frozen;
		
		var w = room_width / (1 + (y_dist * 2) );
		var scale = w/128;
		var new_scale = scale + ( ((a_pixels_per_step[y_dist, 1] - scale) / 30) * move_y );
		var h = 10 * new_scale;

		var new_w = 128 * new_scale;

		var start_x = (room_width / 2) - (y_dist * new_w);
		var draw_x = start_x + (new_w * x_count);
		var draw_y = 144 + (y_count * h);
		var prev_draw_y = (144 + ( y_count * (10 * scale) ) )

		if (y_dist == 1) alpha = 0.5; else alpha = 1;

		draw_sprite_ext(spr, 0, draw_x, draw_y + (a_pixels_per_step[y_dist, 0] * move_y), new_scale, new_scale, 0, c_white, alpha);

		x_count ++;
	}
	show_debug_message("scale: " + string(scale) + " | new_scale: " + string(new_scale) + " | prev_draw_y: " + string(prev_draw_y) + " | draw_y: " + string(draw_y));
	y_dist --
	y_count ++;
}