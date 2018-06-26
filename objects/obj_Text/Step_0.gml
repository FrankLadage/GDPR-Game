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
					feedback_txt += "AVG geldt voor alle mensen wonend in de EU ongeacht waar ze zijn of waar de bedrijven die hun gegevens hebben zijn.";
					break;
				case 2:
					feedback_txt += "Indien de informatie nodig is om te bepalen of bepaalde taken uitgevoerd kunnen worden (bijv. zwaar werk) mag deze worden opgevraagd.";
					break;
				case 3:
					feedback_txt += "Personen zijn goed beschermd en niet al uw persoonlijke gegevens mogen worden gebruikt.";
					break;
				case 4:
					feedback_txt += "Toestemming blijft geldig totdat u deze intrekt.\n\nHet bedrijf is verplicht u de mogelijkheid te bieden de toestemming in te trekken.";
					break;
				case 5:
					feedback_txt += "Uw toestemming voor het gebruiken van uw data moet zonder onnodige vertraging kunnen worden ingetrokken indien het bedrijf het niet meer nodig heeft voor wettelijke doeleinden";
					break;
				case 6:
					feedback_txt += "Om persoonlijke data aan een derde partij te sturen heeft een bedrijf expliciete toestemming nodig van de persoon waar de data over gaat.";
					break;
				case 7:
					feedback_txt += "Het verspreiden van persoonlijke informatie op publieke pagina's zoals social media is niet toegestaan.";
			}
		}
	}else{
		instance_destroy();
		audio_play_sound(sn_Bad,10,false);
		//show feedback
		var num = sign_case_num;
		with (instance_create_layer(x, y, layer, obj_FeedbackText)){
			feedback_txt = "Fout!\n\n";
			switch(num){
				case 1:
					feedback_txt += "AVG geldt voor alle mensen wonend in de EU ongeacht waar ze zijn of waar de bedrijven die hun gegevens hebben zijn.";
					break;
				case 2:
					feedback_txt += "Indien de informatie nodig is om te bepalen of bepaalde taken uitgevoerd kunnen worden (bijv. zwaar werk) mag deze worden opgevraagd.";
					break;
				case 3:
					feedback_txt += "Personen zijn goed beschermd en niet al uw persoonlijke gegevens mogen worden gebruikt.";
					break;
				case 4:
					feedback_txt += "Toestemming blijft geldig totdat u deze intrekt.\n\nHet bedrijf is verplicht u de mogelijkheid te bieden de toestemming in te trekken.";
					break;
				case 5:
					feedback_txt += "Uw toestemming voor het gebruiken van uw data moet zonder onnodige vertraging kunnen worden ingetrokken indien het bedrijf het niet meer nodig heeft voor wettelijke doeleinden";
					break;
				case 6:
					feedback_txt += "Om persoonlijke data aan een derde partij te sturen heeft een bedrijf expliciete toestemming nodig van de persoon waar de data over gaat.";
					break;
				case 7:
					feedback_txt += "Het verspreiden van persoonlijke informatie op publieke pagina's zoals social media is niet toegestaan.";
			}
		}
	}
	
	
	//var nearestSignPost = instance_nearest(x, y, obj_Signpost);
	var nearestSignPost = instance_nearest(obj_Player.x, obj_Player.y, obj_Signpost);
	instance_destroy(nearestSignPost);
	//with (obj_camera) follow = obj_Player;
	}
	
}