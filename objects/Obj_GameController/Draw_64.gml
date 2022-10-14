/// @description Draw the Grid

var MapWidth = sprite_get_width(Spr_MapPlaceHolder);
var MapHeigth = sprite_get_height(Spr_MapPlaceHolder);
var X_MapMin = 144;
var X_MapMax = 144 + MapWidth;
var Y_MapMin = 0;
var Y_MapMax = MapHeigth;
var gridSize = 48;
var gridColor = c_black;

if global.GridShow {
	for(i = X_MapMin; i < (X_MapMax - gridSize); i += gridSize)
		draw_line_color(i + gridSize, Y_MapMin, i + gridSize, Y_MapMax, gridColor, gridColor);
		
	for(i = Y_MapMin; i < (Y_MapMax - gridSize); i += gridSize)
		draw_line_color( X_MapMin, i + gridSize, X_MapMax, i + gridSize, gridColor, gridColor);
}

