/// @description Insert description here
// You can write your code in this editor
tree_y=random(200)+300;
inst = instance_create_layer(1990,tree_y+280,"tree1",OTree1);
inst.hspeed=-(tree_y/180);
alarm_set(0,random(5*room_speed));
inst.image_xscale= tree_y/300;
inst.image_yscale= tree_y/300;