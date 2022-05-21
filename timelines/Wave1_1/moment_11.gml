///@description EnemyTime
var tempEnemy = instance_create_layer(0, 0, "Instances", Obj_Enemy);
with(tempEnemy){
	path_start(Path1, MoveSpeed, path_action_stop, true); // Starts to move ABSOLUTELY in the path and stops at the end.
}
