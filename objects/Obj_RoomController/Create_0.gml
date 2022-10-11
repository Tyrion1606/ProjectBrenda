timeline_speed = 1/room_speed;	// Sets the 'Moment' value of an timeline to be in seconds instead of steps
//WaveClean = true;

#macro _WAVE 0
#macro _TYPE 1
#macro _DELAY 2

Triggered = false;
Timer = 0
Current_Wave = 0;

// ==== estava no room start mas bugava ao ir e voltar do menú, arrumar depois ====
//show_debug_message("[LevelsData]" + string(global.LevelsData))
Waves = Scr_WaveDataLoad(global.CurrentLevel, global.LevelsData);

#macro _MONEY 2
global.Dinheiros = global.LevelDataArray[global.CurrentLevel][_MONEY];

timeline_index = Tln_FirstWaveStartTrigger_3sec;
timeline_position = 0;
timeline_running = true;

DebugingGUIlock = false;
