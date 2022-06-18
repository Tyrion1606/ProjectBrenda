/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

TurretCollor = c_green;
AtackDuration = 150;	// Duration of continuous atack
AtackRange = 0;	// Radius at which the turret can shoot

BulletSpeed = 10;	// Speed that the bullet goes out from the turret
// upgrades
TurretDamage = 0.15 + 1 * global.Upgrades.Turret_04.Damage; // Turret's bullet Damage
AtackDuration = 150 + 15 * global.Upgrades.Turret_04.Duration; // Duration of continuous atack
Cooldown = 200 - 20 * global.Upgrades.Turret_04.Speed; // Cooldown to fire

// Stop the turret anumation
image_index = 1;
image_speed = 0;
// Instanciate the whips to atack
MyWhip = instance_create_layer(x + lengthdir_y(sprite_height/2, image_angle),
								y - lengthdir_x(sprite_height/2, image_angle), "Shoots", Obj_Whip);
MyWhip.image_angle = id.image_angle;
MyWhip.Damage = TurretDamage;

// alarm[0] = Cooldown; // Start the cooldown to fire