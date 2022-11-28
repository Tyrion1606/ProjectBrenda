#region Level Cleaned
if(global.LevelCleaned){
	global.LevelCleaned = false;
	show_debug_message("[G.C.] passou de fase");
	global.EnabledLevelsArray[global.CurrentLevel+1] = true;
	global.CurrentLevel++;
	
	
	// Game End Check
	if(global.CurrentLevel >= array_length(global.LevelDataArray)){
		show_debug_message("[G.C.] Zerou o jogo!!");
		room_goto(EndGame);
		show_message("[G.C.] Você é Brabo!!\n\n Não fizemos mais fases, este é só um protótipo \n se quer mais, faz o pix :)");
		game_end();
	} else {
		//Scr_Save();
		Fn_Data_Save_txt("UpgradesData.txt",global.Upgrades)	// Saves Upgrades Data
		Fn_Data_Save_txt("Progression.txt",global.EnabledLevelsArray)	// Saves aready cleaned Levels Data
		room_goto(UpgradeScreen);
	}
}
#endregion

#region Lost
if(global.LostTrigger){
	global.LostTrigger = false;
	show_debug_message("[G.C.] PERDEU :(");
	room_goto(LostScreen)
}
#endregion

//show_debug_message("Room Persistence: " + string(room_persistent));