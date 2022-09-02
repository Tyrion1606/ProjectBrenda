		/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

#region // Turret settings
TurretCollor = c_green;
AtackRange = 0;	// Radius at which the turret can shoot

// upgrades
TurretDamage = 0.15 + 0.2 * global.Upgrades.Turret_04.Damage; // Turret's bullet Damage
FireDistance = 1 + 0.2 * global.Upgrades.Turret_04.FireDistance; // Turrets's fire distance
#endregion

#region // Fire settings
// Stop the turret anumation
image_speed = 0;
image_index = 1;

// Instanciate the whips to atack
instance_create_layer(id.x + lengthdir_x(sprite_height/2, image_angle),
					  id.y + lengthdir_y(sprite_width/2, image_angle),
					  "Shoots", Obj_Laser, 
					  { 
						Damage : id.TurretDamage,
						image_angle : id.image_angle,
						image_xscale : id.FireDistance
					  });
#endregion


