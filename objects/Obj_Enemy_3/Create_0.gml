HP = 25;		// Sets the Initial Life
MoveSpeed = 1.5;	// The move speed of the enemy instance
EnemyDeathValue = 3;
path_start(global.LevelDataArray[global.CurrentLevel][_PATH], MoveSpeed, path_action_stop, true); // Starts to move ABSOLUTELY in the path and stops at the end.
