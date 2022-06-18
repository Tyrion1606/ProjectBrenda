	global.LevelDataArray = [[Room1,Path1,30]
							,[Room2,Path2,20]
							,[Room3,Path3,25]];

#region Initialising the Progression GLOBAL variables:
	global.EnabledLevelsArray = array_create(array_length(global.LevelDataArray), true);
	global.EnabledLevelsArray[0] = true;
	
	//global.EXP = 0;			// This EXP will be used for further upgrades 
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
			Duration : 0	// acredito ser desnecessário também
		},
		Turret_05 : {
			Damage : 0,
			Speed : 0,
			Range : 0,
			BulletSpeed : 0
		},
		Points : 0,
		
		toString : function(){
			var tempStr = "\n======= [G.C.]Upgrades Current Data ======="
			tempStr += "\nTurret_01 : "
			tempStr += string(Turret_01)
			tempStr += "\nTurret_02 : "
			tempStr += string(Turret_02)
			tempStr += "\nTurret_03 : "
			tempStr += string(Turret_03)
			tempStr += "\nTurret_04 : "
			tempStr += string(Turret_04)
			tempStr += "\nTurret_05 : "
			tempStr += string(Turret_05)
			tempStr += "\n====================================="
			
			return tempStr
		}
	};
#endregion

#region Initialising the Settings GLOBAL Variables
	global.GridShow = false;
	global.FullScreen = false;
	
#endregion

#region  Initialising the GameControll GLOBAL Variables
	global.TempRoomStack = ds_stack_create();	// Stores the last rooms when its needed. (for setings screen for example)
	global.LostTrigger = false;
	global.LevelCleaned = false;
#endregion

show_debug_overlay(true);
