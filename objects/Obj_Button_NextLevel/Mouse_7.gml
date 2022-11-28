#macro _ROOM 0
Fn_Data_Save_txt("UpgradesData.txt",global.Upgrades)	// Saves Upgrades Data
Fn_Data_Save_txt("Progression.txt",global.EnabledLevelsArray)	// Saves aready cleaned Levels Data
room_goto(global.LevelDataArray[global.CurrentLevel][_ROOM]);
