timeline_speed = 1/room_speed;	// Sets the 'Moment' value of an timeline to be in seconds instead of steps
//WaveClean = true;

#macro _WAVE 0
#macro _TYPE 1
#macro _DELAY 2

Triggered = false;
Timer = 0
Current_Wave = 0;

// ==== estava no room start mas bugava ao ir e voltar do menú, arrumar depois ====
Waves = Scr_WaveData(global.Level);

switch(global.Level){
	case 0:
		global.Dinheiros = 10;
	break;
	case 1:
		global.Dinheiros = 20;
	break;
	case 2:
		global.Dinheiros = 40;
	break;
	case 3:
		global.Dinheiros = 80;
	break;
	case 4:
		global.Dinheiros = 120;
	break;
	case 5:
		global.Dinheiros = 200;
	break;
	case 6:
		global.Dinheiros = 30;
	break;
	default:
		global.Dinheiros = 0;
		show_message("Initial Dinheiros to this Level is not setted, takes 0 by defaut")
	break;
	
}

timeline_index = Tln_FirstWaveStartTrigger_3sec;
timeline_position = 0;
timeline_running = true;

DebugingGUIlock = false;
