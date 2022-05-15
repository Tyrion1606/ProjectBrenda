
if(Selected and AntibugDelay <= 0 ){
	// By clicking, and After the AntibugDelay(explaned in 'Create')
	// and Doublecheking the Selected by redundance
	// Creates a turrent on the shadow position 
	if(global.Dinheiros >= TurretValue){
		instance_create_layer(id.x, id.y, "Instances", TurretObject);
		global.Dinheiros -= TurretValue;
	}

}


