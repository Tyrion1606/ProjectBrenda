timeline_speed = 1/room_speed;	// Sets the 'Moment' value of an timeline to be in seconds instead of steps
//WaveClean = true;

#macro _WAVE 0
#macro _TYPE 1
#macro _DELAY 2

Triggered = false;
Timer = 0
Current_Wave = 0;

timeline_index = Tln_WaveStartTrigger;
timeline_running = true;
