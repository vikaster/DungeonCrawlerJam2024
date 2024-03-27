timer = get_timer()/1000 - timer_start; //Update the timer

//Explanation: We'll check the current time (in ms) minus the delta_time/1000 (how many
//milliseconds took the step, needed to maintain the tempo synchronized no matter the
//fps or slowdowns) against a threshold number which is a calculation of every beat in
//n time of milliseconds. We do this instead of resetting the timer like some people do
//because this is not a perfect science, and always has a few milliseconds margin of error
//If we reset the timer, we'll be draggin' those milliseconds and accumulating more and more
//until the metronome completely desynchronizes. By running the timer against a threshold,
//every error can be fixed in the next beat, thus keeping it synchronized perfectly to the ear.
//Long explanation.

//if (!audio_is_playing(FansDemand_TheOuch_A_Easy_Chords_90BPM)){
//	audio_play_sound(FansDemand_TheOuch_A_Easy_Chords_90BPM, 0, false);
//	audio_play_sound(FansDemand_TheOuch_A1_Easy_Fails_90BPM_Banjo, 0, false, 0);
//	audio_play_sound(FansDemand_TheOuch_A1_Easy_Success_90BPM_Banjo, 0, false);
//}

show_debug_message("beat: " + string(beat) + " | step_counter: " + string(step_counter) + " | timer : " + string(timer) + " | delta_time: " + string(delta_time) + " | delta_time/1000: " + string(delta_time/1000) + " | bpm_ms_current: " + string(bpm_ms_current))

if(timer - delta_time/1000 >= bpm_ms_current) 
{
	if(beat == 1) //On the first beat...
	{
		audio_play_sound(sndMetronomeHigh,10,false); //High pitch sound
		with(activator){event_user(0);}				 //Same as create event
	}
	else //On every other beat of the measure
	{
		audio_play_sound(sndMetronomeLow,10,false); //Low pitch sound
		with(activator){event_user(1);}				//Activate the event 1 rather than event 0
	}
	
	bpm_ms_current += bpm_ms; //Adds the ms value for the next beat to the threshold
	
	//This updates the current beat
	if(beat == time_signature)	beat = 1; 
	else						beat++;
	
	total_beats ++;
}

step_counter ++