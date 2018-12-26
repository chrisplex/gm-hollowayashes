/// @description Insert description here
// You can write your code in this editor
if global.taken_alcohol != true{
	shower = 1
}else{
	shower = 0
}

// look at the player
if x > o_player.x {
	image_xscale = -1;
}else{
	image_xscale = 1;
}


if done_talking && keyboard_check_released(vk_anykey){
	spke = false;
}

if place_meeting(x,y,o_player) && keyboard_check_released(vk_up) && spke == false
{
	if i > array_length_1d(text) - 1 
		{
			Super_Text_Clear();
			//spke = true;

			i = 0
			done_talking = 0;
		}
		else
		{
			spke = true;
			dialogue_string = text[i];

			i+= 1;
		}
}

// is the actor speaking
if spke == true{
	global.player_freeze = true;
}else{
	global.player_freeze = false;
}
