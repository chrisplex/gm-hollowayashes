/// @description Insert description here
// You can write your code in this editor

if switcherd == true {
	switcher = 1
}

if place_meeting(x,y,o_player)
	{
		spke = true;
		if switcher == 1 {
			gotoNextRoom = true;
		}
	}
	
if gotoNextRoom {
	progress ++
}
	
	
if(gotoNextRoom == true){
		
		room_goto(targetRoom);
		
		if player_targetx != 0 {
			o_player.x = player_targetx;
			o_player.y = player_targety;
		}
		gotoNextRoom = false;
		
}

