//Get Player Input
keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("W"),vk_up);
keyboard_set_map(ord("D"),vk_right);

key_left = keyboard_check(vk_left)
key_right = keyboard_check(vk_right);
key_down = keyboard_check_pressed(vk_down);
key_jump = keyboard_check_pressed(vk_space);

audio_listener_position(x,y,0)

if (key_left) || (key_right) || (key_jump) {
	controller = 0;
}

if (room == bedroom) {
	walkspd = 1.3
}else{
	walkspd = walkspeed
}





//Calculate Movement
var move = key_right - key_left;

hsp = move * walkspd;


vsp = vsp + grv;

if global.player_freeze == true {
	vsp = 0;
	hsp = 0;
}



key_left = keyboard_check(vk_left);


if (place_meeting(x,y+1,o_solid) && o_solid.colision==true) && (key_jump)  && global.player_freeze == false
{
	vsp = -4;
}



//Horizontal Collision
var hcol
hcol = place_meeting(x+hsp,y,o_solid)
if hcol
{
	if (o_solid.type==1)
	{
		while (!place_meeting(x+sign(hsp),y,o_solid))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
}

x = x + hsp;

//Vertical Collision
var vcol
vcol = place_meeting(x,y+vsp,o_solid)
if vcol
{
	if (vcol.type==1)
	{
		while (!place_meeting(x,y+sign(vsp),o_solid) )
		{
			y = y + sign(vsp);
			//sprite_index = s_player_walk;
		}
		vsp = 0;
		sprite_index = s_player_walk;
	}
	
	if ((vcol.type==2))
	{
		if (!place_meeting(x,y,o_solid) )
		{
			while (!place_meeting(x,y+sign(vsp),o_solid) )
				{
					y = y + sign(vsp);
					//sprite_index = s_player_walk;
				}
		}
		vsp = 0;
		sprite_index = s_player_walk;
	}
	
	
	
}else{
	sprite_index = s_player;
}
y = y + vsp;


// ANIMATION!

if global.player_freeze == false {
	if(key_left)
		image_xscale = 1;
	
	if(key_right)
		image_xscale = -1;
}
	
if (!place_meeting(x,y+1,o_solid) && global.player_freeze == false) 
{
	sprite_index = s_player_jump;
	image_speed=0;
	if (sign(vsp) > 0)
	{
		image_index = 0;
	}else{
		image_index = 1;
	}
}else{
	if(hsp == 0)
	{
	sprite_index = s_player;
	}else
	{
	image_speed=1;
	sprite_index = s_player_walk;
	}
}

if(vsp < 0){
	if audio_is_playing(footsteps){
		audio_stop_sound(footsteps);
	}
}
else if (hsp != 0) {
	if !audio_is_playing(footsteps){
		audio_play_sound(footsteps, 3, true)
	}
}else{
	if audio_is_playing(footsteps){
		audio_stop_sound(footsteps);
	}
}