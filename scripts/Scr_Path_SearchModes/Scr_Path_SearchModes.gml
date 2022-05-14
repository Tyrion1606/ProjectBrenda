// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_Path_SearchFurtherEnemy(){
	if (instance_exists(Obj_Enemy)){
		var EnemyList = ds_list_create();
		var Further;
		collision_circle_list(id.x, id.y, AtackRange, Obj_Enemy, false, true, EnemyList,false);
		if (!ds_list_empty(EnemyList)){
			Further = ds_list_find_value(EnemyList, 0);
			for (var j = 1 ; j < ds_list_size(EnemyList) ; j++){
				if (instance_exists(Further)){
					if(ds_list_find_value(EnemyList, j).path_position > Further.path_position){
						Further = ds_list_find_value(EnemyList, j);
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
}