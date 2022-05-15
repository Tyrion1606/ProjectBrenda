/// @description Insert description here
// You can write your code in this editor

var _EnemiesList = ds_list_create();
var _num = collision_circle_list(id.x, id.y, 100, Obj_Enemy, false, false, _EnemiesList, false);

if (_num > 0){
	for (var i = 0; i < _num; ++i;){
		_EnemiesList[| i].HP -= 5;
	}
}
ds_list_destroy(_EnemiesList);
