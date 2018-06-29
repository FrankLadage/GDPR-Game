audio_stop_all();
audio_play_sound(sn_level,100,true);
if(!instance_exists(obj_Player)){
instance_create_depth(285, 2850,0, obj_Player);
	global.playerscore = 0;
	global.ammo = 10;
}else{
obj_Player.x = 285;
obj_Player.y = 2850;
}