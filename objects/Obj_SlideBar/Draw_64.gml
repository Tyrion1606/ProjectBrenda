/// @description 
draw_self()
draw_sprite(Spr_SlideBar_Slider,0,Position_Slider,id.y);

draw_set_font(Fnt_General_LoRes);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_transformed(id.x+sprite_width/2, id.y-sprite_height, Label, LabelSize, LabelSize, 0);
draw_set_valign(fa_top);
draw_set_halign(fa_left);



