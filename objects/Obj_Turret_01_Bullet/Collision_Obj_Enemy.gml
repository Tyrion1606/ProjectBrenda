/// @description Destroy the shot and damage the enemys
// You can write your code in this editor

other.HP -= Damage; // Loses HP when coliding with a bullet

instance_destroy(id);	// Destroy the bullet if it colides with an enemy

