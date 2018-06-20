/// @desc Move to next room

with (obj_Player)
{
	if (hascontrol)
	{
		//hascontrol = false;
		//niet vergeten om vij de room end trigger, in de creation code aan te geven waar de speler naartoe moet! Anders crashed het spel.
		audio_play_sound(sn_Level_Clear,20,false);
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}

