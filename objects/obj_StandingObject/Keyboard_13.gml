/// @description Insert description here
// You can write your code in this editor

// Purchase item
if(global.playerscore >= price) {
	global.ammo = global.ammo + 10;
	global.playerscore = global.playerscore - price;
}