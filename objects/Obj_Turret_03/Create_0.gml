/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

ShotsNumber = 8; // Number of bullets per shoot
FireDistance = 100; // Time to the bullets disappears
TurretCollor = c_yellow;
Cooldown = 20; // Cooldown to fire the bomb
BulletSpeed = 7;	// Speed that the bullet goes out from the turret
AtackRange = 100;	// Radius at which the turret can shoot

alarm[0] = Cooldown; // Start the cooldown to fire
