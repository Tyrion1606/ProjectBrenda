/// @description Insert description here

if !variable_instance_exists(id, "TurretValue")
    TurretValue = 0;
if !variable_instance_exists(id, "TurretObject")
    TurretObject = Obj_Turret;

AntibugDelay = 20;		// It inhibits the bug that creates a turret just after clicking the 
						// instantiator by waiting a time before it can create a turret

//Selected = true;		// If selected = true, it will follow the mouse
id.image_alpha = 0.5;	// seting the 'alpha < 1' will mage it gosthly by give it somw transparency


// Pre-calculate the margins where you can move the shadow to put a turret:
X_MarginMin = 144+(sprite_width/2);
X_MarginMax = 144+1024-(sprite_width/2);
Y_MarginMin = sprite_height/2;
Y_MarginMax = room_height-(sprite_height/2);

Selected = true;	// verificar se gera algum bug definir isso aqui ao invés de setar no instanciator 


SnapSelection = 2	// Selects what Snap system to use, based on the Index above:
					// '0' = GameMaker's Snap + half size correction (it moves half Square)
					// '1' = Álex's Snap (it moves half Square only if the mouse is right betheen 2 squares)
					// '2' = Base Based Snap (It follows the Base position, that have it origin on [0,0], so it can use GameMaker's Snap jusf for full Squares)