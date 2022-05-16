StartDelay = 2000; // Start delay to create enemies
UpgradeStep = 1; // Enemy difficulty increase step
EnemiesCount = 0;	// Count to the enemies created
EnemiesWave = 0;	// Max enemies for wave
WaveCount = 1;	// Count the number of waves

////////////////// Parametro provisório /////////////////////////////////
EnemiesLevel = 1;

CreationDelay = 0.3;	// Manage delay betwen each enemy creation

enemies = [Obj_Enemy,Obj_Enemy_2,Obj_Enemy_3]; // Declares enemy types

alarm[1] = EnemiesLevel;

show_debug_message(room_speed);
