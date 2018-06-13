/// @description Insert description here
// You can write your code in this editor

if (hp <= 0)
{
	with(instance_create_layer(x,y,layer,obj_dead))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-4;
		//haal * other.size weg voor kleine grafsteen.
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
	}
	instance_destroy();
	obj_Player.playerscore = obj_Player.playerscore + 5;
}