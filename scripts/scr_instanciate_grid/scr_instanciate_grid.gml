
function Scr_instanciate_grid(Object, Quantity, Start_x = 0, Start_y = 0, Separation = 1, Layer = "Instances"){
	var temp_x = Start_x;
	var temp_y = Start_y;
	
	var i = 0;
	repeat(Quantity){
		var ThisInstance = instance_create_layer(temp_x, temp_y, Layer, Object, {Index : i});
		
		with (ThisInstance){
			image_speed = 0;
			image_index = i;
		}
		
		i++
		temp_x += ThisInstance.sprite_width + Separation;
	}
}