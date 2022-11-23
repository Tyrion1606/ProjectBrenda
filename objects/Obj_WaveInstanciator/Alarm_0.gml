/// @description Creacte the enemies in the wave
// You can write your code in this editor

// Verify if the wave is complete
if(EnemiesCount < EnemiesWave ){
	// Select the enemy
	// Randomize enemy enemy to array size
	var enemy = enemies[irandom_range(0, array_length(enemies)-1)];

	// Instanciate an enemy
	instance_create_layer(5, 5, "Instances", enemy); 

	// Reset alarm
	EnemiesCount++;
	alarm[0] = game_get_speed(gamespeed_fps) * CreationDelay;
}
else{
	// reset the timer to iniciate next wave
	EnemiesCount = 0;
	alarm[1] = max(1, StartDelay - power(UpgradeStep, EnemiesLevel));
}
