/// @description Insert description here
// You can write your code in this editor
//draw_sprite(sfenshu,0,64,128);
draw_self();
draw_set_font(fenshu);
draw_set_color(make_color_rgb(255,114,187));
draw_set_valign(fa_middle);
draw_text(x+29,y,"Score:"+string(score));