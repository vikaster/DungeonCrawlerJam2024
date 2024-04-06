//notes = "";
//music_data = global.music_data[global.battle.music_id];

/*
tutorial : 
		{main : Tutorial_LoversTheme_Chords_90BPM, bpm : 90,
			acc : [{music : "000000000000000000000000000000000001011001000001001111001001", success : Tutorial_LoversTheme_Success_90BPM_Banjo_Weird, fail : Tutorial_LoversTheme_Fails_90BPM_Banjo_Weird}]
		},
		*/
	

music_data = global.battle.data;

show_debug_message("music_data: " + string(music_data))

if (!audio_is_playing(music_data.main)){
	track = {
		main : audio_play_sound(music_data.main, 0, false),
		fail : audio_play_sound(music_data.fail, 0, false),
		success : audio_play_sound(music_data.success, 0, false, 0),
	}
}

show_debug_message("obj_rhythm_game created")
if (instance_number(obj_rhythm_game) > 1){
	instance_destroy();
	exit;
}
beats = 0;
//var _y = 16;

//Create test notes
pixels_per_beat = 16;//CAM_W / global.battle.data.steps;//16;
var _y = camera_get_view_y(view_camera[0]) + (CAM_H - 28);

unplayed_notes = [];

bottom = camera_get_view_height(view_camera[0]) - 10;
top = bottom - 32;
left = (CAM_W/2) - 16//camera_get_view_width(view_camera[0]) - 42;
right = left + 32;

difficulty = 8; //Higher = easier
lost_battle = false;
note_tracker = {
	success : 0,
	fail : 0,
	total : 0,
	percentage : 0,
}

for (var i = 1; i < string_length(music_data.music); i ++){
	if (string_char_at(music_data.music, i) == "1"){
		var _x = ((CAM_W/2) - (i * pixels_per_beat))///x = start_x + (oMetronome.total_beats + 1) * other.pixels_per_beat;
		var _note = instance_create_layer(_x, _y, "Notes", obj_note, {my_beat : i});
		array_insert(unplayed_notes, 0, _note);
	
		if (i == 1) show_debug_message("_x for " + string(i) + ": " + string(_x))
		//_y += 16;
	}
}

total_playable_notes = instance_number(obj_note);
show_debug_message("total_playable_notes: " + string(total_playable_notes))

player = {
	x : CAM_W + 144,
	y : CAM_H,
}

enemy = {
	x : CAM_W/2,
	y : 0,
	sprite_index : global.battle.enemy_sprite,
}

bar = {
	x : -144,
	y : 10,
}

enum e_rhythm_game {play, success, fail}

state = e_rhythm_game.play;

player.juice = set_player_juice();
enemy.juice = set_enemy_juice();