Scr_Load()	//Carrega os dados de progresso
global.CurrentLevel = Scr_TakeNextLevel(global.EnabledLevelsArray);
room_goto(UpgradeScreen);	// Vai para a tela de Upgrade
