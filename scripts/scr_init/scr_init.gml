#macro CAM_W camera_get_view_width(view_camera[0])
#macro CAM_H camera_get_view_height(view_camera[0])
#macro GUI_W display_get_gui_width()
#macro GUI_H display_get_gui_height()
#macro GAMESPEED_FPS game_get_speed(gamespeed_fps)
#macro DEFAULT_DIFFICULTY 16

#macro CONFIDENCE_LOST_PER_FAIL 2
#macro CONFIDENCE_GAINED_PER_SUCCESS 1
#macro MIN_DIST_TO_PLAY 32

global.player = {
	self_respect : {current : 5, max : 10, display : 5},
	confidence : {current : 20, max : 20, display : 20}	
}

global.music_data = {
	tutorial : //good apr 19
		{main : Tutorial_LoversTheme_Chords_135BPM, bpm : 270, note_speed : 13,
			acc : [{music : "000000000000000000000000000000000001011001000001001111001001", success : Tutorial_LoversTheme_Success_135BPM_Banjo_Weird, fail : Tutorial_LoversTheme_Fails_135BPM_Banjo_Weird}]
		},
	area_1_blues : //good apr 19
		{main : BasicBattle_Area1_BluesyRoses_A_Chords_165BPM, bpm : 330, note_speed : 10,
			acc : [{music : "000000000001000011001001001001000001001011000001001011000001000011001001001001001001001011000001001011001001", success : BasicBattle_Area1_BluesyRoses_A1_Success_165BPM_Banjo, fail : BasicBattle_Area1_BluesyRoses_A1_Fails_165BPM_Banjo},
				   {music : "000000000001001001000011001001001001001111000001001111000001001010000011001010001001001011000001001011001001", success : BasicBattle_Area1_BluesyRoses_A2_Success_165BPM_Banjo, fail : BasicBattle_Area1_BluesyRoses_A2_Fails_165BPM_Banjo}]
		},
	area_1_flamenco : //good apr 19
		{main : BasicBattle_Area1_FlamnCo_A_Chords_110BPM, bpm : 440, note_speed : 8,
			acc : [{music : "00000000000000010000000001001001000001010000000100000000010001010010010100000001001001010010010100100101000000010000000100010001", success : BasicBattle_Area1_FlamnCo_A_Success_110BPM_Banjo, fail : BasicBattle_Area1_FlamnCo_A_Fails_110BPM_Banjo}]
		},
	area_1_punk : //good apr 19
		{main : BasicBattle_Area1_Punk_Chords_90BPM, bpm : 180, note_speed : 19,
			acc : [{music : "000101010111010101110101011101110111", success : BasicBattle_Area1_Punk_Success_90BPM_Banjo, fail : BasicBattle_Area1_Punk_Fails_90BPM_Banjo}]
		},
	area_1_ouch_A : //good apr 19
		{main : BasicBattle_Area1_TheOuch_A_Chords_90BPM, bpm : 180, note_speed : 19,
			acc : [{music : "0000000100110001010100010111000100010101", success : BasicBattle_Area1_TheOuch_A1_Success_90BPM_Banjo, fail : BasicBattle_Area1_TheOuch_A1_Fails_90BPM_Banjo}, 
				   {music : "0000000100110001010001010111000101110101", success : BasicBattle_Area1_TheOuch_A2_Success_90BPM_Banjo, fail : BasicBattle_Area1_TheOuch_A2_Fails_90BPM_Banjo}]
		},
	area_1_ouch_A3 : //good apr 19
		{
		main : BasicBattle_Area1_TheOuch_A_Chords_90BPM, bpm : 540, note_speed : 6,
			acc : [{music : "000000000000000000000001000000001001000000000001000001000001000000000001000001001001000000000001000000001011000001000001", success : BasicBattle_Area1_TheOuch_A3_Success_90BPM_Banjo, fail : BasicBattle_Area1_TheOuch_A3_Fails_90BPM_Banjo}]
		},
	area_1_ouch_B : //good apr 19
		{main : BasicBattle_Area1_TheOuch_B_Chords_90BPM, bpm : 180, note_speed : 19,
			acc : [{music : "0000000100110001010101010111001101110101", success : BasicBattle_Area1_TheOuch_B_Success_90BPM_Banjo, fail : BasicBattle_Area1_TheOuch_B_Fails_90BPM_Banjo}]
		},

	blood_guzzling_fan_p1 : //good apr 19
		{main : Boss_1_PART_1_Chords, bpm : 220, note_speed : 15,
			acc : [{music : "00000001001100010101000101110001000101010011000101000101011100010111010100110001010100010111000100111101001100010101010101110011011101", success : Boss_1_PART_1_Success_110_BPM, fail : Boss_1_PART_1_Fails_110_BPM}]
		},
	blood_guzzling_fan_p2 : //good apr 19
		{main : Boss_1_PART_2_Chords, bpm : 440, note_speed : 8,
			acc : [{music : "000000010011010100010011001001010000011110100110101010100110101010101010011010100010011001001010000011110100110101010100110101010101", success : Boss_1_PART_2_Success_220_BPM, fail : Boss_1_PART_2_Fails_220_BPM}]
		},
	blood_guzzling_fan_p3 : //good apr 19
		{main : Boss_1_PART_3_Chords, bpm : 330, note_speed : 11,
			acc : [{music : "000000000001000011001001001001000001001011000001001011000001000011001001001001001001001011000001001011001001001001000011001001001001001111000001001111000001001010000011001010001001001011000001001011001001", success : Boss_1_PART_3_Success_165_BPM, fail : Boss_1_PART_3_Fails_165_BPM}]
		},
	area_2_blues : //good apr 19
		{main : BasicBattle_Area2_BluesyRoses_B_Chords_210BPM, bpm : 420, note_speed : 8,
			acc : [{music : "000000000001000111001001001011000001001011001011001011000001000111001001001011001001001011000111001011001001", success : BasicBattle_Area2_BluesyRoses_B1_Success_210BPM_Cifteli, fail : BasicBattle_Area2_BluesyRoses_B1_Fails_210BPM_Cifteli},
				   {music : "00000000000100100100011001001001001001111000001001111000001001010000011001010001001001011000001001011001001", success : BasicBattle_Area2_BluesyRoses_B2_Success_210BPM_Cifteli, fail : BasicBattle_Area2_BluesyRoses_B2_Fails_210BPM_Cifteli}]
		},
	area_2_flamenco : //good apr 19
		{main : BasicBattle_Area2_FlamnCo_B_Chords_220BPM, bpm : 440, note_speed : 8,
			acc : [{music : "000000000000000100000000010010010000010101101101000000000100010100100101000000010011001001010010010100100000000000010001000100010001", success : BasicBattle_Area2_FlamnCo_B_Success_220BPM_Cifteli, fail : BasicBattle_Area2_FlamnCo_B_Fails_220BPM_Cifteli}]
						   //00000000000000010000000001001001000001010110110100000000010001010010010100000001000000011001001010010010100100101000000010001000100010001
		},
	area_2_punk : //good apr 19??? Please test when it's easier
		{main : BasicBattle_Area2_Punk_Chords_440BPM, bpm : 880, note_speed : 4,
			acc : [{music : "00000000000000010000010100010001000000010000010100000100000100010000000000010111000100000101000100010001000100000101000100010001000100010001", success : BasicBattle_Area2_Punk_Success_440BPM_Cifteli, fail : BasicBattle_Area2_Punk_Fails_440BPM_Cifteli}]
		},
	area_2_ouch_c : //good apr 19
		{main : BasicBattle_Area2_TheOuch_C_Chords_110BPM, bpm : 220, note_speed : 15,
			acc : [{music : "0000000100110001010100010111000100010101", success : BasicBattle_Area2_TheOuch_C1_Success_110BPM_Cifteli, fail : BasicBattle_Area2_TheOuch_C1_Fails_110BPM_Cifteli},
				   {music : "0000000100110001010001010111000101110101", success : BasicBattle_Area2_TheOuch_C2_Success_110BPM_Cifteli, fail : BasicBattle_Area2_TheOuch_C2_Fails_110BPM_Cifteli},
			       {music : "0000000100110001010100010111000100110101", success : BasicBattle_Area2_TheOuch_C3_Success_110BPM_Cifteli, fail : BasicBattle_Area2_TheOuch_C3_Fails_110BPM_Cifteli}]
		},
	area_2_ouch_d : //good apr 19
		{main : BasicBattle_Area2_TheOuch_D_Chords_110BPM, bpm : 220, note_speed : 15,
			acc : [{music : "00000001001100010101010101110011011101", success : BasicBattle_Area2_TheOuch_D_Success_110BPM_Cifteli, fail : BasicBattle_Area2_TheOuch_D_Fails_110BPM_Cifteli}]	
		},
	boss2 : //good may 3
		{main : BOSSBattle_Boss2_Chords_110BPM, bpm : 880, note_speed : 4,
			acc : [{music : "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000001000000010001000001000001000100000000000000010000010000010001000001000001000100000100000100010000000000000000000000000000000100000000000000000000000000000000000000000000000100000000000100010001010001010001000000000000000000010000000100010000010000010001000000000000000100000000000000000000001000001000100000100000100010000000000000001010101000000000001010100010101010000000000000000000000000000000000000000000100010001010001010001000000000000000000010000000100010000010000010001000000000000000110000010000010001000001000001000100000100000100010000000000010001000000000001000100000000000100010000000000010001000000010000000100000000000000000001000001000001000000000001000100000000010100000000000000010001010101000000000100000111101100010000000000000000000001000000000100000000000100000000010000010001000000000000000101010111110101000111010001110101", success : BOSSBattle_Boss2_Success_110BPM, fail : BOSSBattle_Boss2_Fails_110BPM}]
		},
	area_3_blues :{main: BasicBattle_Area3_BluesyRoses_C_Chords_180BPM, bpm : 540, note_speed : 6,
					acc : [{music : "000000000001000111001001001011000001001011001011001011000001000111001001001011001001001011000111001011001001", success : BasicBattle_Area3_BluesyRoses_C1_Success_180BPM_Mandolin, fail : BasicBattle_Area3_BluesyRoses_C1_Fails_180BPM_Mandolin},
						   {music : "00000000000100100100011001001001001001111000001001111000001001010000011001010001001001011000001001011001001", success : BasicBattle_Area3_BluesyRoses_C2_Success_180BPM_Mandolin, fail : BasicBattle_Area3_BluesyRoses_C2_Fails_180BPM_Mandolin}]
				  }, //good may 3
	area_3_flamno : {main : BasicBattle_Area3_FlamnCo_C_Chords_110BPM, bpm : 450, note_speed : 8,
						acc : [{music : "0000000000000001000000000100100100000101000000011110010111100001001110110100000001001001010010010100100101000000011110111011101111", success : BasicBattle_Area3_FlamnCo_C_Success_110BPM_Mandolin, fail : BasicBattle_Area3_FlamnCo_C_Fails_110BPM_Mandolin}]
					}, //good may3
	area_3_punk : {main : BasicBattle_Area3_Punk_Chords_140BPM, bpm : 560, note_speed : 6,
						acc : [{music : "000000000000000101010001001101010101010100010101011101010101000101010101010101110101000101110011010101010001111101010001010101010101010111111111", success : BasicBattle_Area3_Punk_Success_140BPM_Mandolin, fail : BasicBattle_Area3_Punk_Fails_140BPM_Mandolin}],
					}, //good may 3
	area_3_ouch_e : {main : BasicBattle_Area3_TheOuch_E_Chords_140BPM, bpm : 560, note_speed : 6,
						acc : [{music : "00000000000000010000010100000001000100011111111100010101000000010000000100000001", success : BasicBattle_Area3_TheOuch_E1_Success_140BPM_Mandolin, fail : BasicBattle_Area3_TheOuch_E1_Fails_140BPM_Mandolin}, 
							   {music : "00000000000000010000010111111111000100011111000100010101000000010001010101010101", success : BasicBattle_Area3_TheOuch_E2_Success_140BPM_Mandolin, fail : BasicBattle_Area3_TheOuch_E2_Fails_140BPM_Mandolin}], 
					}, //good may 3
	area_3_ouch_f : {main : BasicBattle_Area3_TheOuch_F_Chords_140BPM, bpm : 560, note_speed : 6,
						acc : [{music : "00000000000000010000110100010101000100010001000111111111111111110001010100011111", success : BasicBattle_Area3_TheOuch_F_Success_140BPM_Mandolin, fail : BasicBattle_Area3_TheOuch_F_Fails_140BPM_Mandolin}]
					},
	boss3 : {main : BOSSBattle_Boss3_Chords_280BPM, bpm : 560, note_speed : 6,
				acc : [{music : "00000000000000000000000000000000000000000000000000000000000000000000000000011101000001000000000000000000000111110000010000010101000000000000000000011111000101010000010000010001000100010001000000000000000111011101110111011111000101000000000000000000000000010000010000000000000111110001010100000100000000000000000000000000000000000000000000000000000000010000010000010001010001000001111100000000110101000000000011010100000000001101010100010001000100010000000000000001001001010000000000000000000000010010010100000000000000000010010100100101001001010000010100000101000100010001000100000000000000000111111111111111000000000000000001111111111111110000000000000000011111111111111100000000000000000111011101110101000000000000000000000000000000010000011100000111000001111100011101000000000000000000011111000111110000000001110000000000000000000000000111000000000001111111110000000001110000000000010001000100010000011101110001001001001000000000000000011100011111111111111111", success : BOSS_3_Change_Success_280_BPM, fail : BOSS_3_Change_Fails_280_BPM}]
			},
	boss4 : {main : BOSSBattle_Boss4_Chords_110BPM, bpm : 880, note_speed : 4,
				acc : [{music : "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000001010101010101010101010101000100010000000000000000000000000000000101010101010101010101010101010100000000000000000000000000000001001001001010010010000101010101000000000000000000000000000000000000000000000000000000000001010101000000000000000000000000000000010101000000010101010101010101010100000000000000000000000000000001010101010101000001010101010101010000000000000000010101010101010101010101010101010101010101010000000000000000000101010101010100000000000000000001010101010001010101010000010101010000000101010101010000000101010100000001111101010101000001010101000000010101010101010000010101010000000101010101000000000000000000000000000000000000000000000000000000010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000101010101111101000001000000010000000000000001011001010001000100000000000000010110010100010001000000000000000101100101000100010001010101010000010101010000010101010001010101010101010101010101000101010101000001010101000001010101000101010101010101010101010100010101010100000101010100000101010100010101010101010101010101010001010101010000010101010000010101010001010101010101010101010101", success : BOSSBattle_Boss4_Success_110BPM_ElecGuitar, fail : BOSSBattle_Boss4_Fails_110BPM_ElecGuitar}]
			}
}

global.battle = {
	music_id : 0,
	enemy_sprite : spr_peasant_coffin,
}

enum e_game {title, play, interact, battle};

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
	text_item_id_1 : {title : "Journal", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["Headstone was late. 100 people sitting around a mound.\nAlmost lost it on Ma and she looked at me like I was a curse in the flesh.\nSomeone, bury me too."]},
	text_item_id_2 : {title : "Memory - Bedside - For All time", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["How thin. She wilted before my eyes. Illness still becomes her.\nI too shall wilt before my maker.",
				"I will do it without beauty or grace.\nI have decided. All that is, declines from the moment it becomes."]
	},
	text_item_id_3 : {title : "Memory - Dragonfly Inn - Night", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["The first stop on our first tour together. We reach the Inn around suppertime.",
				"I take the bags from the carriage and start to drag them upstairs to our room,\ntwo at a time.\nI always do this immediately; it helps me settle in.",
				"I come back for the second trip and Lyra is already seated in the dining room,\ntilting a bowl of soup into her mouth and banging the table\nin time with a three-man band.",
				"I finish loading the bags and join her. I am quiet because I am annoyed to\nhave been left behind.\n'Oh!” She says, sliding her soup bowl towards me.\n'Have some! Split pea - very salty. It's perfect.”",
				"There is hardly a spoonful left, and I frown into the nearly empty bowl.\n'You can finish it,” I mutter.\n'I unloaded the bags,” I add. I am irritated,\nbut I hope I sound matter-of-fact.\nI want to be acknowledged.",
				"'You don't eat enough,” she says, turning back to the band.\n'After a long journey, you don't need hot soup?\nI do. It's so... cozy.”\n'Mm,” I say.\n'Yeah,” she says, nodding perhaps to some voice only she can hear.\n'It helps me settle in.”",
				"From then on, every tour, at every stop,\nwe settle in the same way.\nI take the bags upstairs,\nand she finds the closest bowl of soup.\nSometimes, we split the difference."]
	},
	text_item_id_4 : {title : "Journal", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["The enthusiasm of fans is rather alien to me.",
				"Their expectations mount with each satisfaction.\nAlways, I compose more music because\nI am afraid that I will fail these strangers\nwho I do not understand,\nand break fellowship with folk I cannot reason with.",
				"How shameful is that?\nI no longer compose just to see what comes of it:\nto find new sensations in song.",
				"If not for Lyra's calm\nand instinct for experimentation,\nI would not like composing very much at all."],
	},
	//Area 2
	text_item_id_5 : {title : "Memory - Office - Midday", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["The Magelord is tall. Taller than mother. \nHe smiles down at me. He does not smile with teeth and his eyes are too open. \nHis office is full of records: glass orbs that glow all shades of blue.",
				"He selects a dark blue orb and taps it thrice. Sad piano and a raspy voice fill the room, and the colors change. \n\nI like this record very much. ",
				"“I would be pleased to invest in more young talent,” he says. He strokes his mustache. It’s gray and ugly and comes over his lips. \nI stand up straight because mother will scold me if I slouch and it makes me look taller. \nHe flips over a piece of parchment and scribbles on it.",
				"“Your first two records, all proceeds will be mine. Then, we split them ever after. I shall provide quarters, two daily meals, and a studio space. \nKeep steady, make your music, and it will play in every hall in this land.”",
				"I nod because he wants me to, and so does mother. She looks proud, or hopes to look proud in front of the Magelord. \nShe asks questions about numbers. They go back and forth on this date and that dollar.",
				"She signs. I perform for the Magelord that same night."],
	},
	text_item_id_6 : {title : "Sensation", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["Sore fingers, calloused by overwork, and overplay... A stinging satisfaction."],
	},
	text_item_id_7 : {title : "Journal", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["Before Lyra, the stage was inevitable. \nWith Lyra, the stage became a paradise. \nNow that she is gone, the stage becomes a dungeon.", 
				"Who knows what things lurk at its corners, crawl beneath its boards.", 
				"Who knows what tortured prisoner might escape my open mouth…"],
	},
	text_item_id_8 : {title : "Journal", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["I am the worst songwriter in history. Yesterday, I wrote a torrent of raw sewage. \nToday, I churned out chunks of worthless garbage. Tomorrow, I’ll take a shite on parchment and call it a song.", 
				"Nevermind. I’ve found the riff!"],
	},
	text_item_id_9 : {title : "Memory - Studio - Daylight", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["We haven’t spoken since this morning. \n\nI rather think it’s her problem - she knows I take things personally that don’t phase her. \nBut she can’t help herself. She likes to push.",
			"	Although, I snapped at her. Perhaps I am a little fragile today. \n\nUsually she takes me head on, but this time she’s quiet. \nI worry I have broken some contract between us. ", 
				"We haven’t spoken, but we’ve been composing all day. Even in silent struggle, our strings seem to speak for us. \n\nToday, for whatever reason, they speak beautifully.", 
				"Her harp finishes a lilting phrase. Then stops playing and nods at me. “I think that’s settled, now,” she says.",
				"And it is. We talk about the songs we might write based on today. \nWe talk as if nothing has happened. But something has. \n\nAt some point, without my knowledge, it seems my mandolin and her harp forgave one another."],
	},
	text_item_id_10 : {title : "Memory", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["When mother and father are asleep, I set aside the practice sheets. \nI take father’s guitar and sneak into the basement. \nI play something new. Maybe someone has thought of this chord, this arpeggio. Maybe someone has thought of everything.", 
				"But in the dark, everything I do myself is new."],
	},
	text_item_id_11 : {title : "Memory - Last Day on Earth", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["I walk into the countryside. I should burn my studio. I should drown my banjo in the river.", 
				"I walk and walk and walk. I cannot decide. If I could keep every minute with her sharp in my mind, \nor dispose of it all and forget, \nwhat would I choose?", 
				"This muddled in-between, whereby I lose her in flakes and shrouds of mist, \nyet keep the shape of her, if only in absence; \nI cannot accept it...",
				"Still, now that everything is undone, it is nice to remember. It is nice to try."],
	},
	text_item_id_12 : {title : "Journal", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["1. Eggs \n2. Flour \n3. Sugar \n4. Butter (dairy in the morning) \n5. Violets (Lyra says roses are pompous)", 
				"6. Move the arch \n7. Seatings for 40 \n8. Pick up Ring from smith \n9. Cake tins. Forgot about cake tins! Cakes need cake tins!",
				"10. Wine, for after. When it’s just us."],
	},
	text_item_id_13 : {title : "Vow", sprite_index : spr_text_id, 
		interact : scr_text,
		text : ["Lyra left a song unfinished. I just remembered. A jumble of notes, in the drawer of my desk. \nIf... I can leave this place, I shall return home.", 
				"And I shall finish it."],
	},
	
	npc_id_1 : {title : "Lachrima, Host of Sorrows", sprite_index : spr_angel, 
		interact : scr_text,
		text : ["Hark, little fiddler.\nMark this silence well.", 
				"So, you've come.\nTo turn the wheel once more. I am Lachrimae.\nI, like you, fellinto this place.\nPerhaps it was long, long ago... It is useful to forget.",
				"This isn't hell, no.\nIt is a pustule, growing on the membrane between\nyour world and the next.\nYour world, little fiddler; fed by your sickness.\nThis has always been yours.",
				"There is an escape, of course.\nA Tour across these lands could break the membrane,\nand return you to your world.\nIf you play sublimely, perhaps...",
				"Your fear is palpable.\nTake up your instrument -\nit cannot dole a deeper wound\nthan grief has done you.\nCome, play a tune for me."],
		on_done : function(){global.battle = {music_id : 777, enemy_sprite : spr_angel}  start_battle()}
	},	

	npc_id_2 : {title : "Serpent", sprite_index : spr_beast_of_mournful_scales,
		interact : scr_text,
		text : ["You... \nI wait in the choke \nof your heart."]	,
	},
	
	minion_id_1 : {text : [global.minion_text[irandom(array_length(global.minion_text) - 1)]], sprite_index : spr_accidental,
					interact : scr_text,
					on_done : function(){global.battle = {enemy_sprite : spr_accidental, data : set_battle_data("area_1_blues", 0)}  start_battle()}},
	minion_id_2 : {text : global.minion_text[irandom(array_length(global.minion_text) - 1)], sprite_index : spr_accidental,
					interact : scr_text,
					on_done : function(){global.battle = {music_id : undefined, enemy_sprite : spr_accidental}  start_battle()}},
	minion_id_3 : {text : global.minion_text[irandom(array_length(global.minion_text) - 1)], sprite_index : spr_accidental,
					interact : scr_text,
					on_done : function(){global.battle = {music_id : undefined, enemy_sprite : spr_accidental}  start_battle()}},
	minion_id_4 : {text : global.minion_text[irandom(array_length(global.minion_text) - 1)], sprite_index : spr_accidental,
					interact : scr_text,
					on_done : function(){global.battle = {music_id : undefined, enemy_sprite : spr_accidental}  start_battle()}},
	minion_id_5 : {text : global.minion_text[irandom(array_length(global.minion_text) - 1)], sprite_index : spr_accidental,
					interact : scr_text,
					on_done : function(){global.battle = {music_id : undefined, enemy_sprite : spr_accidental}  start_battle()}},
	
	puzzle_piece_id_1 : {sprite_index : spr_stepping_stone},
	puzzle_piece_id_2 : {sprite_index : spr_stepping_stone},
	puzzle_piece_id_3 : {sprite_index : spr_stepping_stone},
	puzzle_id_1 : {sprite_index : spr_puzzle_1},
	
	boss_id_1 : {title : "Blood-guzzling Fan", sprite_index : spr_boss_blood_guzzling_fan,
		interact : scr_text,
		on_done : function(){global.battle = {music_id : undefined, enemy_sprite : spr_boss_blood_guzzling_fan}  start_battle()},
		text : ["Vega?\nThe Bard??\nI own every record of yours, I swear! I swear it! Oh we can sing together, oh! A dream - I thought it only a dream, a distant, impossible dream and yet...",
				"You are here...with... me!\nOh, please. You must.\nYou must tell me when the next record is coming out. You must. I keep secrets, oh yes. I keep secrets well, and",
				"I have to know. When is your record coming out?",
				"When is it coming? When? Don't you love your fans? I am your biggest fan, you-Why won't you TELL ME?",
				"That's it? Nothing to say? Ehehehe that's all?",
				"No.\nI will not leave with nothing.\nNo. This is my one chance to meet you... You will part with something.",
				"A lock of your flowing hair? A piece of your sleeve? Please - Will you? What\nabout,\nA finger?\nOr,",
				"What of your blood?\n\nIf you have no record to give me\nI shall have succor from your very veins..."
		]
	},
}