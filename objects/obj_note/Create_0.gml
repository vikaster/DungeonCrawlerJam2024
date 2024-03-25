show_debug_message("note created");

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