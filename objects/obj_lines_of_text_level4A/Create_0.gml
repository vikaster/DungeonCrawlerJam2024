
// create the dialogues
_text = create_dialogues(
["line1", "Your work is unfinished. Though you draw nearer to escape,"],
["line2", "you will have to turn the wheel once more. Seek yourself once more."],
["line3", "There is no time for despair. You draw near to victory,"],
["line4", "and now you have that much less to fear."],
["line5", "I shall wait for you at the beginning."],
["line6", "[GAME COMPLETE!]"]
);

canPressSkip = true;
alarm[0] = 360; 
alarm[1] = 600;
i = 0;
display_set_gui_size(room_width, room_height);