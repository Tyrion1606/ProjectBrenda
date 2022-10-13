draw_set_font(Fnt_General_LoRes);
draw_set_color(c_black);
draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
draw_text_transformed(id.x+sprite_width/2, id.y+OffSet+sprite_height/2, Value, 2, 2, 0);	// Escreve o valor no painel
draw_set_color(c_white);
draw_text_transformed(id.x+sprite_width/2, id.y-sprite_height/2, Label, 1, 1, 0);	// Escreve um titulo acima do painel
draw_set_halign(fa_left);
draw_set_valign(fa_top);
