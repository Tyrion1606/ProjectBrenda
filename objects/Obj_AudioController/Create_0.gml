/// @description 

Flag_Changes = false;
//Audio_Master_Volume = 1;
//Audio_BGM_Volume = 1;

audio_group_load(BG_Music)

Audio_Volume = {
	Master : 1,
	BGM : 1,
	GUI: 1,
	Efects : 1
}
Fn_Data_Save_ini("arquivo",global.Upgrades, "Upgrades");
Fn_Data_Save_ini("arquivo2",5, "key");
