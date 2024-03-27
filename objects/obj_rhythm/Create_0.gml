music = "1100110011001100";//["01110000000000111"]
//array[1] = ["0011001100110011"]
//array[2] = ["0000000100000000"]
//array[3] = ["1110111011101110"]

enum e_rhythm {init, play, done};

array_index = 0;
play_speed = 5;//0.025;
play_progress = 0;
max_index = 16;

state = e_rhythm.play;

show_debug_message("obj_rhythm created");

bottom = camera_get_view_height(view_camera[0]) - 10;
top = bottom - 32;
left = (CAM_W/2) - 16//camera_get_view_width(view_camera[0]) - 42;
right = left + 32;

difficulty = 8; //Higher = easier

unplayed_notes = [];

//audio_play_sound(FansDemand_TheOuch_A_Easy_Chords_90BPM, 0, false);
//audio_play_sound(FansDemand_TheOuch_A1_Easy_Success_90BPM_Banjo, 0, false);

start_metronome(180, 8, oEmpty);