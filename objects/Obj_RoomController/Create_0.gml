timeline_speed = 1/game_get_speed(gamespeed_fps);	// Sets the 'Moment' value of an timeline to be in seconds instead of steps
//WaveClean = true;

#macro _WAVE 0
#macro _TYPE 1
#macro _DELAY 2

Triggered = false;
Timer = 0
Current_Wave = 0;
Total_Waves = 0;

global.LevelsData = Scr_LevelsDataLoad();	// LevelsData armazena as informações de Waves de todos os Levels, vindas do arquivo WaveData.txt

Waves = Scr_WaveDataLoad(global.CurrentLevel, global.LevelsData);	// Armazena em uma DS_List as Waves do Level Atual

Paths_Array = Fn_Data_Load_txt("Paths");	// Array with the paths and its points

#macro _MONEY 2
global.Dinheiros = global.LevelDataArray[global.CurrentLevel][_MONEY];

timeline_index = Tln_FirstWaveStartTrigger_3sec;
timeline_position = 0;
timeline_running = true;

DebugingGUIlock = false;

