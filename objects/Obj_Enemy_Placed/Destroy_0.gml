/*
var MyArrayPosition = ds_list_find_index(global.EnemyList, id);
ds_list_delete(global.EnemyList, MyArrayPosition);
*/
for(var i = 0 ; i < array_length(global.EnemyArray) ; i++){
	if(global.EnemyArray[i] == id){
		array_delete(global.EnemyArray, i, 1);
	}
}