if(room != LoseScreen and room != MainMenu and room != PauseRoom and room != SettingsRoom and room != UpgradeScreen){
	global.Level++;
	Scr_SaveSystem();
	show_debug_message("Salvando na saída da room");
}
