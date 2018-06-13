/// @description Update Camera


//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;

	if((follow).object_index == obj_Player_Dead)
	{
		x = xTo;
		y = yTo;
	}
}

//Update Object position.
x += (xTo - x) / 25;
y += (yTo - y) / 25;


x = clamp(x,view_w_half,room_width-view_w_half);

//Update camera view
camera_set_view_pos(cam,x - view_w_half,y);



