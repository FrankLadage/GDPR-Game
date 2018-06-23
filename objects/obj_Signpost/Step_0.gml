/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_Player)){
var nearestSignPost = instance_nearest(obj_Player.x, obj_Player.y, obj_Signpost);
if(place_meeting(nearestSignPost.x, nearestSignPost.y, obj_Player)) {
	if (point_in_circle(obj_Player.x,obj_Player.y,x,y,64)) && (instance_exists(obj_Player)) && (!instance_exists(obj_Text))
	{
		
		with (instance_create_layer(x, y-64, layer, obj_Text))
		{
			var num = irandom_range(1, 7);
			show_debug_message(num);
			switch(num)
			{
				case 1:
					text = "Een Amerikaans bedrijf vraagt om uw geloof omdat u naar een gelovig land gaat, mag dit?\n\nDruk F1 voor ja of F2 voor nee";
					whichkeyanswer = vk_f2;
					//obj_Signpost.casenumber++;
					//this.anwsered = true;
					break;
				case 2:
				   	text = "Je gaat op zoek naar een baan en het bedrijf vraagt om medische gegevens, mag dit?\n\nDruk F1 voor ja of F2 voor nee";
					whichkeyanswer = vk_f1;
					//obj_Signpost.casenumber++;
					break;
				case 3:
				   	text = "Facebook geeft u aanbiedingen op basis van een profiel wat ze van u hebben opgebouwd, mag dit?\n\nDruk F1 voor ja of F2 voor nee";
					whichkeyanswer = vk_f2;
					//obj_Signpost.casenumber++;
					break;
				case 4:
				   	text = "U heeft uw jaren geleden ingeschreven voor een nieuwsbrief en het bedrijf blijft u welke week een bericht sturen, mag dit?\n\nDruk F1 voor ja of F2 voor nee";
					whichkeyanswer = vk_f1;
					//obj_Signpost.casenumber++;
					break;
				case 5:
				   	text = "U verwijderd uw facebook profiel maar er staat “Uw account wordt pas echt verwijderd als uw gedurende 3 weken niet meer ingelogd”, is dit toegestaan?\n\nDruk F1 voor ja of F2 voor nee";
					whichkeyanswer = vk_f2;
					//obj_Signpost.casenumber++;
					break;
				case 6:
				   	text = "De ouders van Tanja zijn bezorgd en mailen naar school of ze haar cijfers en tentamens per mail mogen ontvangen is dit toegestaan?\n\nDruk F1 voor ja of F2 voor nee";
					whichkeyanswer = vk_f2;
					//obj_Signpost.casenumber++;
					break;
				case 7:
				   	text = "Tanja maakt een foto van haar vriendengroep en zet het op Facebook en tagged iedereen die herkenbaar in beeld staat, mag dit?\n\nDruk F1 voor ja of F2 voor nee";
					whichkeyanswer = vk_f2;
					//obj_Signpost.casenumber++;
					break;
		
			}
		
			
			length = string_length(text);
		}
	}
}
}