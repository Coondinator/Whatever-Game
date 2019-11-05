/// @description Insert description here
// You can write your code in this editor
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