/// @description Deals damage to to player's shield

//room_persistent = true;
//room_goto(LoseScreen);


with(Obj_MainTower){
	HP--;
	if(HP <= 0 and !global.LostTrigger){
		global.LostTrigger = true;
	}
}
instance_destroy(id);
