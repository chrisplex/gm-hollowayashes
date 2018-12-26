audio_stop_all()
var lay_id = layer_get_id("FIRE");
layer_set_visible(lay_id, false);
audio_play_sound(indoor_wind,4,true);
if global.house_intro_music == false {
	audio_play_sound(inside_my_house,5,false);
	global.house_intro_music = true;
}
