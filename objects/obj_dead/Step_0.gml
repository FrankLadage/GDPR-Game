/// @description Insert description here
// You can write your code in this editor

if(done == 0)
{
	vsp = vsp + grv;

	//Horizontal Collision
	if (place_meeting(x+hsp,y,obj_collision))
	{
		while(!place_meeting(x+sign(hsp),y,obj_collision))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	if (place_meeting(x+hsp,y,obj_collision_monster))
	{
		if(hsp > 0)
		{
			hsp = -1;
		} else 
		{
			hsp = 1;
		}
	}

	x = x + hsp;

	//Vertical Collision
	if (place_meeting(x,y+vsp,obj_collision))
	{
		image_speed = 1;
	
		if (vsp > 0) 
		{
			done = 1;
		}
		while(!place_meeting(x,y+sign(vsp),obj_collision))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;
}