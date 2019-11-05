/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y-1,OHero)&&CanPlay==0)
{
var inst=instance_create_layer(x,y-50,"Instances",OMusicNote);
inst.hspeed=3;
inst.direction=100;
audio_play_sound(sound_d4,0,0);
CanPlay=1;
score+=100;
}