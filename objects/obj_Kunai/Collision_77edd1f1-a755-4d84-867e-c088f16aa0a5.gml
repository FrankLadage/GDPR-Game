/// @description Hitting enemy

//other is in dit geval Monster Blogger.
with (other)
{
	hp--;
	flash = 30;
	hitfrom = other.direction;
	audio_play_sound(sn_Hit,2,false);
}

instance_destroy();