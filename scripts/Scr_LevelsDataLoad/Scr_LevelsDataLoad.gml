// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_LevelsDataLoad(){
	if(file_exists("WaveData.txt")){
		var file = file_text_open_read("WaveData.txt");
		var JsonString = file_text_read_string(file);
		file_text_close(file);
		var ArrayReturn = json_parse(JsonString);
		show_debug_message("[Scr_LevelsDataLoad]" + string(ArrayReturn));
		return ArrayReturn;
	} else {
		return 0;
	}
}