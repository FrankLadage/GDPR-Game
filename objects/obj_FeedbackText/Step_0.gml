/// @description Insert description here
// You can write your code in this editor

letters += spd;
text_current = string_copy(feedback_txt,1,floor(letters));

draw_set_font(fMenu);
if(h == 0) h = string_height(feedback_txt);
w = string_width(text_current);