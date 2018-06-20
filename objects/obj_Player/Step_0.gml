/// @description Insert description here
//TODO Fix animation to finish, and include jump throw animation && run throw.
//TODO Overgang van run_throw naar jump_throw

//Get player input
if(hascontrol)
{
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_space);
} else 
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

canjump -= 1;
if (canjump > 0) && (key_jump)
{
	vsp = -8 - global.jumpeffect;
	canjump = 0;
}


if (place_meeting(x,y+1,obj_collision)) && (isjumping == 2)
{
	audio_play_sound(sn_Landing,4,false);
	isjumping = 1;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_collision))
{
	while(!place_meeting(x+sign(hsp),y,obj_collision))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_collision))
{
	image_speed = 1;
	sprite_index = s_Player_Idle_Right;
	
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
	isjumping = 2;
	sprite_index = s_Player_Jump_Right;
	image_speed = 0;
	//if(sign(vsp) > 0) sprite_index = s_Player_Idle_Right; else sprite_index = s_Player_Jump_Right
} else 
{
	canjump = 10;
	image_speed = 1;
	if(keyboard_check(vk_control)) && (firingdelay == 0)
	{
		audio_play_sound(sn_Attack,10,false);
		sprite_index = s_Player_Throw;
	}
		else
	{
		if (hsp == 0)
		{
			sprite_index = s_Player_Idle_Right;
		} 
			else
		{
			sprite_index = s_Player_Run_Right;
		}
	}
}

if (hsp != 0) image_xscale = sign(hsp);


if(keyboard_check(vk_control)) && (firingdelay == 0) && (global.ammo > 0)
{
	//rate of firel, higher number = lower fire speed
	firingdelay = 45;
	global.ammo--;
	with (instance_create_layer(x,y,"Kunai",obj_Kunai))
	{
		if(other.image_xscale > 0)
		{
			speed = 10;
			image_angle = 270;
		} 
			else 
		{
			speed = -10;
			image_angle = 90;
		}
		
		//direction = other.image_angle
		//image_angle = direction;
	}
}


if(place_meeting(x,y,obj_Monster)) && (hpcooldown == 0)
{
	hp--;
	flash = 30;
	hpcooldown = 90;
	audio_play_sound(sn_Hit,10,false);
}



if(hp == 0)
{
	vsp = -4;
	self.y -= 30;
	instance_change(obj_Player_Dead,true);

	if (sign(hsp) != 0) image_xscale = sign(hsp);
}

//Cooldowns
if(hpcooldown > 0) hpcooldown--;
if(firingdelay > 0) firingdelay--;