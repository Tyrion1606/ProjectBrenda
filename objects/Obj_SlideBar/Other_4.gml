/// @description 

if (is_undefined(Value)){
	show_debug_message("[Obj_SlideBar] Please, Define the \"Reference\" variable");
}
Position_Slider = (Value*(id.sprite_width*0.90))+id.x+(id.sprite_width/20);