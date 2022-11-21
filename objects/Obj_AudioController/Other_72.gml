/// @description 

// To run when the Audiogroup is finished to load
if(audio_group_is_loaded(BG_Music) and !audio_is_playing(Snd_Retro_Game_Music_Title_Screen)){
	audio_play_sound(Snd_Retro_Game_Music_Title_Screen,1,true,1*Audio_Volume.BGM,0);
}
