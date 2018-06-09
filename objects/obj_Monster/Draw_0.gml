/// @description After hit flashes

draw_self();

if (flash > 0)
{
	flash--;
	
	
	if(hsp > 0)
	{
		draw_sprite_ext(spriteMonster,image_index,x,y,1*size,1*size,image_angle,c_red,1);
	} 
		else 
	{
		draw_sprite_ext(spriteMonster,image_index,x,y,-1*size,1*size,image_angle,c_red,1);
	}
}