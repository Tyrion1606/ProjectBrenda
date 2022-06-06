
#region Level Cleaned
if(global.LevelCleaned){
	global.LevelCleaned = false;
	show_debug_message("[G.C.] passou de fase");
	global.CleanedLevelsArray[global.CurrentLevel] = true;
	global.CurrentLevel++;
	
	
	// Game End Check
	if(global.Level >= array_length(global.RoomsArray)){
		show_debug_message("[G.C.] Zerou o jogo!!");
		room_goto(EndGame);
		show_message("[G.C.] Você é Brabo!!\n\n Não fizemos mais fases, este é só um protótipo \n se quer mais, faz o pix :)");
		game_end();
	} else {
		Scr_Save();
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


