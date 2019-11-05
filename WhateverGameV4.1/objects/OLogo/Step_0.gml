/// @description Insert description here
// You can write your code in this editor
if(Change==0){
image_alpha+=0.015;
if(image_alpha>=1){
Change=1;
};
}

if(Change==1){
	
image_alpha-=0.015;
if(image_alpha<=0){
instance_destroy();
room_goto(room_title);
};
}