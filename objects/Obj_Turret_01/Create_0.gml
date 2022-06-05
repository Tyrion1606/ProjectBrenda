/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Firing = true;
i = 0;
BulletSpeed = 10;	// Speed that the bullet goes out from the turret
TurretDamage = 1 + 0.15 * global.Upgrade[0][0]; // Turret's bullet Damage
Cooldown = 60 - 5 * global.Upgrade[0][1]; // Cooldown to fire
AtackRange = 100 + 25 * global.Upgrade[0][2];	// Radius at which the turret can shoot

alarm[0] = Cooldown; // Start the cooldown to fire