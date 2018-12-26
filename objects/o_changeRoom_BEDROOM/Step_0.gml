/// @description Insert description here
// You can write your code in this editor
//if 1==1 {
if global.keytaken_basement == true and global.setfire_basement == false {
	switcher = 1
}

if done_talking && keyboard_check_released(vk_anykey){
	spke = false;
}

if place_meeting(x,y,o_player) && keyboard_check_released(vk_up)
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
		o_player.x = player_targetx;
		o_player.y = player_targety;
		gotoNextRoom = false;
		global.player_freeze = false;
}

