
// Instanciate an enemy after certain times given in 'frames'
i++;
if(i > 100){
	var tempEnemy = instance_create_layer(5,5,"Instances",Obj_Enemy);
	i=0;
}
