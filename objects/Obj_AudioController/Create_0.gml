/// @description 

audio_group_load(BG_Music)

Audio_Volume = {
	Master : Fn_Data_Load_ini("Game_Settings", "Audio", "Master"),
	BGM : Fn_Data_Load_ini("Game_Settings", "Audio", "BGM"),
	Interface: Fn_Data_Load_ini("Game_Settings", "Audio", "Interface"),
	Effects : Fn_Data_Load_ini("Game_Settings", "Audio", "Effects")
}
Flag_Changes = true;
