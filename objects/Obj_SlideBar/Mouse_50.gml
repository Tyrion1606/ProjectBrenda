/// @description 

if(Flag_Selected){
	var Border = (id.sprite_width/20)
	Value = ((mouse_x-(id.x+Border))/(sprite_width-(2*Border)));
	Value = clamp(Value,0,1);
	Position_Slider = (Value*(id.sprite_width*0.90))+id.x+(id.sprite_width/20);
}