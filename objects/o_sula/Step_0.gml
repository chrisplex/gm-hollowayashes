/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,o_player) && keyboard_check_released(ord("W")) && spke == false
{
	if i > array_length_1d(dialogue) - 1
		{
			Super_Text_Clear();
			//spke = true;
			//global.freeze = false;
			i = 0
		}
		else
		{
			spke = true;
			dialogue_string = dialogue[i];
			i+= 1;
		}
}