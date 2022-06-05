/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_speed = 0; // Stops the Auto-Play of the sprite
TurretCollor = c_green;
AtackDuration = 150;	// Duration of continuous atack
AtackRange = 0;	// Radius at which the turret can shoot

BulletSpeed = 10;	// Speed that the bullet goes out from the turret
TurretDamage = 0.2 + 0.1 * global.Upgrade[3][0]; // Turret's bullet Damage
AtackDuration = 150 + 15 * global.Upgrade[3][1]; // Duration of continuous atack
Cooldown = 200 - 20 * global.Upgrade[3][2]; // Cooldown to fire

alarm[0] = Cooldown; // Start the cooldown to fire