/// @description Destroy the shot, damage and slow down the enemys
// You can write your code in this editor

//other.HP -= Damage; // Enemy loses 1 HP when coliding with an bullet
other.PreviousSpeed = other.path_speed;
other.path_speed *= FreezingPower;
other.alarm[0] = FreezeTime;

instance_destroy(id);	// Destroy the bullet if it colides with an enemy

