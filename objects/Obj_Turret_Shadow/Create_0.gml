/// @description Insert description here

if !variable_instance_exists(id, "TurretValue")
    TurretValue = 0;
if !variable_instance_exists(id, "TurretObject")
    TurretObject = Obj_Turret;

AntibugDelay = 20;		// It inhibits the bug that creates a turret just after clicking the 
						// instantiator by waiting a time before it can create a turret

Selected = false;		// If selected = true, it will follow the mouse
id.image_alpha = 0.5;	// seting the 'alpha < 1' will mage it gosthly by give it somw transparency


// Pre-calculate the margins where you can move the shadow to put a turret:
X_MarginMin = sprite_width;
X_MarginMax = room_width*0.8;
Y_MarginMin = sprite_height;
Y_MarginMax = room_height;
