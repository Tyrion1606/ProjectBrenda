/// @description Show the points

var LastFont = draw_get_font();
draw_set_font(Fnt_Points);
draw_text_color(x, y, "Points: " + string(global.Upgrades.Points), c_white, c_white, c_red, c_red, 1);
draw_set_font(LastFont);