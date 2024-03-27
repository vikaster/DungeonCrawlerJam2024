/// @description Insert description here
//y += 2;

x += 2;

if (x >= CAM_W + sprite_width) instance_destroy();

if (curve_data != undefined){
	//x += animcurve_channel_evaluate(curve_data.channel_x, curve_data.timer);
	y += animcurve_channel_evaluate(curve_data.channel_y, curve_data.timer);
	
	curve_data.timer += curve_data.inc;
	
	if (curve_data.timer > 1){
		if (struct_get(curve_data, "on_done") == undefined) curve_data.timer = 0;
		else{
			on_done = struct_get(curve_data, "on_done");
			curve_data = undefined;
		}
	}
}
if (on_done != undefined){
	on_done();	
}