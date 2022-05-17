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
Cooldown = 50; // Cooldown to fire the bomb
AtackDuration = 150;	// Duration of continuous atack
AtackRange = 300;	// Radius at which the turret can shoot


alarm[0] = Cooldown; // Start the cooldown to fire
