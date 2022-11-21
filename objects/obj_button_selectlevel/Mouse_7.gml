ds_stack_push(global.TempRoomStack, room);	// stores the current room

//Scr_Load()	//Carrega os dados de progresso
global.Upgrades = Fn_Data_Load_txt("UpgradesData.txt")	// Carrega os dados de Upgrades
global.EnabledLevelsArray = Fn_Data_Load_txt("Progression.txt")	// Carrega os dados de progresso

room_goto(LevelSelection);	// Vai para a tela de Seleção de nivel
