//Scr_Load()

global.Upgrades = Fn_Data_Load_txt("UpgradesData.txt")	// Carrega os dados de Upgrades
global.EnabledLevelsArray = Fn_Data_Load_txt("Progression.txt")	// Carrega os dados de progresso

global.CurrentLevel = Scr_TakeNextLevel(global.EnabledLevelsArray);
room_goto(UpgradeScreen);	// Vai para a tela de Upgrade
