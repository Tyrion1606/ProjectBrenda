var TurretsInventoryArray =[Obj_Turret_01_Instanciator,
							Obj_Turret_02_Instanciator,
							Obj_Turret_03_Instanciator,
							Obj_Turret_04_Instanciator,
							Obj_Turret_05_Instanciator]
var xOffSet = 26;
var yOffSet = 48;
var ySpace = 108;

var i = 0;
repeat(5){
	instance_create_layer(id.x+xOffSet, (id.y+yOffSet)+(i*ySpace), "GUI", TurretsInventoryArray[i]);
i++;
}