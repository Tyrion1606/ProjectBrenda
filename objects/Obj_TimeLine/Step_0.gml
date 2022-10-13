#region Auto-Resize Timeline
if ((id.x+sprite_width) < room_width+256){
	image_xscale+=2;
	//show_debug_message("[Obj_TimeLine] Tamanho da timeline cresceu para: " + string(sprite_width));
}else if ((id.x+sprite_width) > room_width+512){
	image_xscale-=2;
	//show_debug_message("[Obj_TimeLine] Tamanho da timeline diminuiu para: " + string(sprite_width));
}
#endregion

