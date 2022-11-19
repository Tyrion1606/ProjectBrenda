/// @function						Fn_Data_Save_txt(File_Name, Data);
/// @param {string}		File_Name	The name of the Archive to Save the data on
/// @param {Data}		Data		The Data to save on it
/// @description					Saves Data on a TXT file
function Fn_Data_Save_txt(File_Name, Data){
	var JsonString = json_stringify(Data);		//Turns the data into a Json String
	var file = file_text_open_write(File_Name);	//Open(create if necessary) a file to write on it
	file_text_write_string(file, JsonString);	//Writes the Json String on the file
	file_text_close(file);						//Closes the file
	show_debug_message("\n[Scr.Data_Save] DADOS SALVOS EM: " + File_Name);
}

/// @function						Fn_Data_Load_txt(File_Name);
/// @param {string}		File_Name	The name of the Archive to Load the data from
/// @description					Loads data from a TXT file
function Fn_Data_Load_txt(File_Name){
	if (file_exists(File_Name)){
		var file = file_text_open_read(File_Name);		//If it exists, Open the file for reading
		var JsonString = file_text_read_string(file);	//Read the Json string on the file
		file_text_close(file);							//Closes the file
		var Data = json_parse(JsonString);				//Decodify Json String into the original Data
		show_debug_message("[Scr.Data_Load] DADOS DE \"" + File_Name + "\" FORAM LIDOS:\n");
		return Data
	
	} else {	// Se o arquivo de NÃO existe
		show_message("Arquivo \"" + File_Name + "\" não existe");
	}
}

/// @function						Fn_Data_Save_ini(File_Name, Data);
/// @param {string}		File_Name	The name of the Archive to Save the data on
/// @param {Data}		Data		The Data to save on it
/// @param {String}		Key			The Name for the Data on the File(the key)
/// @description					Saves Data on a INI file
function Fn_Data_Save_ini(File_Name, Data, Key, Section = "General"){
	ini_open(File_Name);
	
	switch (typeof(Data)){
		case "struct":
			Fn_Scan_n_Save(File_Name, Data, "", Key);
		break;
		default:
			ini_write_string(Section, Key, Data);
		break;
	}
	
	
	ini_close();
}

function Fn_Scan_n_Save(File_Name, Data, Key, Section){
	var All_Struct_Variables_Name_Array = variable_struct_get_names(Data);	// Takes a list of all Struct Variables
	var Struct_Size = variable_struct_names_count(Data);	// Takes the number of variables
			
	for(var i = 0 ; i < Struct_Size ; i++)  {
		var Name = All_Struct_Variables_Name_Array[i];
		var Value = variable_struct_get(Data,Name)
				
		// PULA O "toString"
		if Name == "toString"{
			continue;
		}
		
		if is_struct(Value){
			Fn_Scan_n_Save(File_Name, Value, Key+Name, Section);
		} else {
			ini_write_string(Section, Key+"_"+Name, Value);
		}
		
	}

}