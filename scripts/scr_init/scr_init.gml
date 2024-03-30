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

global.battle = {
	music_id : 0,
	enemy_sprite : spr_peasant_coffin,
}

enum e_game {title, play, battle};

global.game_state = e_game.title;

global.minion_text = [
	"Boring.",
	"More, give us more!!!",
	"They don't understand what it takes...",
	"The only true friend is my music.",
	"I'm not good enough.",
	"I'm tired of this.",
	"Can I just stop?",
	"I already gave my best.",
	"I won't ever be as good as I was.",
	"They won't like this."
]

global.data = {
	//Area 1
	text_item_id_1 : {title : "Journal", sprite_index : spr_text_id, text : ["Headstone was late. 100 people sitting around a mound.\nAlmost lost it on Ma and she looked at me like I was a curse in the flesh.\nSomeone, bury me too."]},
	text_item_id_2 : {title : "Memory - Bedside - For All time", sprite_index : spr_text_id, 
		text : ["How thin. She wilted before my eyes. Illness still becomes her.\nI too shall wilt before my maker.",
				"I will do it without beauty or grace.\nI have decided. All that is, declines from the moment it becomes."]
	},
	text_item_id_3 : {title : "Memory - Dragonfly Inn - Night", sprite_index : spr_text_id, 
		text : ["The first stop on our first tour together. We reach the Inn around suppertime.",
				"I take the bags from the carriage and start to drag them upstairs to our room, two at a time. I always do this immediately; it helps me settle in.",
				"I come back for the second trip and Lyra is already seated in the dining room, tilting a bowl of soup into her mouth and banging the table in time with a three-man band.",
				"I finish loading the bags and join her. I am quiet because I am annoyed to have been left behind.\n“Oh!” She says, sliding her soup bowl towards me. “Have some! Split pea - very salty. It’s perfect.”",
				"There is hardly a spoonful left, and I frown into the nearly empty bowl.\n“You can finish it,” I mutter. “I unloaded the bags,” I add. I am irritated, but I hope I sound matter-of-fact. I want to be acknowledged.",
				"“You don’t eat enough,” she says, turning back to the band. “After a long journey, you don’t need hot soup? I do. It’s so… cozy.”\n“Mm,” I say.\n“Yeah,” she says, nodding perhaps to some voice only she can hear. “It helps me settle in.”",
				"From then on, every tour, at every stop, we settle in the same way. I take the bags upstairs, and she finds the closest bowl of soup. Sometimes, we split the difference."]
	},
	text_item_id_4 : {title : "Journal", sprite_index : spr_text_id, 
		text : ["The enthusiasm of fans is rather alien to me.",
				"Their expectations mount with each satisfaction. Always, I compose more music because I am afraid that I will fail these strangers who I do not understand, and break fellowship with folk I cannot reason with.",
				"How shameful is that? I no longer compose just to see what comes of it: to find new sensations in song.",
				"If not for Lyra’s calm and instinct for experimentation, I would not like composing very much at all."],
	},
	npc_id_1 : {title : "Lachrima, Host of Sorrows", sprite_index : spr_angel, 
		text : ["Hark, little fiddler. Mark this silence well.", 
				"So, you’ve come. To turn the wheel once more. I am Lachrimae. I, like you, fellinto this place. Perhaps it was long, long ago… It is useful to forget.",
				"This isn’t hell, no. It is a pustule, growing on the membrane between your world and the next. Your world, little fiddler; fed by your sickness. This has always been yours.",
				"There is an escape, of course. A Tour across these lands could break the membrane, and return you to your world. If you play sublimely, perhaps…",
				"Your fear is palpable. Take up your instrument - it cannot dole a deeper wound than grief has done you. Come, play a tune for me."
		],
		on_done : function(){global.battle = {music_id : 777, enemy_sprite : spr_angel}  start_battle()}
	},	

	npc_id_2 : {title : "Serpent", sprite_index : spr_beast_of_mournful_scales,
		text : ["You… \nI wait in the choke \nof your heart."]	,
	},
	
	minion_id_1 : {text : global.minion_text[irandom(array_length(global.minion_text) - 1)], sprite_index : spr_accidental},
	minion_id_2 : {text : global.minion_text[irandom(array_length(global.minion_text) - 1)], sprite_index : spr_accidental},
	minion_id_3 : {text : global.minion_text[irandom(array_length(global.minion_text) - 1)], sprite_index : spr_accidental},
	minion_id_4 : {text : global.minion_text[irandom(array_length(global.minion_text) - 1)], sprite_index : spr_accidental},
	minion_id_5 : {text : global.minion_text[irandom(array_length(global.minion_text) - 1)], sprite_index : spr_accidental},
	
	puzzle_piece_id_1 : {sprite_index : spr_stepping_stone},
	puzzle_piece_id_2 : {sprite_index : spr_stepping_stone},
	puzzle_piece_id_3 : {sprite_index : spr_stepping_stone},
	puzzle_id_1 : {sprite_index : spr_puzzle_1},
	
	boss_id_1 : {title : "Blood-guzzling Fan", sprite_index : spr_boss_blood_guzzling_fan,
		text : ["Vega?\nThe Bard??\nI own every record of yours, I swear! I swear it! Oh we can sing together, oh! A dream - I thought it only a dream, a distant, impossible dream and yet…",
				"You are here…with… me!\nOh, please. You must./nYou must tell me when the next record is coming out. You must. I keep secrets, oh yes. I keep secrets well, and",
				"I have to know. When is your record coming out?",
				"When is it coming? When? Don’t you love your fans? I am your biggest fan, you-Why won’t you TELL ME?",
				"That’s it? Nothing to say? Ehehehe that’s all?",
				"No.\nI will not leave with nothing.\nNo. This is my one chance to meet you... You will part with something.",
				"A lock of your flowing hair? A piece of your sleeve? Please - Will you? What\nabout,\nA finger?\nOr,",
				"What of your blood?\n\nIf you have no record to give me\nI shall have succor from your very veins…"
		]
	},
}