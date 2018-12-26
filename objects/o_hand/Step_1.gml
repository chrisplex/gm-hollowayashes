x = o_player.x;
y = o_player.y;

image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay - 1;

if (mouse_check_button(mb_left)) && (firingdelay < 0)
	{
		image_alpha = 1;
		firingdelay = 9;
		with (instance_create_layer(x,y,"fires",o_fire))
		{
			speed = 25;
			direction = other.image_angle + random_range(-12,12);
			image_angle = direction;
		}
	}else if(!mouse_check_button(mb_left))
	{
	image_alpha = 0;
	}