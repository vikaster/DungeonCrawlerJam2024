success = {
	inc : 0.05,
	timer : 0,
	channel_y : animcurve_get_channel(noteSuccess, "y"),
}

fail = {
	inc : 0.1,
	timer : 0,
	channel_y : animcurve_get_channel(noteFail, "y"),
	on_done : method(, function(){y += grav; grav ++;}),
}

curve_data = undefined;
grav = 2;
on_done = undefined;

start_x = x;

if (instance_number(obj_note) == 1) show_debug_message("start_x for " + string(my_beat) + ": " + string(start_x))
