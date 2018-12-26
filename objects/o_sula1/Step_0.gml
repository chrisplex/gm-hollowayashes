/// @description Insert description here
// You can write your code in this editor


if x > o_player.x {
	image_xscale = -1;
}else{
	image_xscale = 1;
}

if place_meeting(x,y,o_player){
	contact = true;
}

if contact == true && keyboard_check_released(ord("W")) && spke == false
{

	if i > array_length_1d(dialogue) - 1
		{
			Super_Text_Clear();
			//spke = true;
			//global.freeze = false;
			i = 0
			show_action = true;
		}
		else
		{

			spke = true;
			dialogue_string = dialogue[i];
			i+= 1;
		}
}