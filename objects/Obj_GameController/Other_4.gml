/// @description 

// Ajusta o X offset caso haja uma camada de PCB
if layer_exists(layer_get_id("PCB")){
	x_Offset = layer_get_x(layer_get_id("PCB"));
} else {
	x_Offset = 0;
}

