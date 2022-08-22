
Scr_Load();	//Carrega os dados de progresso
var TempRoom = ds_stack_pop(global.TempRoomStack)
room_goto(TempRoom);
global.RestartFlag = true;