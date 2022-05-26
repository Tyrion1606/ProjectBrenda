HP = 3;		// Sets the Initial Life
MoveSpeed = 1.5;	// The move speed of the enemy instance
EnemyDeathValue = 2;
path_start(global.PathsArray[global.Level], MoveSpeed, path_action_stop, true); // Starts to move ABSOLUTELY in the path and stops at the end.
