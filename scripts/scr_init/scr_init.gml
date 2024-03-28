#macro CAM_W camera_get_view_width(view_camera[0])
#macro CAM_H camera_get_view_height(view_camera[0])

#macro CONFIDENCE_LOST_PER_FAIL 2
#macro CONFIDENCE_GAINED_PER_SUCCESS 1

global.player = {
	confidence : {current : 20, max : 20, display : 20}	
}

global.music_data = [
	{main : FansDemand_TheOuch_A_Easy_Chords_90BPM, 
	 fail : FansDemand_TheOuch_A1_Easy_Fails_90BPM_Banjo,
	 success : FansDemand_TheOuch_A1_Easy_Success_90BPM_Banjo,
	 music : "000000010011000101010001011100010001010100000001"}
]

enum e_game {title, play, battle};

global.game_state = e_game.title;