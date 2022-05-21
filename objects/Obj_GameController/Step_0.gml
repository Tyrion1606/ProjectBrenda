#region Settings
if(global.GridShow and room != LoseScreen and room != MainMenu and room != PauseRoom and room != SettingsRoom and room != UpgradeScreen){
	Scr_GridDisplay(32);	//Calls the Script that creates a grid on the Room
}
#endregion

#region Level Cleaned
if(global.LevelCleaned){
	show_debug_message("passou da fase");
	global.Level++;
}
#endregion
