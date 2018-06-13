/// @description Insert description here
// You can write your code in this editor

// Health bar
hpstartx = 25;
hpxoffset = 35;
hpstarty = 25;

for (var i = 0; i< hp; i++) {
	draw_sprite(s_ItemList, 3, hpstartx+(hpxoffset*i), hpstarty);
}

// Score
scorestartx = 1000;
scorestarty = 70;

draw_text_transformed_colour(scorestartx - 70, scorestarty, "Score: ", 1.1, 1.1, 0, c_white, c_white, c_white, c_white, 1.0);
draw_text_transformed_colour(scorestartx, scorestarty, global.playerscore, 1.1, 1.1, 0, c_white, c_white, c_white, c_white, 1.0);

// Ammo
ammostartx = 1000;
ammostarty = 120;

draw_text_transformed_colour(ammostartx - 70, ammostarty, "Ammo: ", 1.1, 1.1, 0, c_white, c_white, c_white, c_white, 1.0);
draw_text_transformed_colour(ammostartx, ammostarty, global.ammo, 1.1, 1.1, 0, c_white, c_white, c_white, c_white, 1.0);
