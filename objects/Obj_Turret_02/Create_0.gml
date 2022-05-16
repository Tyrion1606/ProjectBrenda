/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Firing = false;
ShotsNumber = 8; // Number of bullets per shoot
TurretCollor = c_red;
Cooldown = 20; // Cooldown to fire the bomb
BulletSpeed = 2;	// Speed that the bullet goes out from the turret
AtackRange = 200;	// Radius at which the turret can shoot

alarm[0] = Cooldown; // Start the cooldown to fire
