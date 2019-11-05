/// @description Insert description here
// You can write your code in this editor
draw_self();
//if !instance_exists(OHero) exit;
draw_set_color(c_red);
draw_rectangle(x+8,y+8,x+246*health/global.max_health,y+23,false);
draw_set_color(c_white);