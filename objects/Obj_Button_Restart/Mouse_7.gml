//Scr_Load();	//Carrega os dados de progresso

global.Upgrades = Fn_Data_Load_txt("UpgradesData.txt")	// Carrega os dados de Upgrades
global.EnabledLevelsArray = Fn_Data_Load_txt("Progression.txt")	// Carrega os dados de progresso

var TempRoom = ds_stack_pop(global.TempRoomStack)
if (room == LostScreen){
	TempRoom = Room1;
}
room_goto(TempRoom);
global.RestartFlag = true;