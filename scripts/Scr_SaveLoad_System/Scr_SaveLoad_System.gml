function Scr_Save(){
	var file, JsonString;
	
	#region Upgrades
		show_debug_message("\n[Scr.Save] DADOS DE UPGRADES SALVOS: " + string(global.Upgrades));
		JsonString = json_stringify(global.Upgrades);
		file = file_text_open_write("UpgradesData.txt");
		file_text_write_string(file, JsonString);
		file_text_close(file);
	#endregion
	
	#region Progression
		show_debug_message("[Scr.Save] DADOS DE PROGRESSO SALVOS: " + string(global.EnabledLevelsArray));
		JsonString = json_stringify(global.EnabledLevelsArray);
		file = file_text_open_write("Progression.txt");
		file_text_write_string(file, JsonString);
		file_text_close(file);
	#endregion
}

function Scr_Load(){
	var file, JsonString;
	
	if (file_exists("UpgradesData.txt") and file_exists("Progression.txt")){	// Se o arquivo de save existe, carrega
		file = file_text_open_read("UpgradesData.txt");
		JsonString = file_text_read_string(file);
		file_text_close(file);
		global.Upgrades = json_parse(JsonString);
		show_debug_message("[Scr.Load] DADOS DE UPGRADES CARREGADOS:\n" + string(global.Upgrades));
		
		
		file = file_text_open_read("Progression.txt");
		JsonString = file_text_read_string(file);
		file_text_close(file);
		global.EnabledLevelsArray = json_parse(JsonString);
		show_debug_message("[Scr.Load] DADOS DE PROGRESSO CARREGADOS:\n" + string(global.EnabledLevelsArray));
		
	} else {	// Se o arquivo de save NÃO existe
		show_message("Arquivo de save não existe");
	}
}
