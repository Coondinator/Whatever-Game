/// @description Insert description here
// You can write your code in this editor
cloud_y=random(500)+100;
inst = instance_create_layer(1980,cloud_y-300,"cloud",OCloud1);
inst.hspeed=-(cloud_y/150);
alarm_set(0,random(5*room_speed));
inst.image_xscale= cloud_y/1000;
inst.image_yscale= cloud_y/1000;