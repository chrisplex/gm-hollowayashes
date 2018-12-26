//scr_text("Text",speed,x,y)



txt = instance_create_depth(argument2,argument3,-100,o_text);

with (txt)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	padding = 16;
	maxlength = view_wview[0];
	text = argument0;
	spd = argument1;
	font = tip;
	
	text_length = string_length(text);
	font_size = font_get_size(font);
	draw_set_font(font);
	
	text_width = string_width_ext(text,font_size+(font_size), maxlength);
	text_height = string_height_ext(text,font_size+(font_size/2), maxlength);
	
	boxheight = text_height  + (padding*2);
	boxwidth = text_width + (padding*3);

}