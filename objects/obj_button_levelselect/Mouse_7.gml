/// @description Insert description here
if (global.EnabledLevelsArray[id.Index]){
	ds_stack_clear(global.TempRoomStack);	// limpa a stack que, caso contratio guardaria a room "Main menu para sempre"
	room_goto(UpgradeScreen);
}