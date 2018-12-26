/// @description Insert description here
// You can write your code in this editor

if switcherd == true {
	switcher = 1
}

if place_meeting(x,y,o_player) && keyboard_check_pressed(vk_up)
	{
		spke = true;
		if switcher == 1 {
			audio_play_sound(doorSoundfx,2,false);
			gotoNextRoom = true;
		}
	}
	
if gotoNextRoom {
	progress ++
}
	
	
if(!audio_is_playing(doorSoundfx) and gotoNextRoom == true){
		
		room_goto(targetRoom);
		if player_targetx != 0 {
			o_player.x = player_targetx;
			o_player.y = player_targety;
		}
		gotoNextRoom = false;
		
}

