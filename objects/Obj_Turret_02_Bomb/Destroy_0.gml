var _EnemiesList = ds_list_create();
var _num = collision_circle_list(id.x, id.y, DamageRange, Obj_Enemy, false, false, _EnemiesList, false);

if (_num > 0){
	for (var i = 0; i < _num; ++i;){
		_EnemiesList[| i].HP -= Damage;
	}
}
ds_list_destroy(_EnemiesList);

// Instantiates the bomb explosion animation
var Explosion = instance_create_layer(id.x, id.y, "Shoots", Obj_Bomb_Impact);
Explosion.image_xscale = DamageRange / 100;
Explosion.image_yscale = DamageRange / 100;