#region Initialising the Progression GLOBAL variables:
	var LevelsQuantity = 3; // Verbose porpose only
	global.EXP = 0;			// This EXP will be used for further upgrades 
	global.Level = 0;		// This is the level that tha player achieves in the game
	//global.LevelCleanedArray = array_create(LevelsQuantity, false);
	
	global.LevelDataArray = [[false],[Room1],[Path1],[15]
							,[false],[Room2],[Path2],[20]];

	#region UPGRADE array
	
	// The current upgrade status of any upgrade needs to be changed after any
	// upgrade and needs to be reseted when is a load action
	
	global.Upgrade[0][0] = 0;	// T1: Damage
	global.Upgrade[0][1] = 0;	// T1: Atk Speed
	global.Upgrade[0][2] = 0;	// T1: Range

	global.Upgrade[1][0] = 0;	// T2: Damage
	global.Upgrade[1][1] = 0;	// T2: Atk Speed
	global.Upgrade[1][2] = 0;	// T2: Range
	global.Upgrade[1][3] = 0;	// T2: Bomb Speed
	global.Upgrade[1][4] = 0;	// T2: Exprosion Area

	global.Upgrade[2][0] = 0;	// T3: Damage
	global.Upgrade[2][1] = 0;	// T3: Atk Speed
	global.Upgrade[2][2] = 0;	// T3: Range
	global.Upgrade[2][3] = 0;	// T3: Density

	global.Upgrade[3][0] = 0;	// T4: Damage
	global.Upgrade[3][1] = 0;	// T4: Whip Duration
	global.Upgrade[3][2] = 0;	// T4: Cooldown Reduction
	
	global.Upgrade[4][0] = 0;	// T5: Damage
	global.Upgrade[4][1] = 0;	// T5: Atk Speed
	global.Upgrade[4][2] = 0;	// T5: range
	global.Upgrade[4][3] = 0;	// T5: BulletSpeed

	#endregion
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

#region The Array to stores all the level rooms and it respective paths
global.RoomsArray =[Room1,	// Its used in the object "NextLevel" [Button]
					Room2,	// to  Know what room it needs to go
					Room3,	// depending on the level
						 ]	// 
					
global.PathsArray =[Path1,	// Its ued when a Enemy is intanciated
					Path2,	// to Know its path when created
					Path3,	// 
						 ]	// 
					
#endregion

//show_debug_overlay(true);
