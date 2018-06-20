/// @description Insert description here
// You can write your code in this editor
draw_self();

if (flash > 0)
{
	flash--;
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_red,1);

}