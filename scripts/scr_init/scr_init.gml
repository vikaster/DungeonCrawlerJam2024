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

global.music_data = {
	tutorial : 
		{main : Tutorial_LoversTheme_Chords_90BPM, bpm : 180,
			acc : [{music : "00000000000000000000001011001000001001111001001", success : Tutorial_LoversTheme_Success_90BPM_Banjo_Weird, fail : Tutorial_LoversTheme_Fails_90BPM_Banjo_Weird}]
		},
	area_1_blues :
		{main : BasicBattle_Area1_BluesyRoses_A_Chords_110BPM, bpm : 220, 
			acc : [{music : "000000000001000011001001001001000001001011000001001011000001000011001001001001001001001011000001001011001001", success : BasicBattle_Area1_BluesyRoses_A1_Success_110BPM_Banjo, fail : BasicBattle_Area1_BluesyRoses_A1_Fails_110BPM_Banjo},
				   {music : "000000000001001001000011001001001001001111000001001111000001001010000011001010001001001011000001001011001001", success : BasicBattle_Area1_BluesyRoses_A2_Success_110BPM_Banjo, fail : BasicBattle_Area1_BluesyRoses_A2_Fails_110BPM_Banjo}]
		},
	area_1_flamenco :
		{main : BasicBattle_Area1_FlamnCo_A_Chords_110BPM, bpm : 220,
			acc : [{music : "00000001000011100110001000010111110001111111111000100010101", success : BasicBattle_Area1_FlamnCo_A_Success_110BPM_Banjo, fail : BasicBattle_Area1_FlamnCo_A_Fails_110BPM_Banjo}]
		},
	area_1_punk :
		{main : BasicBattle_Area1_Punk_Chords_90BPM, bpm : 180,
			music : "000101010111010101110101011101110111",
			acc : [{success : BasicBattle_Area1_Punk_Success_90BPM_Banjo, fail : BasicBattle_Area1_Punk_Fails_90BPM_Banjo}]
		},
	area_1_ouch_A :
		{main : BasicBattle_Area1_TheOuch_A_Chords_90BPM, bpm : 180,
			acc : [{music : "0000000100110001010100010111000100010101", success : BasicBattle_Area1_TheOuch_A1_Success_90BPM_Banjo, fail : BasicBattle_Area1_TheOuch_A1_Fails_90BPM_Banjo}, 
				   {music : "0000000100110001010001010111000101110101", success : BasicBattle_Area1_TheOuch_A2_Success_90BPM_Banjo, fail : BasicBattle_Area1_TheOuch_A2_Fails_90BPM_Banjo},
				   {music : "000000000000000000000001000000001001000000000001000001000001000000000001000001001001000000000001000000001011000001000001", success : BasicBattle_Area1_TheOuch_A3_Success_90BPM_Banjo, fail : BasicBattle_Area1_TheOuch_A3_Fails_90BPM_Banjo}]
		},
	area_1_ouch_B :
		{main : BasicBattle_Area1_TheOuch_B_Chords_90BPM, bpm : 180,
			acc : [{music : "0000000100110001010101010111001101110101", success : BasicBattle_Area1_TheOuch_B_Success_90BPM_Banjo, fail : BasicBattle_Area1_TheOuch_B_Fails_90BPM_Banjo}]
		}

	//blood_guzzling_fan : 
	//	{main : BOSSBattle_Boss1_Chords_110BPM, bpm : 220,
	//		music : "",
	//		acc : [{success : BOSSBattle_Boss1_Success_110BPM_Banjo, fail : BOSSBattle_Boss1_Fails_110BPM_Banjo}
	
	//{main : FansDemand_TheOuch_A_Easy_Chords_90BPM, 
	// fail : FansDemand_TheOuch_A1_Easy_Fails_90BPM_Banjo,
	// success : FansDemand_TheOuch_A1_Easy_Success_90BPM_Banjo,
	// music : "000000010011000101010001011100010001010100000001"}
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
					on_done : function(){global.battle = {enemy_sprite : spr_accidental, data : set_battle_data("tutorial")}  start_battle()}},
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