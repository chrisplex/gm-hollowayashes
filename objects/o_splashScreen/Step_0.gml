/// @description Insert description here
// You can write your code in this editor
if(sprite_index ==  s_splash && !audio_is_playing(scarySound)){
	audio_play_sound(scarySound2,1,false)
	sprite_index =  s_title;
}

if(sprite_index ==  s_title && !audio_is_playing(scarySound2) ){
	room_goto_next()
}