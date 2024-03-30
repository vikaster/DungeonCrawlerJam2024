/*
	var scale = 1/y_dist;
	var w = ((sprite_get_width(spr_forest) / 2) * scale);
	var h = 10 * scale;
		
	var draw_x = w + (x_count * (w * 2));
	var draw_y = 144 + (y_count * h);
	
	draw_sprite_ext(spr, 0, draw_x, draw_y, scale, scale, 0, c_white, 1);
*/

var y_count = 0;

for (var y_dist = 4; y_dist >= 1; y_dist --){
	var list = a_lists[y_dist];
	var x_count = 0;
	var start_x = 0;

	var end_x = start_x + ds_list_size(list);

	for (var xx = start_x; xx < end_x; xx ++){
		var w = room_width / (1 + (y_dist * 2) );
		var scale = w/128; show_debug_message(string(y_dist) + " | scale: " + string(scale))
		var h = 10 * scale;

		if (move_dir == -1) var draw_x = w/2 + (xx * (w));
		else var draw_x = (w/2) - ( ( y_dist * 2) * (w) ) + (xx * w)
		var draw_y = 144 + (y_count * h);

		spr = list[| x_count];

		draw_sprite_ext(spr, 0, draw_x + ( moved * (a_move_distance[y_dist]) ), draw_y, scale, scale, 0, c_white, 1);
		
		//DEBUG
		//draw_set_halign(fa_left);
		//draw_set_valign(fa_bottom);
		//draw_set_colour(c_red);
		//draw_set_font(fnt);
		
		//draw_text_ext_transformed(draw_x + (moved * (a_move_distance[y_dist]) ), draw_y, string(x_count) , 20, 20, scale, scale, 0);

		x_count ++;
	}
	
	y_count ++;
	
	show_debug_message(y_dist);
}