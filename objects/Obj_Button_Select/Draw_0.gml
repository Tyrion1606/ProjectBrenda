draw_self();

if(DrawFlag){
	draw_rectangle_color(id.x, id.y+sprite_height, id.x+sprite_width,id.y+sprite_height*i,c_dkgrey,c_dkgrey,c_dkgrey,c_dkgrey,false);
	if(SquareCounter < ResolutionsNumbers){
		SquareCounter++;
	}
} else{
	SquareCounter = 0;
}
