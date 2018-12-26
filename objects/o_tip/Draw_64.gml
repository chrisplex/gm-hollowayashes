/// @description Insert description here
// You can write your code in this editor
view_midw = surface_get_width(application_surface)/2;
view_midh  = 238;


if place_meeting(x,y,o_player){
	draw_set_colour(c_white);
	draw_set_font(tip);
	draw_set_halign(fa_center);
	draw_text(view_midw,view_midh , label);
}

