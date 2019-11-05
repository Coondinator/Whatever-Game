/// @description Insert description here
// You can write your code in this editor
draw_self();
//if !instance_exists(OHero) exit;

draw_set_color(c_red);
draw_rectangle(x+4+246*0.8,y+8,x+10+246*0.8,y+23,false);
draw_set_color(c_blue);
draw_rectangle(x+4,y+8,x+4+246*score/global.max_score,y+23,false);
draw_set_color(c_white);