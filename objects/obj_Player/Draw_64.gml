/// @description Insert description here
// You can write your code in this editor

// Health bar
hpstartx = 25;
hpxoffset = 35;
hpstarty = 25;

for (var i = 0; i< hp; i++) {
	draw_sprite(s_live, 0, hpstartx+(hpxoffset*i), hpstarty);
}

// Score
scorestartx = 60;
scorestarty = 100;

draw_text(scorestartx, scorestarty, playerscore);