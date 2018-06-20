/// @description Insert description here
// You can write your code in this editor

// Get nearest instance
var nearest = instance_nearest(obj_Player.x, obj_Player.y, obj_StandingObject);

if(keyboard_check(vk_enter)) {
	
	// Not enough points
	if(global.playerscore < nearest.price && (nearest.shop_id == "ammo" || nearest.shop_id == "hp" || nearest.shop_id == "speed") && nearest.purchase_delay == 0) {
		audio_play_sound(sn_Bad, 10, false);
	}	
	
	// Ammo
	if(global.playerscore >= nearest.price && nearest.shop_id == "ammo" && nearest.purchase_delay == 0) {
		audio_play_sound(sn_Good, 10, false);
		nearest.purchase_delay = 50;
		global.ammo += 10;
		global.playerscore -= nearest.price;
	} 
	
	// HP
	else if(global.playerscore >= nearest.price && nearest.shop_id == "hp" && nearest.purchase_delay == 0) {
		audio_play_sound(sn_Good, 10, false);
		nearest.purchase_delay = 50;
		obj_Player.hp += 1;
		global.playerscore -= nearest.price;
	}
	
	// Speed
	else if(global.playerscore >= nearest.price && nearest.shop_id == "speed" && nearest.purchase_delay == 0) {
		audio_play_sound(sn_Good, 10, false);
		nearest.purchase_delay = 50;
		obj_Player.walksp += 1;
		global.playerscore -= nearest.price;
	}
	
	// Jump
	else if(global.playerscore >= nearest.price && nearest.shop_id == "jump" && nearest.purchase_delay == 0) {
		audio_play_sound(sn_Good, 10, false);
		nearest.purchase_delay = 50;
		global.jumpeffect += 0.5;
		global.playerscore -= nearest.price;
	}
}
	
if(nearest.purchase_delay > 0) nearest.purchase_delay--;