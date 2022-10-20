// Returns the levels data
function Scr_LevelsDataLoad(){
	if(file_exists("WaveData.txt")){
		var file = file_text_open_read("WaveData.txt");
		var JsonString = file_text_read_string(file);
		file_text_close(file);
		var ArrayReturn = json_parse(JsonString);
		//how_debug_message("[Scr_LevelsDataLoad]" + string(ArrayReturn));
		return ArrayReturn;
	} else {
		var NullArray = array_create(0);
		return NullArray;
	}
}