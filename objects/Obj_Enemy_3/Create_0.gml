HP = 5;		// Sets the Initial Life
MoveSpeed = 2;	// The move speed of the enemy instance
EnemyDeathValue = 3;
path_start(global.PathsArray[global.Level], MoveSpeed, path_action_stop, true); // Starts to move ABSOLUTELY in the path and stops at the end.
