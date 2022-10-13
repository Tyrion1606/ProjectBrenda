draw_self();

ResolutionsNumbers = 4;
if(DrawFlag){
	draw_rectangle_color(id.x, id.y+sprite_height, id.x+sprite_width,id.y+sprite_height*i,c_dkgrey,c_dkgrey,c_dkgrey,c_dkgrey,false);
	if(i < ResolutionsNumbers){
		i++;
	}
} else{
	i = 0;
}