#region Initialising the Progression GLOBAL variables:
	global.EXP = 0;		// This EXP will be used for further upgrades 
	global.Level = 0;	// This is the level that tha player achieves in the game

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
	global.LevelCleaned = false;
#endregion

#region The Array to stores all the level rooms and it respective paths
global.RoomsArray =[Room1,
					Room2,
					Room3,
					Room4]
					
global.PathsArray = [Path1,
					Path2,
					Path3,
					Path4]
					
/*global.LevelArray=[global.WavesArray,
						Path2,
						Path3,
						Path4]*/
#endregion
