/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Firing = false;
ShotsNumber = 8; // Number of bullets per shoot
TurretCollor = c_red;
BombDamage = 0.7 + 0.1 * global.Upgrade[1][0]; // Bomb Damage
Cooldown = 120 - 5 * global.Upgrade[1][1]; // Cooldown to fire the bomb
AtackRange = 100 + 10 * global.Upgrade[1][2];	// Radius at which the turret can shoot
BulletSpeed = 2 + 0.2 * global.Upgrade[1][3];	// Speed that the bullet goes out from the turret
ExplosionRange = 100 + 10 * global.Upgrade[1][4]; // Explosion damage Range

alarm[0] = Cooldown; // Start the cooldown to fire
