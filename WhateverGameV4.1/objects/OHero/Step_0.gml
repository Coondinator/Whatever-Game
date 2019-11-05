
/*if( place_meeting(x, y+1, OBlock) ){
canJump = 1;
}*/
//var key_left = keyboard_check(vk_left);
//var key_right = keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_space);
var canJump = 0;
if( place_meeting(x, y+1, OAllBlocks) ){
canJump = 1;
}
var left_n1_right_p1; // -1 for left. 1 for right. 0 for no moves on x-axis.
left_n1_right_p1 = 1;//key_right - key_left;



var xs = left_n1_right_p1 * WalkSpeed;
if( place_meeting(x + xs, y, OAllBlocks) ){
while( !place_meeting(x + left_n1_right_p1, y, OAllBlocks)){
x = x + left_n1_right_p1;
}
xs = 0; // already moved on x
}
x = x + xs;

var Press_left_right=global.RightPressed-global.LeftPressed;
var Txs=Press_left_right*WalkSpeed;

if( place_meeting(x + Txs, y, OBlock) ){
while( !place_meeting(x + Press_left_right, y, OBlock)){
x = x + Press_left_right;
}
Txs = 0; // already moved on x
}
x = x + Txs;

if( canJump && key_jump ){
ys = JumpSpeed;
}

if( canJump && global.upPressed==1 ){
ys = JumpSpeed;
}
if( canJump && global.APressed==1 ){
ys = JumpSpeed;
}

// Gravity
ys = ys + gr;
if( place_meeting(x, y + ys, OAllBlocks) ){
while( !place_meeting(x, y + sign(ys), OAllBlocks)){
y = y + sign(ys);
}
ys = 0; // already moved on y
}
y = y + ys;

timer-=1;
/*if(keyboard_check_pressed(ord("a"))&& timer<=0)
{
    with(instance_create_layer(x,y,"Instances",OBullet))
	{
	speed=10;
	}
	timer=20;
	audio_play_sound(sound1,0,0);
}*/

if(Fragile==false&& Ftimer>=0){
	
Ftimer-=1;
}

if(Fragile==false&&Ftimer<=0)
{
Fragile=true;
Ftimer=130;
}

if (y>=1000){
    audio_pause_all();
    room_goto(room_GG);
}

if (health<=0){
	audio_pause_all();
    room_goto(room_GG);
}

if(keyboard_check(ord("A"))&& timer<=0)
{
   instance_create_layer(x,y,"Instances",OHero_Attack);

    instance_destroy();

}