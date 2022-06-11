function Scr_TakeNextLevel(LevelArray){
	var i = 0;
	LastEnabled = 0;
	repeat(array_length(LevelArray)){
		if (LevelArray[i]){
			LastEnabled = i;
		}
		i++;
	}
	return LastEnabled;
}