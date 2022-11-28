
show_debug_overlay(true);

#region  Initialising the GameControll GLOBAL Variables
	global.TempRoomStack = ds_stack_create();	// Stores the last rooms when its needed. (for setings screen for example)
	global.LostTrigger = false;
	global.LevelCleaned = false;
	global.RestartFlag = false;
#endregion

#region Levels Data
global.LevelDataArray = [[Room1,Path1,30]
						,[Room2,Path2,20]
						,[Room3,Path3,25]];
global.LevelsData = Scr_LevelsDataLoad();
#endregion

#region Initialising the Progression GLOBAL variables:
	global.EnabledLevelsArray = array_create(array_length(global.LevelDataArray), false);
	global.EnabledLevelsArray[0] = true;
	
	global.CurrentLevel = 0;		// This is the level that the player achieves in the game
	
	global.Upgrades = {
		Turret_01 : {
			Damage : 0,
			Speed : 0,
			Range : 0
		},
		Turret_02 : {
			Damage : 0,
			Speed : 0,
			Range : 0,
			BombSpeed : 0,
			BombArea : 0
		},
		Turret_03 : {
			Damage : 0,
			Speed : 0,
			Range : 0,
			Density : 0
		},
		Turret_04 : {
			Damage : 0,
			Speed : 0,		// acredito ser desnecessário
			Duration : 0,	// acredito ser desnecessário também
			FireDistance : 0
		},
		Turret_05 : {
			Freeze : 0,
			Speed : 0,
			Range : 0,
			BulletSpeed : 0
		},
		Points : 5
	};
#endregion

#region Initialising the Settings
	global.GridShow = false;
	window_set_fullscreen(Fn_Data_Load_ini("Game_Settings", "Display", "FullScreen"));	// Carrega dados de Fullscreen
	
#endregion

#region Set initial Resolution and Screen Size
	var wUserResolution = display_get_width();	//Get the Users Display Width resolution

	var wWindowSize = wUserResolution*4/5;		//Take 4/5 of the screen size to the Window Size on opening
	var hWindowSize = wWindowSize/16*9;			//Mantain a 16x9 Proportion based on Width Window Size
	//show_debug_message("[G.C.] " + string(wWindowSize))
	//show_debug_message("[G.C.] " + string(hWindowSize))
	
	window_set_size(wWindowSize,hWindowSize);	// Sets the size
	window_center();	// Grants the Centered Window
#endregion

#region Other Local Variables Declaration
GridSize_ModFactor = 1;
x_Offset = 0;
#endregion

#region Oppening Delay
/*
var Method_Close_Oppening = function(){
	if(room = Room_Oppening){
		room_goto(MainMenu);
	}
}
var Time_Source = time_source_create(time_source_game,1,time_source_units_seconds,Method_Close_Oppening);
time_source_start(Time_Source);
*/
#endregion
