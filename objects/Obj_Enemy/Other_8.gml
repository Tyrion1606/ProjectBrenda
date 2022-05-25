/// @description Deals damage to to player's shield

//room_persistent = true;
//room_goto(LoseScreen);

Obj_MainTower.HP--;
with(Obj_MainTower){
	if(HP <= 0 and !LoseTrigger){
		LoseTrigger = true;
		show_debug_message("PERDEU!!");
	}
}
instance_destroy(id);
