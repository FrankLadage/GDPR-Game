/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;
grv = 0.3;
done = 0;


image_index = 0;
image_speed = 1;

audio_stop_all();
audio_play_sound(sn_Defeated,10,false);
//game_set_speed(30,gamespeed_fps); // Slomo

with (obj_camera) follow = other.id;


