/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Firing = true;
i = 0;
BulletSpeed = 10;	// Speed that the bullet goes out from the turret
TurretDamage = 1 + 0.15 * global.Upgrades.Turret_01.Damage; // Turret's bullet Damage
Cooldown = 60 - 5 * global.Upgrades.Turret_01.Speed; // Cooldown to fire
AtackRange = 100 + 25 * global.Upgrades.Turret_01.Range;	// Radius at which the turret can shoot

alarm[0] = Cooldown; // Start the cooldown to fire