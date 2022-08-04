/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Reference locations to place the frizing shots 
PlacePositions = [[x + sprite_height/2, y],   // Right
				  [x, y - sprite_height/2],   // Top
				  [x - sprite_height/2, y],   // Left
				  [x, y + sprite_height/2]];  // Down
				  
NextPosition = 0;	// Control the side to place the next freezing shoot
TurretCollor = c_blue;
AtackDuration = 150;	// Duration of continuous atack

FreezingPower = 0.7 - 0.02 * global.Upgrades.Turret_05.Freeze; // Amount of slow caused by the bullet
Cooldown = 160 - 2 * global.Upgrades.Turret_05.Speed; // Cooldown to fire
AtackRange = 150 + 5 * global.Upgrades.Turret_05.Range; // Radius at which the turret can shoot
BulletSpeed = 1 + 0.1 * global.Upgrades.Turret_05.BulletSpeed; // Bullet Speed


alarm[0] = Cooldown; // Start the cooldown to fire
