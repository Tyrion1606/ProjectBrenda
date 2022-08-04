/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

TurretCollor = c_yellow;
BulletSpeed = 5;	// Speed that the bullet goes out from the turret

TurretDamage = 2 + 0.2 * global.Upgrades.Turret_03.Damage; // Turret's bullet Damage
Cooldown = 30 - 0.6 * global.Upgrades.Turret_03.Speed; // Cooldown to fire
AtackRange = 50 + 5 * global.Upgrades.Turret_03.Range;	// Radius at which the turret can shoot
ShotsNumber = 4 + 0.4 * global.Upgrades.Turret_03.Density; // Number of bullets per shoot

Rotation = true;

alarm[0] = Cooldown; // Start the cooldown to fire