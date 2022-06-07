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

TurretDamage = 0.5 + 0.1 * global.Upgrade[4][0]; // Turret's bullet Damage
Cooldown = 100 - 5 * global.Upgrade[4][1]; // Cooldown to fire
AtackRange = 250 + 25 * global.Upgrade[0][2]; // Radius at which the turret can shoot
BulletSpeed = 1 + 0.5 * global.Upgrade[4][3]; // Bullet Speed


alarm[0] = Cooldown; // Start the cooldown to fire
