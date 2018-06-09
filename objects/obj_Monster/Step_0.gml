/// @description Insert description here



vsp = vsp + grv;



//Horizontal Collision
if (place_meeting(x+hsp,y,obj_collision))
{
	while(!place_meeting(x+sign(hsp),y,obj_collision))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}

if (place_meeting(x+hsp,y,obj_collision_monster))
{
	
	hsp = -hsp;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_collision))
{
	image_speed = 1;
	sprite_index = spriteMonster;
	
	while(!place_meeting(x,y+sign(vsp),obj_collision))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;



//Animations
if (!place_meeting(x,y+1,obj_collision))
{
	sprite_index = spriteMonster;
	image_speed = 0;
	//if(sign(vsp) > 0) sprite_index = s_Player_Idle_Right; else sprite_index = s_Player_Jump_Right
} else 
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spriteMonster;
	} 
		else
	{
		sprite_index = spriteMonster;
	}
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;