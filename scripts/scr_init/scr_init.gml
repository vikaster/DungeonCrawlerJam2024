#macro CAM_W camera_get_view_width(view_camera[0])
#macro CAM_H camera_get_view_height(view_camera[0])
#macro GUI_W display_get_gui_width()
#macro GUI_H display_get_gui_height()
#macro GAMESPEED_FPS game_get_speed(gamespeed_fps)

#macro CONFIDENCE_LOST_PER_FAIL 2
#macro CONFIDENCE_GAINED_PER_SUCCESS 1

global.player = {
	self_respect : {current : 5, max : 10, display : 5},
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

global.data = {
	text_id_one : {title : "Journal", text : "Before her, the stage was inevitable. With her, the stage was a paradise. Now that she is gone, the stage has become a slaughterhouse…"},
	text_id_two : {title : "Sense", text : "Sore fingers, calloused by overwork, and overplay... A stinging satisfaction."},
	text_id_three : {title : "Image", text : "A bright sun muscles through the drawn curtains of a music studio as it sinks down the sky. Mahogany shimmers in its light until the horizon crushes it like goldleaf. All is gray once more. The perfect time to compose…"},
	npc_id_test1 : {sprite_index : spr_npc},	
	npc_id_test2 : {sprite_index : spr_npc},
}