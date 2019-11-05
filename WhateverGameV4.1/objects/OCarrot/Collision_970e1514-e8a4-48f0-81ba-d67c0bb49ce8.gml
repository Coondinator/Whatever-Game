/// @description Insert description here
// You can write your code in this editor
if(score>=0.8*global.max_score){
room_goto(room_win);
}
else{
room_goto(room_GG);
}