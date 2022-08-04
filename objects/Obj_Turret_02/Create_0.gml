/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Firing = false;
ShotsNumber = 8; // Number of bullets per shoot
TurretCollor = c_red;
BombDamage = 4 + 0.2 * global.Upgrades.Turret_02.Damage; // Bomb Damage
Cooldown = 120 - 1 * global.Upgrades.Turret_02.Speed; // Cooldown to fire the bomb
AtackRange = 80 + 4 * global.Upgrades.Turret_02.Range;	// Radius at which the turret can shoot
BulletSpeed = 2 + 0.04 * global.Upgrades.Turret_02.BombSpeed;	// Speed that the bullet goes out from the turret
ExplosionRange = 100 + 2 * global.Upgrades.Turret_02.BombArea; // Explosion damage Range

alarm[0] = Cooldown; // Start the cooldown to fire
