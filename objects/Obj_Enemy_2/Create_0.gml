HP = 20;		// Sets the Initial Life
MoveSpeed = 1;	// The move speed of the enemy instance
EnemyDeathValue = 2;
path_start(global.LevelDataArray[global.CurrentLevel][_PATH], MoveSpeed, path_action_stop, true); // Starts to move ABSOLUTELY in the path and stops at the end.
