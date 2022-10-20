Selected = false;
move_snap(15, 32);
id.x += 7;

Type = "Obj_Enemy";

var DeservesToLive = true;
Position = id.x-Obj_TimeLine.x;

if variable_global_exists("EnemyArray"){
	var i = 0;
	repeat(array_length(global.EnemyArray)){
		show_debug_message(" " + string(i) + " | " + string(global.EnemyArray))
		var temp = global.EnemyArray[i];
		show_debug_message("temp: " + string(temp));
		if(temp.Position == Position){
			DeservesToLive = false;
			//show_debug_message("Foi destruido");
			instance_destroy(id);
		}
		i++;
	}
	if(DeservesToLive){
		//show_debug_message("não foi destruido")
		array_push(global.EnemyArray,id);
	}
} else{
	//show_debug_message("é o primeiro a ser colocado")
	global.EnemyArray[0] = id;
}
/*
var i = 0;
repeat(ds_list_size(global.EnemyList)){
	var temp = ds_list_find_value(global.EnemyList,i);
	if(temp.Position == Position){
		DeservesToLive = false;
		show_debug_message("Foi destruido");
		instance_destroy(id);
	}
	i++;
}

if(DeservesToLive){
	show_debug_message("não foi destruido")
	//ds_list_add(global.EnemyList,id);
	array_push(global.EnemyList,id);
}
*/