/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,o_player) && keyboard_check_pressed(vk_up)
	{
		
		audio_play_sound(walkingSteps,2,false);
		gotoLoc = true;
	}
	
if gotoLoc {
	progress ++
}

	
if(!audio_is_playing(walkingSteps) and gotoLoc == true){
		alarm[0] = room_speed * 60;
		if xgoto == 0 {
			o_player.x = o_player.x - xtarget;
			o_player.y = o_player.y - ytarget;
		}else{
			o_player.x = xgoto;
			o_player.y = ygoto;
		}
		gotoLoc = false;
		progress = 0;
		global.player_freeze = false;
}
		



