draw_set_colour(c_black);
draw_set_alpha(0.25);
draw_rectangle(1, top, 419, bottom, false);

draw_set_colour(c_blue);
draw_rectangle(left, top, right, bottom, false);

draw_set_alpha(1);

draw_set_colour(c_black);
draw_line(0, top + 16, CAM_W, bottom - 16);

draw_circle(left + 16, top + 16, difficulty, true);

//Difficulty
draw_set_colour(c_orange);
draw_circle(left + 16, top + 16, difficulty, true);

//MIN_DIST_TO_PLAY
//draw_set_color(c_lime)
//draw_circle(left + 16, top + 16, MIN_DIST_TO_PLAY, true);

//Enemy
draw_sprite(enemy.sprite_index, 0, enemy.x, enemy.y);
draw_sprite(spr_player, 0, player.x, player.y);

//health bar
var _perc = global.player.confidence.display/global.player.confidence.max;//0.5;
var _spr_w = sprite_get_width(spr_health_bar);
var _spr_h = sprite_get_height(spr_health_bar);

draw_sprite(spr_health_bar_bg, 0, bar.x, bar.y);
draw_sprite_part(spr_health_bar, 0, 0, 0, floor(_spr_w * _perc), _spr_h, bar.x + 2, bar.y + 2);

//Last Note
if (array_length(unplayed_notes) > 0){
	var _last_note = array_last(unplayed_notes);
	with _last_note{
		draw_sprite(spr_next_note, 0, x, y - 16);	
	}
}