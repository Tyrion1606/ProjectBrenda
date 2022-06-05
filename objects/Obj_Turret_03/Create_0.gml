/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

TurretCollor = c_yellow;
BulletSpeed = 7;	// Speed that the bullet goes out from the turret

TurretDamage = 1 + 0.15 * global.Upgrade[2][0]; // Turret's bullet Damage
Cooldown = 20 - 3 * global.Upgrade[2][1]; // Cooldown to fire
AtackRange = 100 + 25 * global.Upgrade[2][2];	// Radius at which the turret can shoot
ShotsNumber = 4 + 2 * global.Upgrade[2][3]; // Number of bullets per shoot

alarm[0] = Cooldown; // Start the cooldown to fire