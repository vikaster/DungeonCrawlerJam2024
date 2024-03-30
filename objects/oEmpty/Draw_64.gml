if (state != e_rhythm_game.fail){
	if (note_tracker.total == total_playable_notes){
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_set_colour(c_black);
		draw_set_font(fnt_battle_result);	
	
		var _result = get_result(note_tracker.percentage);
		var _xscale = (string_width(_result.text) + 20) / sprite_get_width(spr_button_dont_change);
		var _yscale = (string_height(_result.text) + 20) / sprite_get_width(spr_button_dont_change);
		draw_sprite_ext(spr_button_dont_change, 0, GUI_W / 2, GUI_H / 2, _xscale, _yscale, 0, c_white, 1);
		draw_text(GUI_W / 2, GUI_H / 2, _result.text);
	}
}else{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_colour(c_black);
	draw_set_font(fnt_battle_result);	
	var _text = "Failed";
	
	var _xscale = (string_width(_text) + 20) / sprite_get_width(spr_button_dont_change);
	var _yscale = (string_height(_text) + 20) / sprite_get_width(spr_button_dont_change);
	draw_sprite_ext(spr_button_dont_change, 0, GUI_W / 2, GUI_H / 2, _xscale, _yscale, 0, c_white, 1);
	draw_text(GUI_W / 2, GUI_H / 2, _text);
}