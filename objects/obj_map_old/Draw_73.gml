//health bar
if (global.game_state == e_game.play){
	var _perc = global.player.self_respect.display/global.player.self_respect.max;//0.5;
	var _spr_w = sprite_get_width(spr_respect_bar);
	var _spr_h = sprite_get_height(spr_respect_bar);

	draw_sprite(spr_respect_bar_bg, 0, 10, 10);
	draw_sprite_part(spr_respect_bar, 0, 0, 0, floor(_spr_w * _perc), _spr_h, 16, 10);
}