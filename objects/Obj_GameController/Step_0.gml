#region Settings
if(global.GridShow and room != LoseScreen and room != MainMenu and room != PauseRoom and room != SettingsRoom and room != UpgradeScreen){
	Scr_GridDisplay(32);	//Calls the Script that creates a grid on the Room
}
#endregion

#region Level Cleaned
if(global.LevelCleaned){
	global.LevelCleaned = false;
	show_debug_message("[G.C.] passou da fase");
	global.Level++;
	
	
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
