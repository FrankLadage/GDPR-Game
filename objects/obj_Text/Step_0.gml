/// @description Progress Test

letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fMenu);
if(h == 0) h = string_height(text);
w = string_width(text_current);

if(instance_exists(obj_Player)){
//Destroy when done
if (letters >= length) && ((keyboard_check_pressed(vk_f1)) or (keyboard_check_pressed(vk_f2))) && (room != shop1)
{
	if(keyboard_check_pressed(whichkeyanswer))
	{
		instance_destroy();
		global.playerscore = global.playerscore + 10;
		audio_play_sound(sn_Good,10,false);
		//show feedback
		var num = sign_case_num;
		with (instance_create_layer(x, y, layer, obj_FeedbackText)){
			feedback_txt = "Goed!\n\n"
			switch(num){
				case 1:
					feedback_txt += "\n\nAVG geldt voor alle mensen wonend in de EU ongeacht waar ze zijn of waar de bedrijven die hun gegevens hebben zijn.";
			}
		}
	}else{
		instance_destroy();
		audio_play_sound(sn_Bad,10,false);
		//show feedback
		var num = sign_case_num;
		with (instance_create_layer(x, y, layer, obj_FeedbackText)){
			feedback_txt = "Fout!\n\n"
			switch(num){
				case 1:
					feedback_txt += "AVG geldt voor alle mensen wonend in de EU ongeacht waar ze zijn of waar de bedrijven die hun gegevens hebben zijn.";
			}
		}
	}
	
	
	//var nearestSignPost = instance_nearest(x, y, obj_Signpost);
	var nearestSignPost = instance_nearest(obj_Player.x, obj_Player.y, obj_Signpost);
	instance_destroy(nearestSignPost);
	//with (obj_camera) follow = obj_Player;
	}
	
}