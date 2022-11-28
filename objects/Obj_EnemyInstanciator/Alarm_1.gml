/// @description Waves Controll

show_debug_message("New Wave");
EnemiesWave = WaveCount * 3; // Set the number of enemies for the next wave

// Increase the level for eache 3 waves
if (((EnemiesWave / 3) % 3) == 0 )
	EnemiesLevel++;

WaveCount++; // Increase the wave count
// Start the next wave
alarm[0] = game_get_speed(gamespeed_fps) * CreationDelay;

