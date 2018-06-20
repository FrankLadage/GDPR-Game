/// @description Draw box

var halfw = w * 0.5;

//Draw the box

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border,y-h-(border*6),x+halfw+border,y,15,15,false);
draw_sprite(s_Marker,0,x,y);
draw_set_alpha(1);

//Draw text
DrawSetText(c_white,fMenu,fa_center,fa_top);
draw_text_ext_transformed(x, y-h-(border*5), text_current, stringHeight, boxWidth, 0.8, 0.8, 0);
