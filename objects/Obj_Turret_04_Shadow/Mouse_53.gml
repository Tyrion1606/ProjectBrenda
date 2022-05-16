
if(Selected and AntibugDelay <= 0 and not PlaceTurret){
	// By clicking, and After the AntibugDelay(explaned in 'Create')
	// and Doublecheking the Selected by redundance
	// Prepare the shadow to set turret's direction
	if(global.Dinheiros >= TurretValue){
		global.Dinheiros -= TurretValue;
		PlaceTurret = true;
		Selected = false;
	}
}
else if(PlaceTurret){
	// Creates a turrent on the shadow direction 
	
	var Turret = instance_create_layer(id.x, id.y, "Instances", TurretObject);
	Turret.image_angle = id.image_angle;
	id.image_angle = 0;
	
	PlaceTurret = false;
	Selected = true;
}
