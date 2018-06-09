/// @description Press Enter to read

if (point_in_circle(obj_Player.x,obj_Player.y,x,y,64)) && (instance_exists(obj_Player)) && (!instance_exists(obj_Text))
{
	with (instance_create_layer(x,y-64,layer,obj_Text))
	{
		text = other.text;
		length = string_length(text);
	}
	/*
	with(obj_camera)
	{
		follow = other.id;
	}
	*/
}