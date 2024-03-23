move_y = 0;
steps = 30;

for (var y_dist = 4; y_dist > 0; y_dist --){
	var next_w = room_width / (1 + ( (y_dist - 1) * 2 ) );
	var next_scale = (next_w / 128);
	var next_h = (10 * next_scale);

	a_pixels_per_step[y_dist, 0] = (next_h) / steps;
	a_pixels_per_step[y_dist, 1] = next_scale
}
