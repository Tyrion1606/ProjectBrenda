/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

#region // Turret settings
TurretCollor = c_green;
AtackRange = 0;	// Radius at which the turret can shoot

// upgrades
TurretDamage = 0.15 + 1 * global.Upgrades.Turret_04.Damage; // Turret's bullet Damage
//FireDistance = 1 + 1 * global.Upgrades.Turret_04.FireDistance; // Turrets's fire distance
FireDistance = 3;
#endregion

#region // Fire settings
// Stop the turret anumation
image_speed = 0;
image_index = 1;

// Instanciate the whips to atack
instance_create_layer(x + lengthdir_y(sprite_height/2, image_angle),
					  y - lengthdir_x(sprite_height/2, image_angle),
					  "Shoots", Obj_Whip, 
					  { 
						Damage : id.TurretDamage,
						image_angle : id.image_angle,
						image_yscale : id.FireDistance
					  });
#endregion


