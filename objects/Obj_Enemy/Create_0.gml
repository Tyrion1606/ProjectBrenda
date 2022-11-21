HP = 1;		// Sets the Initial Life
HPmax = HP;		// Sets the Initial max Life
MoveSpeed = 1;	// The move speed of the enemy instance
EnemyDeathValue = 1;
//#macro _PATH 1
//path_start(global.LevelDataArray[global.CurrentLevel][_PATH], MoveSpeed, path_action_stop, true); // Starts to move ABSOLUTELY in the path and stops at the end.
path_start(Path_Running, MoveSpeed, path_action_stop, true); // Starts to move ABSOLUTELY in the path and stops at the end.
