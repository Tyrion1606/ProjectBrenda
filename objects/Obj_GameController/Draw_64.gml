/// @description Draw the Grid

// Ajusta proporções para tela do constructor
if (room == Rm_Construct and instance_exists(Obj_LevelEditorController)){
	GridSize_ModFactor = Obj_LevelEditorController.PCBResizeValue;
} else{
	GridSize_ModFactor = 1;
}



var MapWidth = sprite_get_width(Spr_PCB_blue)*GridSize_ModFactor;
var MapHeigth = sprite_get_height(Spr_PCB_blue)*GridSize_ModFactor;
var X_MapMin = x_Offset;
var X_MapMax = x_Offset + MapWidth;
var Y_MapMin = 0;
var Y_MapMax = MapHeigth;
var gridSize = 48*GridSize_ModFactor;
var gridColor = c_black;

if global.GridShow {
	var i;
	for(i = X_MapMin; i < (X_MapMax - gridSize); i += gridSize)
		draw_line_color(i + gridSize, Y_MapMin, i + gridSize, Y_MapMax, gridColor, gridColor);
		
	for(i = Y_MapMin; i < (Y_MapMax - gridSize); i += gridSize)
		draw_line_color( X_MapMin, i + gridSize, X_MapMax, i + gridSize, gridColor, gridColor);
}

