//This will handle the bpms and sending signals to the activator, but this object
//will not directly trigger events.

bpm_ms = 60000/bpm;		//BPM to ms equation formula
bpm_ms_current = bpm_ms;

audio_play_sound(sndMetronomeHigh,10,false); //Starting beat

beat = 2; //Number of the current beat (starts in two because it assumes the first one with the previous sound)

timer_start = get_timer()/1000; //Start the timer

activator = instance_create_depth(x,y,depth,activator_name); //Creates the activator given by the parameter on start_metronome();
with(activator){event_user(0);} //Launches the event0 of the activator (Event 0 for the first beat of a measure, event 1 for every other beat of the measure. Easy to modify)