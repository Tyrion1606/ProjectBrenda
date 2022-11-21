/// @description 

if(Flag_Changes){
	audio_master_gain(Audio_Volume.Master);
	audio_group_set_gain(BG_Music,Audio_Volume.BGM,1000)
	Flag_Changes = false;
	Fn_Data_Save_ini("Game_Settings",Audio_Volume,"", "Audio");
}
