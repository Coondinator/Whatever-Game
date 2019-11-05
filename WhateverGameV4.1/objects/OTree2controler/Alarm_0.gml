/// @description Insert description here
// You can write your code in this editor
tree_y=random(400)+250;
inst = instance_create_layer(1990,tree_y+300,"tree2",OTree2);
inst.hspeed=-(tree_y/130);
alarm_set(0,random(5*room_speed));
inst.image_xscale= tree_y/1200;
inst.image_yscale= tree_y/1200;