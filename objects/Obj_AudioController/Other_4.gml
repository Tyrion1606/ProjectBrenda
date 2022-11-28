/// @description 

#region BGM
audio_group_stop_all(BG_Music);
switch(room){
	case SettingsRoom:
		if !audio_is_playing(Snd_noise){
			audio_play_sound(Snd_noise,1,true,1*Audio_Volume.BGM,30);
		}
	break;
	case MainMenu:
		if !audio_is_playing(Snd_Retro_Game_Music_Title_Screen){
			audio_play_sound(Snd_Retro_Game_Music_Title_Screen,1,true,1*Audio_Volume.BGM,0);
		}
	break;
}
#endregion