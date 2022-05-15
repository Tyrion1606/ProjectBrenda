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

if(collision_circle(id.x, id.y, AtackRange,Obj_Enemy,false,true) == noone){
	Firing = false;
} else {
	Scr_Path_SearchFurtherEnemy(AtackRange);
	Firing = true;
	
}

#endregion
