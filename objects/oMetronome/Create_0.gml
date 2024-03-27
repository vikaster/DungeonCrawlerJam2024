//This will handle the bpms and sending signals to the activator, but this object
//will not directly trigger events.

bpm_ms = 60000/bpm;		//BPM to ms equation formula
bpm_ms_current = bpm_ms;

audio_play_sound(sndMetronomeHigh,10,false); //Starting beat

beat = 2; //Number of the current beat (starts in two because it assumes the first one with the previous sound)

total_beats = 0;

timer_start = get_timer()/1000; //Start the timer

activator = instance_create_depth(x,y,depth,activator_name); //Creates the activator given by the parameter on start_metronome();
with(activator){event_user(0);} //Launches the event0 of the activator (Event 0 for the first beat of a measure, event 1 for every other beat of the measure. Easy to modify)

if (!audio_is_playing(FansDemand_TheOuch_A_Easy_Chords_90BPM)){
	audio_play_sound(FansDemand_TheOuch_A_Easy_Chords_90BPM, 0, false);
	audio_play_sound(FansDemand_TheOuch_A1_Easy_Fails_90BPM_Banjo, 0, false, 0);
	audio_play_sound(FansDemand_TheOuch_A1_Easy_Success_90BPM_Banjo, 0, false);
}