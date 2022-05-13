#region Fire
// Creates the bulets with certain fire-rate and seting its speed
if (Firing){
	i++;
	if(i > 10){

		var Bullet = instance_create_layer(x,y,"Instances",Obj_Turret_01_Bullet);
		Bullet.direction = id.image_angle;
		Bullet.speed = BulletSpeed;
		i=0;
		
	}
}

#endregion

#region Look For the Enemy
if (instance_exists(Obj_Enemy)){
	var EnemyList = ds_list_create();
	var Further;
	collision_circle_list(id.x, id.y, AtackRange, Obj_Enemy, false, true, EnemyList,false);
	if (!ds_list_empty(EnemyList)){
		Further = ds_list_find_value(EnemyList, 0);
		for (var j = 1 ; j < ds_list_size(EnemyList) ; j++){
			if (instance_exists(Further)){
				if(ds_list_find_value(EnemyList, j).path_position > Further.path_position){
					Further = ds_list_find_value(EnemyList, j).path_position;
				}
			} else {
				break;
			}
		}
		if (instance_exists(Further)){
			image_angle = point_direction(id.x, id.y, Further.x, Further.y);
		}
	}
}
#endregion
